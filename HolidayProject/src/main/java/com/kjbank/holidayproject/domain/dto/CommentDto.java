package com.kjbank.holidayproject.domain.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name="comment")
public class CommentDto implements Serializable{
	
	@Id
	private int idx;
	@Id
	private int seq;
	private String username;
	private String password;
	private String content;
	private String date;
	
}
