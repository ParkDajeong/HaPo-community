package com.dajung.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
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
}
