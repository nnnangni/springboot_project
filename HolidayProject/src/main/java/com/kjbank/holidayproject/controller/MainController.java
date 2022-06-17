package com.kjbank.holidayproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.kjbank.holidayproject.domain.dto.CommentDto;
import com.kjbank.holidayproject.domain.dto.HolidayDto;
import com.kjbank.holidayproject.persistence.CommentRepository;
import com.kjbank.holidayproject.persistence.HolidayRepository;
import com.kjbank.holidayproject.service.CommentService;
import com.kjbank.holidayproject.service.HolidayService;

@Controller
public class MainController {
	
	
	//서비스 정의 
	@Autowired
	HolidayService holidayService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	CommentRepository commentRepository;
	
	
	//메인화면
	@GetMapping("/main")
	public String mainPage(Model model) {//HolidayDto dto
		List<HolidayDto> list = holidayService.list();
		model.addAttribute("list", list);
		return "main";
	}

	
	//상세화면
	@GetMapping("/main/{seq}")
	public String viewPage(@PathVariable int seq, Model model) {
		//model.addAttribute(null, model)
		HolidayDto dto = holidayService.view(seq);
		model.addAttribute("dto", dto);
		
		List<CommentDto> clist = commentService.list(seq);
		model.addAttribute("clist", clist);
		
		System.out.println("여긴???");
		return "view";
	}
	
	//추가화면
	@PostMapping("/main/add")
	public String mainAdd(@ModelAttribute HolidayDto dto, BindingResult result) {
		//mainService.holidayAdd();
		holidayService.add(dto);
		return "redirect:/main";
	}


	@GetMapping("/mainadd")
	public String mainAddPage() {
		
		return "mainadd";
	}
	
	
	//수정화면
	@GetMapping("/modify/{seq}")
	public String modify(@PathVariable int seq, Model model) {
		HolidayDto dto = holidayService.view(seq);
		model.addAttribute("dto", dto);
		return "mainmodify";
	}
	
	@PostMapping("/main/update")
	public String update(@ModelAttribute HolidayDto dto, BindingResult result) {
		holidayService.update(dto);
		int seq = dto.getSeq();
		return "redirect:/main/"+seq;
	}
	
	@GetMapping("/delete/{seq}")
	public String delete(@PathVariable int seq) {
		holidayService.del(seq);
		return "redirect:/main";
	}
	

	
	@PostMapping("/comment/add")
	private String commentAdd(@ModelAttribute CommentDto cdto, BindingResult result) {
		commentService.add(cdto);
		int cseq = cdto.getSeq();
		return "redirect:/main/"+cseq;
	}
	
//	@GetMapping("/comment/delete/{idx}")
//	private String commentDel(@PathVariable int idx) {
//		commentService.del(idx);
//		return "redirect:/main/"+seq;
//	}
	
	@GetMapping("/comment/delete/{seq}/{idx}")
	private String commentDel(@ModelAttribute CommentDto cdto, BindingResult result) {
		commentService.del(cdto);
		int cseq = cdto.getSeq();
		return "redirect:/main/"+cseq;
	}
	
}
