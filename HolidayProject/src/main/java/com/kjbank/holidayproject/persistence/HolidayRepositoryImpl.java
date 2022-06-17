package com.kjbank.holidayproject.persistence;

import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kjbank.holidayproject.domain.dto.HolidayDto;

@Repository
public class HolidayRepositoryImpl implements HolidayRepository{

	@Autowired
	JdbcTemplate template;
	
	class HolidayMapper implements RowMapper<HolidayDto>{
		
		@Override
		public HolidayDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			int seq = rs.getInt("seq");
			String title = rs.getString("title");
			String sido = rs.getString("sido");
			String sigungu = rs.getString("sigungu");
			String outline = rs.getString("outline");
			String content = rs.getString("content");
			String image = rs.getString("image");
			
			HolidayDto dto = new HolidayDto();
			dto.setSeq(seq);
			dto.setTitle(title);
			dto.setSido(sido);
			dto.setSigungu(sigungu);
			dto.setOutline(outline);
			dto.setContent(content);
			dto.setImage(image);
			
			return dto;
		}
	}

	
	@Override
	public List<HolidayDto> list() {
		String sql = "select * from holiday";
		List<HolidayDto> list = template.query(sql, new HolidayMapper());
		return list;
	}

	@Override
	public HolidayDto view(int seq) {
		String selectSql = "select * from holiday where seq=?";
		try {
			HolidayDto dto = template.queryForObject(selectSql, new HolidayMapper(),seq);
			return dto;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		
	}

	@Override
	public int add(HolidayDto dto) {
		String insertSql = "insert into holiday (title, sido, sigungu, outline, content, image) values (?, ?, ?, ?, ?, ?)";
		Object[] param = {dto.getTitle(),dto.getSido(), dto.getSigungu(), dto.getOutline(), dto.getContent(), dto.getImage()};
		template.update(insertSql, param);
		return 0;
	}

	@Override
	public int update(HolidayDto dto) {
		String updateSql = "update holiday "
				+ "set title=?, sido=?, sigungu=?, outline=?, content=?, image=? "
				+ "where seq=?";
		Object[] param = {dto.getTitle(),dto.getSido(), dto.getSigungu(), dto.getOutline(), dto.getContent(), dto.getImage(), dto.getSeq()};
		template.update(updateSql, param);
		return 0;
	}

	@Override
	public int del(int seq) {
		String deleteSql = " delete from holiday where seq=?";
		template.update(deleteSql, seq);
		return 0;
	}


	
}
