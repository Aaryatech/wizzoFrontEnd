package com.ats.wizoo;

import java.io.IOException;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.ats.wizoo.adminPanel.common.Constants;
import com.ats.wizoo.model.DashboardCount;
import com.ats.wizoo.model.LoginResponse;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	RestTemplate rest = new RestTemplate();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		ModelAndView mav = new ModelAndView("login");

		try {

			DashboardCount count = rest.getForObject(Constants.url + "/getAllCount", DashboardCount.class);

			mav.addObject("count", count);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
	}

	@RequestMapping("/loginProcess")
	public ModelAndView helloWorld(HttpServletRequest request, HttpServletResponse res) throws IOException {

		String empMobile = request.getParameter("empMobile");
		String empPassword = request.getParameter("empPassword");

		ModelAndView mav = new ModelAndView("login");

		res.setContentType("text/html");
		try {
			System.out.println("Login Process " + empMobile);
			System.out.println("empPassword " + empPassword);

			if (empMobile.equalsIgnoreCase("") || empPassword.equalsIgnoreCase("") || empMobile == null
					|| empPassword == null) {

				mav = new ModelAndView("login");
			} else {

				RestTemplate rest = new RestTemplate();
				MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
				map.add("empMobile", empMobile);
				map.add("empPassword", empPassword);
				LoginResponse loginResponse = rest.postForObject(Constants.url + "/empLogin", map, LoginResponse.class);
				System.out.println("loginResponse" + loginResponse);

				if (loginResponse.isError() == false) {

					HttpSession session = request.getSession();
					session.setAttribute("employee", loginResponse.getEmployee());
					mav = new ModelAndView("home");

				}
			}
		} catch (Exception e) {
			System.out.println("HomeController Login API Excep:  " + e.getMessage());
		}

		return mav;

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		System.out.println("User Logout");

		session.invalidate();
		return "redirect:/";
	}

}
