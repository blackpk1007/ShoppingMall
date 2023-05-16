package com.shopping.mall;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopping.mall.Dto.UserDto;
import com.shopping.mall.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private UserService userS;
	
	@RequestMapping("/loginform")
	public String loginForm() {
		
		logger.info("[Login Controller] : login Form");
		
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public Map<String, Boolean> ajaxlogin(HttpSession session, @RequestBody UserDto dto) {
		
		logger.info("[Login Controller] : login");
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		UserDto result = userS.userlogin(dto);
		boolean check = false;
		
		if(result != null) {
			session.setAttribute("login", result);
			check = true;
		}
		
		map.put("check", check);
		
		return map; 
	}
	
	@RequestMapping("/logout")
	   public String logout(HttpSession session) {
	      
	      session.invalidate();
	      
	      return "redirect:/main";
	   }
	
	
	@RequestMapping("/useridfindform")
	public String idfindForm() {
		
		logger.info("[Login Controller] : idfindform");
		
		return "loginidfind";
	}
	
	@RequestMapping(value="/useridfind", method=RequestMethod.POST)
	public String idfind(Model model, UserDto dto) {
		
		logger.info("[Login Controller] : idfind");
		
		System.out.println("controller name : "+dto.getUserName());
		System.out.println("controller email : "+dto.getUserEmail());
		UserDto res = userS.useridfind(dto);
		System.out.println("controller : "+res);
		
		if(res == null) {
			model.addAttribute("check", 1);
		}else {
			model.addAttribute("check", 0);
			model.addAttribute("userID", res.getUserID());
		}
		
		return "loginidfind";
	}
	
	@RequestMapping("/userpwfindform")
	public String pwForm() {
		
		logger.info("[Login Controller] : pwfindform");
		
		return "loginpwfind";
	}
	
	@RequestMapping(value="userpwfind", method=RequestMethod.POST)
	public String pwfind(UserDto dto, Model model) {
		
		logger.info("[Login Controller] : pwfind");
		
		UserDto res = userS.userpwfind(dto);
		
		if(res== null) {
			model.addAttribute("check",1);
		}else {
			model.addAttribute("check", 0);
			model.addAttribute("userPW", res.getUserPW());
		}
		
		return "loginpwfind";
	}
	
	@RequestMapping("/registerform")
	public String registerForm() {
		
		logger.info("[Login Controller] : registerform");
		
		return "loginregister";
	}
	
	@ResponseBody
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public Map<String, Boolean> ajaxregister(HttpSession session, @RequestBody UserDto dto) {
		
		logger.info("[Login Controller] : register");
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		int result = userS.userInsert(dto);
		boolean check = false;
		
		if(0 < result) {
			check = true;
		}
		
		map.put("check", check);
		
		return map; 
	}
	
	@RequestMapping("/adminform")
	public String adminForm() {
		
		logger.info("[Login Controller] : adminform");
		
		return "admin";
	}
}













