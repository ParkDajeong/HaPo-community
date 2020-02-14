package com.dajung.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dajung.board.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value = "/login/user", method = RequestMethod.POST)
	public int userlogin(@RequestParam Map<String, Object> paramMap, HttpSession session) {
		
		int result = userService.loginUser(paramMap, session);
		
		if(result > 0) {
			return 1;
		} else {
			return -1;
		}
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		
		return "join";
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/join/check/id", method = RequestMethod.POST)
	public int checkUserId (@RequestParam Map<String, Object> paramMap) {
		
		int result = userService.checkUserId(paramMap);
		
		if(result > 0) {
			return -1;
		} else {
			return 1;
		}
	}
	
	//닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value = "/join/check/nickname", method = RequestMethod.POST)
	public Object checkUserNickname (@RequestParam Map<String, Object> paramMap) {
		
		int result = userService.checkUserNickname(paramMap);
		
		if(result > 0) {
			return -1;
		} else {
			return 1;
		}
	}
	
	//이메일 중복 체크
	@ResponseBody
	@RequestMapping(value = "/join/check/email", method = RequestMethod.POST)
	public Object checkUserEmail (@RequestParam Map<String, Object> paramMap) {
		
		int result = userService.checkUserEmail(paramMap);
		
		if(result > 0) {
			return -1;
		} else {
			return 1;
		}
	}
	
	//회원가입
	@ResponseBody
	@RequestMapping(value = "/join/user", method = RequestMethod.POST)
	public Object userJoin(@RequestParam Map<String, Object> paramMap, Model model) {

		Map<String, Object> retVal = new HashMap<String, Object>();
		int result = userService.setUser(paramMap);
		
		if(result > 0) {
			retVal.put("result", "success");
		} else {
			retVal.put("result", "fail");
		}
		
		return retVal;
	}
	
	@RequestMapping(value = "/user/find", method = RequestMethod.GET)
	public String findAccount(Model model) {
		
		return "findAccount";
	}
	
	@RequestMapping(value = "/user/change", method = RequestMethod.GET)
	public String changePassword(Model model) {
		
		return "changePassword";
	}
}
