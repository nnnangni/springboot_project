package com.kjbank.holidayproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjbank.holidayproject.domain.dto.CommentDto;
import com.kjbank.holidayproject.domain.dto.HolidayDto;
import com.kjbank.holidayproject.persistence.CommentRepository;


@Service
public class CommentServiceImpl implements CommentService{

	
	@Autowired
	CommentRepository commentRepository;
	
	@Override
	public List<CommentDto> list(int seq) {
		List<CommentDto> clist = commentRepository.list(seq);
		return clist;
	}

	
	@Override
	public int add(CommentDto cdto) {
		return commentRepository.add(cdto);
	}

	@Override
	public int del(CommentDto cdto) {
		return commentRepository.del(cdto);
	}



	
}


