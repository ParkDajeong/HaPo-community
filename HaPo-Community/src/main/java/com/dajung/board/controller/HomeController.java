package com.dajung.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "index";
	}
	
	@RequestMapping(value = "/board/edit", method = RequestMethod.GET)
	public String boardEdit(Model model) {
		
		return "boardEdit";
	}
	
	@RequestMapping(value = "/board/view", method = RequestMethod.GET)
	public String boardView(Model model) {
		
		return "boardView";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		
		return "login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		
		return "join";
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
