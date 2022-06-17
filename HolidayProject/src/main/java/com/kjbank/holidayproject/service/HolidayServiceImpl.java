package com.kjbank.holidayproject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjbank.holidayproject.domain.dto.HolidayDto;
import com.kjbank.holidayproject.persistence.HolidayRepository;

@Service
public class HolidayServiceImpl implements HolidayService {

	@Autowired
	HolidayRepository holidayRepository;
	@Override
	public List<HolidayDto> list() {
//		List<HolidayDto> list = new ArrayList<HolidayDto>();
//		HolidayDto dto = new HolidayDto(1,"해운대","좋아요");
//		list.add(dto);
		List<HolidayDto> list = holidayRepository.list();
		return list;
	}
	
	@Override
	public HolidayDto view(int seq) {
		return holidayRepository.view(seq); 
	}

	@Override
	public int add(HolidayDto dto) {
		// TODO Auto-generated method stub
		return holidayRepository.add(dto);
	}

	@Override
	public int update(HolidayDto dto) {
		return holidayRepository.update(dto);
	}

	@Override
	public int del(int seq) {
		return holidayRepository.del(seq);
	}

}
