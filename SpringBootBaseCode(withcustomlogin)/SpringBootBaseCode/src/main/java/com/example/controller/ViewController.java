package com.example.controller;

import java.sql.Date;

import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.service.ShiftService;
import com.example.service.impl.UserService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class ViewController {

	private ShiftService shiftService;
	private UserService userService;
	
	@GetMapping(value = {"/page01"})
	public String page01() {
		return "page01";
	}

	@GetMapping("/page02")
	public String page02() {
		return "page02";
	}

	@GetMapping("/page03")
	public String page03(Model model) {
		Date date = new Date(System.currentTimeMillis());
		model.addAttribute("now", date);
		return "page03";
	}
	
	@GetMapping("/page04")
	public String page04(Model model) {
		model.addAttribute("shift1", shiftService.getSampleById(1));
		model.addAttribute("shift2", shiftService.getSampleById(2));
		model.addAttribute("shift3", shiftService.getSampleById(3));
		return "page04";
	}
	
	@GetMapping(value = "/login")
    public String login() {
        return "login";
    }
	
	@PostMapping(value = "perform_login")
    public String process_login() {
        return "/page01";
    }
	
	@GetMapping("/create_user/{username}/{password}")
	public void createUser(@PathVariable(value="username") String username, 
			@PathVariable("password") String password) {
		userService.create(username, password);
	}
}
