package com.liveTogether.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.board.vo.BoardVO;
import com.liveTogether.mybatis.config.MybatisConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//게시글 목록
	public List<BoardVO> selectAll(Map<String, Integer> boardMap) {
		return sqlSession.selectList("Board.selectAll", boardMap);
	}
	
	//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Board.getTotal");
		}
}
