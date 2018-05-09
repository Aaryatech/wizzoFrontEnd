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
import com.ats.wizoo.model.DeviceByUserId;
import com.ats.wizoo.model.Employee;
import com.ats.wizoo.model.ErrorMessage;

import com.ats.wizoo.model.User;

@Controller
@Scope("session")
public class MasterController {

	RestTemplate rest = new RestTemplate();

	@RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
	public ModelAndView addEmployee(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/addEmployee");
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/insertEmployee", method = RequestMethod.POST)
	public ModelAndView insertEmployee(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView modelAndView = new ModelAndView("home");

		try {

			/*
			 * HttpSession session = request.getSession(); LoginResponse login =
			 * (LoginResponse) session.getAttribute("UserDetail");
			 * System.out.println("user Id " + login.getEmployee().getEmpId());
			 */

			String empName = request.getParameter("empName");
			String empMob = request.getParameter("empMob");
			String password = request.getParameter("password");
			int empType = Integer.parseInt(request.getParameter("empType"));

			Employee employee = new Employee();

			employee.setEmpName(empName);

			employee.setEmpMobile(empMob);
			employee.setEmpType(empType);
			employee.setEmpPassword(password);
			employee.setIsUsed(1);

			Employee res = rest.postForObject(Constants.url + "/saveEmployee", employee, Employee.class);

			System.out.println("res " + res);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return modelAndView;
	}

	@RequestMapping(value = "/allEmpLlist", method = RequestMethod.GET)
	public ModelAndView allEmpLlist(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/allEmpList");
		try {

			Employee[] Employee = rest.getForObject(Constants.url + "/getAllEmpList", Employee[].class);
			List<Employee> empList = new ArrayList<Employee>(Arrays.asList(Employee));

			model.addObject("empList", empList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/allUserList", method = RequestMethod.GET)
	public ModelAndView allUserList(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/allUserList");
		try {

			User[] User = rest.getForObject(Constants.url + "/getAllUserListByIsUsed", User[].class);
			List<User> userList = new ArrayList<User>(Arrays.asList(User));

			model.addObject("userList", userList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	
	@RequestMapping(value = "/allUserListNeedAssistance", method = RequestMethod.GET)
	public ModelAndView allUserListNeedAssistance(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/userListNeedAssistance");
		try {

			User[] User = rest.getForObject(Constants.url + "/userListNeedAssistance", User[].class);
			List<User> userList = new ArrayList<User>(Arrays.asList(User));

			model.addObject("userList", userList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	
	
	@RequestMapping(value = "/unactiveUsers", method = RequestMethod.GET)
	public ModelAndView unactiveUsers(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/unactiveUsers");
		try {

			User[] User = rest.getForObject(Constants.url + "/unActiveUser", User[].class);
			List<User> userList = new ArrayList<User>(Arrays.asList(User));

			model.addObject("userList", userList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/deviceListByUserId/{userId}", method = RequestMethod.GET)
	public ModelAndView deviceListByUserId(@PathVariable int userId, HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/deviceListByUserId");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("userId", userId);

			DeviceByUserId[] DeviceByUserId = rest.postForObject(Constants.url + "/getAllDevicesByUserId", map,
					DeviceByUserId[].class);
			List<DeviceByUserId> deviceList = new ArrayList<DeviceByUserId>(Arrays.asList(DeviceByUserId));

			model.addObject("deviceList", deviceList);
			System.out.println("DeviceList " + deviceList.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/deleteEmpByEmpId/{empId}", method = RequestMethod.GET)
	public String deleteEmpByEmpId(@PathVariable int empId, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/allEmpList");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("empId", empId);

			ErrorMessage errorMessage = rest.postForObject(Constants.url + "/deleteEmployee", map, ErrorMessage.class);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/allEmpLlist";
	}

	@RequestMapping(value = "/deleteDeviceByDevId/{devId}", method = RequestMethod.GET)
	public String deleteDeviceByDevId(@PathVariable int devId, HttpServletRequest request,
			HttpServletResponse response) {

		System.out.println("Inside delete device");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			map.add("devId", devId);

			ErrorMessage errorMessage = rest.postForObject(Constants.url + "/deleteDevice", map, ErrorMessage.class);
			
			System.out.println("delete response "+errorMessage.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/allUserList";
	}
	
	
	@RequestMapping(value = "/MQTTServerStatus", method = RequestMethod.GET)
	public ModelAndView MQTTServerStatus(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("masters/MQTTServerStatus");
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}


}
