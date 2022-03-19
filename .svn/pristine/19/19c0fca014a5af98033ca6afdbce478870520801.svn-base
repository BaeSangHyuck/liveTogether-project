package com.liveTogether.app.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.member.vo.MemberVO;
import com.liveTogether.app.member.vo.RoomGuestDTO;
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
	
	// 호스트 페이지에서 투어 신청인 정보 가져오기
		public List<RoomGuestDTO> selectRoomAll(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectRoomAll", roomMap);
		}

		// 호스트 페이지에서 투어 신청인 정보 가져오기2
		public List<RoomGuestDTO> selectGuestAll(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectGuestAll", roomMap);
		}
		
		// 호스트 페이지에서 투어 신청인 정보 가져오기
		public List<RoomGuestDTO> selectRoomAllTwo(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectRoomAllTwo", roomMap);
		}
		
		// 호스트 페이지에서 투어 신청인 정보 가져오기2
		public List<RoomGuestDTO> selectGuestAllTwo(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectGuestAllTwo", roomMap);
		}
		
		// 호스트 페이지에서 투어 신청인 정보 가져오기3
		public List<RoomGuestDTO> selectGuestAllThree(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectGuestAllThree", roomMap);
		}

		public List<RoomGuestDTO> selectRoomAllThree(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectRoomAllThree", roomMap);
		}
		
		// 호스트 페이지에서 페이징처리 위한 목록 갯수가져오기
		public int getRoomTotal() {
			return sqlSession.selectOne("Member.getRoomTotal");
		}
		
		// 호스트 페이지에서 페이징처리 위한 목록 갯수가져오기
		public int getRoomTotalTwo() {
			return sqlSession.selectOne("Member.getRoomTotalTwo");
		}
		
		public int getRoomTotalThree() {
			return sqlSession.selectOne("Member.getRoomTotalThree");
		}
		
		// 입주민 테이블 스테이터스 0 -> 1 변경
		public void updateStatusFirst(int houseNumber) {
			sqlSession.update("Member.updateStatusFirst", houseNumber);
		}
		
		// 입주민 테이블 스테이터스 1 -> 2 변경
		public void updateStatusSecond(int houseNumber) {
			sqlSession.update("Member.updateStatusSecond", houseNumber);
		}
		
		// 입주민 테이블 스테이터스 2 -> 3 변경
		public void updateStatusThird(int houseNumber) {
			sqlSession.update("Member.updateStatusThird", houseNumber);
		}
		
		public void roomGuestDelete(int houseNumber) {
			sqlSession.delete("Member.roomGuestDelete", houseNumber);
		}
}
