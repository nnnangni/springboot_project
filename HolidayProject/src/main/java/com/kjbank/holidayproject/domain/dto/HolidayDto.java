package com.kjbank.holidayproject.domain.dto;



import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name="holiday")
public class HolidayDto {
	
	@Id
	private int seq;
	private String title;
	private String sido;
	private String sigungu;
	private String outline;
	private String content;
	private String image;
	
//	public HolidayDto(int seq, String title, String outline) {
//		this.seq = seq;
//		this.title = title;
//		this.outline = outline;
//	}
}
