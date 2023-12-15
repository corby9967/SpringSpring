package com.example.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// import com.example.JDBCUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	public BoardVO getBoard (int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}

	public List<BoardVO> getBoardList () {
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}

	public int deleteBoard(int seq) {
		int one = sqlSession.delete("Board.deleteBoard", seq);
		return one;
	}

	public int updateBoard(BoardVO vo){
		int one = sqlSession.update("Board.updateBoard", vo);
		return one;
	}
}
