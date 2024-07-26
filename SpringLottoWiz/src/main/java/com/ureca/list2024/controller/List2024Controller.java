package com.ureca.list2024.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ureca.list2024.dto.List2024;
import com.ureca.list2024.model.service.List2024Service;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/lottowiz")
public class List2024Controller {
	
	@Autowired
	List2024Service list2024service;
	
	
	@GetMapping("/list2024")
	public String list2024(Model model) {
		try {
			List<List2024> list = list2024service.readAll(); //3.			
			
			model.addAttribute("list", list);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	  return "list2024";  	
	}


}
