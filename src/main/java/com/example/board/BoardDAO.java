package com.example.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// import com.example.JDBCUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public int insertBoard(BoardVO vo){
		String sql = "insert into BOARD (title, writer) values ("
				+ "'" + vo.getCategory() + "',"
				+ "'" + vo.getTitle() + "',"
				+ "'" + vo.getWriter() + "',"
				+ "'" + vo.getContent() + "',"
				+ "'" + vo.getRegdate() + "')";
		return jdbcTemplate.update(sql);
	}

	public int deleteBoard(int seq) {
		String sql = "delete from BOARD where seq = " + seq;
		return jdbcTemplate.update(sql);
	}

	public int updateBoard(BoardVO vo){
		String sql = "update BOARD set title='" + vo.getTitle() + "',"
				+ " category='" + vo.getCategory() + "',"
				+ " title='" + vo.getTitle() + "',"
				+ " writer='" + vo.getWriter() + "',"
				+ " content='" + vo.getContent() + "',"
				+ "regdate='" + vo.getRegdate()
				+ "' where seq=" + vo.getSeq();
		return jdbcTemplate.update(sql);
	}

	public BoardVO getBoard(int seq) {
		String sql = "select * from BOARD where seq=" + seq;
		return jdbcTemplate.queryForObject(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO one = new BoardVO();
				one.setCategory(rs.getString("category"));
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
				one.setContent(rs.getString("content"));
				one.setRegdate(rs.getDate("regdate"));

				return one;
			}
		});
	}

	public List<BoardVO> getBoardList() {
		String sql = "select * from BOARD order by seq desc";
		List<BoardVO> list = jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO one = new BoardVO();
				one.setCategory(rs.getString("category"));
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
				one.setContent(rs.getString("content"));
				one.setRegdate(rs.getDate("regdate"));
				return one;
			}
		});
		return list;
	}
}
