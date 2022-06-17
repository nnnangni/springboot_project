package com.kjbank.holidayproject.service;

import java.util.List;



import com.kjbank.holidayproject.domain.dto.HolidayDto;


public interface HolidayService {
	public List<HolidayDto> list();
	public HolidayDto view(int seq);
	public int add(HolidayDto dto);
	public int update(HolidayDto dto);
	public int del(int seq);
}
