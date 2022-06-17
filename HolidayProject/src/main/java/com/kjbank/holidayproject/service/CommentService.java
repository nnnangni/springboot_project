package com.kjbank.holidayproject.service;

import java.util.List;

import com.kjbank.holidayproject.domain.dto.CommentDto;

public interface CommentService {
	public List<CommentDto> list(int seq);
	public int add(CommentDto cdto);
	//public int del(int idx);
	public int del(CommentDto cdto);

}
