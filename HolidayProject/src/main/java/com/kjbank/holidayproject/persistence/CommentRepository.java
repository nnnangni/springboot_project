package com.kjbank.holidayproject.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kjbank.holidayproject.domain.dto.CommentDto;

public interface CommentRepository {
	public List<CommentDto> list(int seq);
	public int add(CommentDto cdto);
	public int del(CommentDto cdto);
}
