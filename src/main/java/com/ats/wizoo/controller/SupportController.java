package com.ats.wizoo.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.ats.wizoo.adminPanel.common.Constants; 
import com.ats.wizoo.model.Employee;
import com.ats.wizoo.model.GetSupportList;
import com.ats.wizoo.model.Support;
import com.ats.wizoo.model.User; 

@Controller
@Scope("session")
public class SupportController {
	
	
	RestTemplate rest = new RestTemplate();
	Support getSupportById = new Support();
	@RequestMapping(value = "/issueList", method = RequestMethod.GET)
	public ModelAndView issueList(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("support/issueList");
		try {
			
			List<GetSupportList> resolvedListFromSupprt = rest.getForObject(Constants.url + "/resolvedListFromSupprt", 
					List.class);
			
			List<GetSupportList> pendingListFromSupprt = rest.getForObject(Constants.url + "/pendingListFromSupprt", 
					List.class);
			
			System.out.println("resolvedListFromSupprt " + resolvedListFromSupprt);
			System.out.println("pendingListFromSupprt " + pendingListFromSupprt);
			model.addObject("resolvedListFromSupprt", resolvedListFromSupprt);
			model.addObject("pendingListFromSupprt", pendingListFromSupprt);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	@RequestMapping(value = "/resolvedIssue/{tokenId}", method = RequestMethod.GET)
	public ModelAndView resolvedIssue(@PathVariable int tokenId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("support/generateToken");
		
		try {
			
			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("tokenId", tokenId); 
			getSupportById = rest.postForObject(Constants.url + "/getSupportById", map,
					Support.class);
			model.addObject("getSupportById", getSupportById);
			
			 map = new LinkedMultiValueMap<String, Object>();
			map.add("userId", getSupportById.getUserId()); 
			User getUserByUserId = rest.postForObject(Constants.url + "/getUserByUserId", map,
					User.class);
			model.addObject("getUserByUserId", getUserByUserId);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	@RequestMapping(value = "/addNewToken", method = RequestMethod.GET)
	public ModelAndView addNewToken(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("support/addNewToken");
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	@RequestMapping(value = "/getUserByMobileNo", method = RequestMethod.GET)
	@ResponseBody
	public User getUserByMobileNo(HttpServletRequest request,
			HttpServletResponse response) {

		User getUserByMobileNo = new User();
		try {
			
			String mobileNo = request.getParameter("mob");
			
			System.out.println("mobileNo " + mobileNo);

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("userMobile", mobileNo); 
			 getUserByMobileNo = rest.postForObject(Constants.url + "/getUserByMobileNo", map,
					User.class);
			  

		} catch (Exception e) {
			e.printStackTrace();
		}

		return getUserByMobileNo;
	}
	
	@RequestMapping(value = "/generateToken/{userId}", method = RequestMethod.GET)
	public ModelAndView generateToken(@PathVariable int userId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("support/generateToken");
		
		try {
			
			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("userId", userId); 
			User getUserByUserId = rest.postForObject(Constants.url + "/getUserByUserId", map,
					User.class);
			model.addObject("getUserByUserId", getUserByUserId);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	@RequestMapping(value = "/submitGenerateToken", method = RequestMethod.POST)
	public String submitGenerateToken(HttpServletRequest request, HttpServletResponse response) {

		 
		
		try {
			 
			SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			Date date = new Date();
			HttpSession session = request.getSession(); 
			Employee login =  (Employee) session.getAttribute("employee"); 
			 
			String tokenId = request.getParameter("tokenId");
			int userId = Integer.parseInt(request.getParameter("userId"));
			String issue = request.getParameter("issue");
			int status = Integer.parseInt(request.getParameter("status"));
			
			System.out.println(time.format(time.parseObject(getSupportById.getIssueRaisedDatetime())));
			
			Support support = new Support();
			if(tokenId=="" || tokenId==null)
			{
				support.setTokenId(0);
				support.setIssueRaisedDatetime(time.format(date));
			}
			else
			{
				support.setTokenId(Integer.parseInt(tokenId));
				support.setIssueRaisedDatetime(time.format(time.parseObject(getSupportById.getIssueRaisedDatetime())));
			}
			support.setUserId(userId);
			support.setIssueDesc(issue);
			support.setStatus(status);
			
			if(status==2)
			{
				support.setSolutionProvided(request.getParameter("solution"));
				support.setSolutionDatetime(time.format(date));
			}
			 
			System.out.println(" login.getEmpId() " + login.getEmpId());
			support.setAssignedTo(login.getEmpId());
			
			Support res = rest.postForObject(Constants.url + "/saveSupport", support,
					Support.class);
			System.out.println("res " + res);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/issueList";
	}
	
	
	@RequestMapping(value = "/detailIssue/{tokenId}", method = RequestMethod.GET)
	public ModelAndView detailIssue(@PathVariable int tokenId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("support/detailIssue");
		
		try {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
			SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");
			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("tokenId", tokenId); 
			Support getSupportById = rest.postForObject(Constants.url + "/getSupportById", map,
					Support.class);
			Date issueDate = sf.parse(getSupportById.getIssueRaisedDatetime());
			Date resolveDate = sf.parse(getSupportById.getSolutionDatetime());
			
			getSupportById.setIssueRaisedDatetime(date.format(issueDate));
			getSupportById.setSolutionDatetime(date.format(resolveDate));
			model.addObject("getSupportById", getSupportById);
			
			 map = new LinkedMultiValueMap<String, Object>();
			map.add("userId", getSupportById.getUserId()); 
			User getUserByUserId = rest.postForObject(Constants.url + "/getUserByUserId", map,
					User.class);
			model.addObject("getUserByUserId", getUserByUserId);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	 

}
