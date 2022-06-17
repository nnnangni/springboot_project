package com.kjbank.holidayproject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kjbank.holidayproject.domain.dto.HolidayDto;

public interface HolidayRepository {
	public List<HolidayDto> list();
	public HolidayDto view(@Param("seq") int seq);
	public int add(HolidayDto dto);
	public int update(HolidayDto dto);
	public int del(int seq);
	
}
