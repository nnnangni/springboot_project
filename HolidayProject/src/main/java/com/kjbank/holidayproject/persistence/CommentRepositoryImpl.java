package com.kjbank.holidayproject.persistence;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kjbank.holidayproject.domain.dto.CommentDto;

@Repository
public class CommentRepositoryImpl implements CommentRepository{

	
	@Autowired
	JdbcTemplate template;
	
	class CommentMapper implements RowMapper<CommentDto>{
		
		@Override
		public CommentDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			int idx = rs.getInt("idx");
			int seq = rs.getInt("seq");
			String username = rs.getString("username");
			String password = rs.getString("password");
			String content = rs.getString("content");
			String date = rs.getString("date");
			
			CommentDto cdto = new CommentDto();
			cdto.setIdx(idx);
			cdto.setSeq(seq);
			cdto.setUsername(username);
			cdto.setContent(content);
			cdto.setPassword(password);
			cdto.setDate(date);
			return cdto;
		}
		
	}
	
	@Override
	public List<CommentDto> list(int seq) {
		String selectsql = "select * from comment where seq=?" ;
		try {
			List<CommentDto> clist = template.query(selectsql, new CommentMapper(), seq);
			return clist;	
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}


	@Override
	public int add(CommentDto cdto) {
		String insertSql = "insert into comment (seq, username, password, content, date)"
				+ "values (?,?,?,?,now())";
		
		Object[] param = {cdto.getSeq(), cdto.getUsername(), cdto.getPassword(), cdto.getContent()};
		System.out.println(param);
		template.update(insertSql, param);
		return 0;
	}

	@Override
	public int del(CommentDto cdto) {
		String deleteSql = "delete from comment where idx=? and seq=?";
		Object[] param = {cdto.getIdx(),cdto.getSeq()};
		template.update(deleteSql,param);
		return 0;
	}









		
}
	
	
	
