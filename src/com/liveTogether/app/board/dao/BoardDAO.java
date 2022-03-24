package com.liveTogether.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.board.vo.BoardDTO;
import com.liveTogether.app.board.vo.BoardVO;
import com.liveTogether.app.board.vo.InquiryVO;
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
		
	//게시물 작성
	public void insert(BoardVO board) {
		sqlSession.insert("Board.insert",board);
	}
	
	//최근 게시글 번호
	public int getSeq() {
		return sqlSession.selectOne("Board.getSeq");
	}
	
	//정보조회
	public BoardVO selectDetail(int boardNumber) {
		return sqlSession.selectOne("Board.selectDetail",boardNumber);
	}
	
	//게시글 삭제
	public void delete(int boardNumber) {
		sqlSession.delete("Board.delete",boardNumber);
	}
	
	//게시글 수정
	public void update(BoardVO board) {
		sqlSession.update("Board.update",board );
	}
	
	//게시글 검색
	public List<BoardVO> search(BoardDTO board) {
		return sqlSession.selectList("Board.search",board);
	}
	
	//검색 갯수
	public int getSearch(String boardTitle) {
		return sqlSession.selectOne("Board.getSearch",boardTitle);
	}
	
	public String inquiryData(String memberId) {
		return sqlSession.selectOne("Board.inquiryData", memberId);
	}
	
	public void inquiryInsert(InquiryVO inquiry) {
		sqlSession.insert("Board.inquiryInsert", inquiry);
	}
	
	public List<InquiryVO> inquiryAdminList(Map<String, Integer> inquiryMap) {
		return sqlSession.selectList("Board.inquiryAdminList", inquiryMap);
	}
	
	public int getInquiryCount() {
		return sqlSession.selectOne("Board.getInquiryCount");
	}
	
	public void inquiryDelete(int inquiryNumber) {
		sqlSession.selectOne("Board.inquiryDelete", inquiryNumber);
	}
	
	public InquiryVO inquiryDetail(int inquiryNumber) {
		return sqlSession.selectOne("Board.inquiryDetail", inquiryNumber);
	}
	
	public void updateIRStauts(InquiryVO inquiry) {
		sqlSession.insert("Board.updateIRStauts", inquiry);
	}
	
	public List<InquiryVO> inquiryAdminListZero(Map<String, Integer> inquiryMap) {
		return sqlSession.selectList("Board.inquiryAdminListZero", inquiryMap);
	}
	
	public List<InquiryVO> inquiryAdminListOne(Map<String, Integer> inquiryMap) {
		return sqlSession.selectList("Board.inquiryAdminListOne", inquiryMap);
	}
	
	public int getInquiryCountZero() {
		return sqlSession.selectOne("Board.getInquiryCountZero");
	}
	
	public int getInquiryCountOne() {
		return sqlSession.selectOne("Board.getInquiryCountOne");
	}
	
	public void deleteReply(int inquiryNumber) {
		sqlSession.update("Board.deleteReply", inquiryNumber);
	}
	
	public int boardCount() {
		return sqlSession.selectOne("Board.boardCount");
	}
}
