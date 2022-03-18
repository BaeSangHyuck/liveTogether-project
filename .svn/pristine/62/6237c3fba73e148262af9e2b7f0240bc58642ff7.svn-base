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

	// 아이디 중복검사
	public boolean checkId(String memberId) {
		return (Integer) sqlSession.selectOne("Member.checkId", memberId) == 1;
	}

	// 회원가입
	public void join(MemberVO member) {
		sqlSession.insert("Member.join", member);
	}

	// 로그인
	public MemberVO login(Map<String, String> loginMap) {
			MemberVO member = new MemberVO();
			try {
				member= sqlSession.selectOne("Member.login", loginMap);
			} catch (Exception e) {;}
			return member;
		}

	// 회원 정보 조회
	public MemberVO getInfo(String memberId) {
		return sqlSession.selectOne("Member.getInfo", memberId);
	}

	// 아이디 찾기
	public String findId(Map<String, String> findIdMap) {
		String memberId = null;
		try {
			memberId = sqlSession.selectOne("Member.findId", findIdMap);
		} catch (Exception e) {
			;
		}
		return memberId;
	}

	// 비밀번호 찾기(새로운비밀번호설정)
	public void updatePw(MemberVO member) {
		sqlSession.update("Member.updatePw", member);
	}
	
	//비밀번호 sms
	public String findPwSMS(Map<String, String> findPwSMSMap) {
		String memberPwSMS = null;
		try {
			memberPwSMS = sqlSession.selectOne("Member.findPwSMS", findPwSMSMap);
		} catch (Exception e) {
			;
		}
		return memberPwSMS;
	}

	// 정보수정
	public void updateInfo(MemberVO member) {
		sqlSession.update("Member.updateInfo", member);
	}
}
