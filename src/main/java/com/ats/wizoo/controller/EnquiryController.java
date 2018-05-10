package com.ats.wizoo.controller;

import java.util.ArrayList;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.ats.wizoo.adminPanel.common.Constants;
import com.ats.wizoo.model.BuyNow;
import com.ats.wizoo.model.Enquiry;
import com.ats.wizoo.model.ErrorMessage;
import com.ats.wizoo.model.GetTouch;

@Controller
@Scope("session")
public class EnquiryController {

	RestTemplate rest = new RestTemplate();

	@RequestMapping(value = "/allEnquiryList", method = RequestMethod.GET)
	public ModelAndView allEnquiryList(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("enquiry/enquiryList");
		try {

			Enquiry[] Enquiry = rest.getForObject(Constants.url + "/getDistributerEnquiry", Enquiry[].class);
			List<Enquiry> distributerList = new ArrayList<Enquiry>(Arrays.asList(Enquiry));

			model.addObject("distributerList", distributerList);

			Enquiry[] enquiry = rest.getForObject(Constants.url + "/getContactEnquiry", Enquiry[].class);
			List<Enquiry> contactList = new ArrayList<Enquiry>(Arrays.asList(enquiry));

			model.addObject("contactList", contactList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/updateEnquiryList/{enqId}", method = RequestMethod.GET)
	public String deleteEmpByEmpId(@PathVariable int enqId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("enquiry/enquiryList");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("enqId", enqId);

			ErrorMessage errorMessage = rest.postForObject(Constants.url + "/updateEnquiry", map, ErrorMessage.class);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/allEnquiryList";
	}

	// -----------------------buy now List-------------------------

	@RequestMapping(value = "/allBuyNowOrderList", method = RequestMethod.GET)
	public ModelAndView allBuyNowOrderList(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("order/buyNowOrderList");
		try {

			BuyNow[] BuyNow = rest.getForObject(Constants.url + "/getOrderListInBuyNow", BuyNow[].class);
			List<BuyNow> buyNowOrderList = new ArrayList<BuyNow>(Arrays.asList(BuyNow));

			model.addObject("buyNowOrderList", buyNowOrderList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/updateOrderStatusList/{orderId}", method = RequestMethod.GET)
	public String updateOrderStatusList(@PathVariable int orderId, HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView("order/buyNowOrderList");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("orderId", orderId);

			ErrorMessage errorMessage = rest.postForObject(Constants.url + "/updateBuyNow", map, ErrorMessage.class);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/allBuyNowOrderList";
	}

	// ----------------------get touch List-------------------------

	@RequestMapping(value = "/allGetDataList", method = RequestMethod.GET)
	public ModelAndView allGetDataList(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("getTouch/getTouchDataList");
		try {

			GetTouch[] GetTouch = rest.getForObject(Constants.url + "/getAllData", GetTouch[].class);
			List<GetTouch> getTouchList = new ArrayList<GetTouch>(Arrays.asList(GetTouch));

			model.addObject("getTouchList", getTouchList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/updateGetDataList/{trId}", method = RequestMethod.GET)
	public String updateGetDataList(@PathVariable int trId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("getTouch/getTouchDataList");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("trId", trId);

			ErrorMessage errorMessage = rest.postForObject(Constants.url + "/updateGetTouch", map, ErrorMessage.class);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/allGetDataList";
	}

}
