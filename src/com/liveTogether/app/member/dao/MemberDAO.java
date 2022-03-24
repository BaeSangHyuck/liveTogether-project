package com.liveTogether.app.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.board.vo.BoardVO;
import com.liveTogether.app.board.vo.InquiryVO;
import com.liveTogether.app.member.vo.MemberVO;
import com.liveTogether.app.member.vo.MyRoomGuestDTO;
import com.liveTogether.app.member.vo.RoomGuestDTO;
import com.liveTogether.app.member.vo.RoomGuestVO;
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
	
	//탈퇴전 비밀번호
	public boolean checkPw(Map<String, String> map) {
		return (Integer)sqlSession.selectOne("Member.checkPw", map) == 1;
	}
	
	//탈퇴 과정 1
	public void deleteRg(String memberId) {
		sqlSession.delete("Member.deleteRg", memberId);
	}
	
	//탈퇴 과정 2
		public void updateM(String memberId) {
			sqlSession.update("Member.updateM", memberId);
		}
	//호스트 탈퇴과정 0-호스트의 하우스 가져오기 
		public int hostDeleteZero(String memberId) {
			int houseNumber = 0;
			try {
				houseNumber = sqlSession.selectOne("Member.hostDeleteZero", memberId);
			} catch (Exception e) {;}
			return houseNumber;
		}
		//호스트 탈퇴과정 1-룸게스트
		public void hostDeleteOne(int houseNumber) {
			sqlSession.delete("Member.hostDeleteOne", houseNumber);
		}
		
		//호스트 탈퇴과정 2-하우스파일
		public void hostDeleteTwo(int houseNumber) {
			sqlSession.delete("Member.hostDeleteTwo", houseNumber);
		}
		
		//호스트 탈퇴과정 3-하우스룸 
		public void hostDeleteThree(int houseNumber) {
			sqlSession.delete("Member.hostDeleteThree", houseNumber);
		}
		
		//호스트 탈퇴과정 4-하우스
		public void hostDeleteFour(int houseNumber) {
			sqlSession.delete("Member.hostDeleteFour", houseNumber);
		}
		
		//로그인 스테이터스 검사 
		public int findStatus(String memberId) {
			int status = 0;
			try {
				status = sqlSession.selectOne("Member.findStatus", memberId);
			} catch (Exception e) {;}
			return status;
		}
		
	
	//마이페이지 투어신청  방 정보 가져오기
	public void selectMypageTour(Map<String, Integer> myMap) {
		sqlSession.selectList("Member.selectMypageTour",myMap);
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
		
		// 호스트 페이지에서 투어 신청인 정보 가져오기4
		public List<RoomGuestDTO> selectGuestAllFour(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectGuestAllFour", roomMap);
		}
		
		public List<RoomGuestDTO> selectRoomAllFour(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectRoomAllFour", roomMap);
		}
		
		// 호스트 페이지에서 투어 신청인 정보 가져오기4
		public List<RoomGuestDTO> selectGuestAllFifth(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectGuestAllFifth", roomMap);
		}
		
		public List<RoomGuestDTO> selectRoomAllFifth(Map<String, Integer> roomMap) {
			return sqlSession.selectList("Member.selectRoomAllFifth", roomMap);
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
		
		public int getRoomTotalFour() {
			return sqlSession.selectOne("Member.getRoomTotalFour");
		}
		
		public int getRoomTotalFifth() {
			return sqlSession.selectOne("Member.getRoomTotalFifth");
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
		
		// 입주민 테이블 스테이터스 4 -> 0 변경
		public void updateStatusZero(int houseNumber) {
			sqlSession.update("Member.updateStatusZero", houseNumber);
		}
		
		// 입주민 테이블 투어 취소시 db 삭제 대신 status 4로 변경
		public void roomGuestDelete(int houseNumber) {
			sqlSession.update("Member.roomGuestDelete", houseNumber);
		}
		
		// 투어 거절 목록에서 삭제시 진짜 db에서 삭제
		public void tourRealDelete(int houseNumber) {
			sqlSession.delete("Member.tourRealDelete", houseNumber);
		}
	
		// 마이페이지 테이블 스테이터스 1 -> 2 변경
		public void updateStMypageSecond(String memberId) {
			sqlSession.update("Member.updateMypageSecond", memberId);
		}
	
		//마이페이지 테이블 스테이터스 삭제
		public void tourMypageDelete(String memberId) {
			sqlSession.delete("Member.tourMypageDelete", memberId);
		}
		
		//마이페이지 투어신청
		public void insertTour(RoomGuestDTO dto) {
			sqlSession.insert("Member.insertTour", dto);
		}
		
		//투어 개수세기
		public int countTour(String memberId) {
			return sqlSession.selectOne("Member.countTour", memberId);
		}
		
		//마이페이지 투어신청 목록 (하우스정보)가져오기
		public MyRoomGuestDTO myTourHouse(String memberId) {
			return sqlSession.selectOne("Member.myTourHouse", memberId);
		}
		
		//마이페이지 투어신청 목록 (룸 정보)가져오기
		public MyRoomGuestDTO myTourHouseRoom(String memberId) {
			return sqlSession.selectOne("Member.myTourHouseRoom", memberId);
		}
		
		//마이페이지 리뷰
		public void reviewUpdate(RoomGuestVO room) {
			sqlSession.update("Member.reviewUpdate", room);
		}
	
		//일반 회원 가입자수
		public int nMemberCount() {
			return sqlSession.selectOne("Member.nMemberCount");
		}
		
		//호스트 회원 가입자수
		public int hMemberCount() {
			return sqlSession.selectOne("Member.hMemberCount");
		}

		//총 리뷰 목록
		public List<MyRoomGuestDTO> totalReviewList() {
			return sqlSession.selectList("Member.totalReviewList");
		}
		
		//마이페이지 리뷰리스트 가져오기
		public RoomGuestVO reviewList(String memberId) {
			return sqlSession.selectOne("Member.reviewList", memberId);
		}
		
		//마이페이지 문의하기 목록
		public List<InquiryVO> getQuestion(String memberId ) {
			return sqlSession.selectList("Member.getQuestion", memberId);
		}
		
		//리뷰삭제
        public void reviewDelete(String memberId) {
            sqlSession.update("Member.reviewDelete",memberId);
        }
        
        //비밀번호 찾기 아이디,폰 번호
        public int findPwCount(MemberVO member) {
        	return sqlSession.selectOne("Member.findPwCount", member);
        }
		
	
		
		
}
