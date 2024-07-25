package com.ureca.lottonums.controller;

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

import com.ureca.lottonums.dto.LottoNums;
import com.ureca.lottonums.model.service.LottoNumsService;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/lottonums")
public class LottoNumsController {
	
	@Autowired
	LottoNumsService service;
	
	@GetMapping("/form")
	public String form() {
	  System.out.println(">>> GET form");
	  return "form";  	
	}
	
	@PostMapping("/form")
	public String regist(LottoNums lottonums, Model model) {//DB입력
		System.out.println(">>> POST form");
		System.out.println("lottonums>>>"+ lottonums);
		
		try {
			service.add(lottonums);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return "redirect:list";	
	}
	
	@GetMapping("/list") //1.
	public String list(Model model) { //DB목록출력
		
		try {
			//목록 테이블에 출력할 데이터 얻어오기
			List<LottoNums> list = service.readAll(); //3.			
			
			model.addAttribute("list", list);
			//4.영역에 데이터를 저장! => 왜? 데이터를 View와 공유하기 위해
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "list";  //5.
	}
	
	@GetMapping("/upform")
	public String upform(@RequestParam("no") int no,
			             Model model) {//수정폼 보이기
		
		try {
			model.addAttribute("lottonums", service.read(no));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "upform";
	}
	
	@PostMapping("/upform")
	public String modify(LottoNums lottonums) {//DB수정 요청
		try {
			service.edit(lottonums);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:list";//수정 결과를 list페이지로 확인
	}
	
	@GetMapping("/delete")//  localhost:8080/person/delete?no=3
	public String remove(@RequestParam("no") int no) {//DB삭제 요청
		try {
			service.remove(no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:list";//삭제 결과를 list페이지로 확인
	}


}
