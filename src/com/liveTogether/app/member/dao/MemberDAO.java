package com.liveTogether.app.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.member.vo.MemberVO;
import com.liveTogether.mybatis.config.MybatisConfig;


public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;
		
		public MemberDAO() {
			sqlSession = sqlSessionFactory.openSession(true);
		}
		
		//아이디 중복검사
		public boolean checkId(String memberId) {
			return (Integer)sqlSession.selectOne("Member.checkId", memberId) == 1;
		}
		
		//회원가입
		public void join(MemberVO member) {
			sqlSession.insert("Member.join", member);
		}
		
		//로그인
		public String login(Map<String, String> loginMap) {
			String memberId = null;
			try {memberId = sqlSession.selectOne("Member.login", loginMap);} catch (Exception e) {;}
			return memberId;
		}
		
		//회원 정보 조회
		public MemberVO getInfo(String memberId) {
			return sqlSession.selectOne("Member.getInfo", memberId);
		}
		
		//아이디 찾기
		public String findId(Map<String, String> findIdMap) {
			String memberId = null;
			try {memberId = sqlSession.selectOne("Member.findId", findIdMap);} catch (Exception e) {;}
			return memberId;
		}
		
		//비밀번호 찾기
		public String findPw(Map<String, String> findPwMap) {
			String memberPw = null;
			try {memberPw = sqlSession.selectOne("Member.findId", findPwMap);} catch (Exception e) {;}
			return memberPw;
		}
		
	}


