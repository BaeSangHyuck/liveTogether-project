package com.liveTogether.app.house.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.house.vo.HouseFilterDTO;
import com.liveTogether.app.house.vo.HouseMemberDTO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;
import com.liveTogether.app.member.vo.RoomGuestDTO;
import com.liveTogether.mybatis.config.MybatisConfig;

public class HouseDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public HouseDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

//	하우스 찾기
	public List<HouseDTO> findroom(HouseFilterDTO house) {
		return sqlSession.selectList("House.findroom", house);
	}

//	하우스 전체 리스트
	public List<HouseDTO> selectAll() {
		return sqlSession.selectList("House.selectAll");
	}

//	방 정보조회
	public HouseVO info(int houseNumber) {
		return sqlSession.selectOne("House.info", houseNumber);
	}

//  하우스 내놓기
	public void regist(HouseVO house) {
		sqlSession.insert("House.regist", house);
	}

//	방 추가하기
	public void registroom(HouseRoomVO house) {
		sqlSession.insert("House.registroom", house);
	}

//	 방에 몇명이 살고있는지
	public int roomGuestCount(int houseNumber) {
		return sqlSession.selectOne("House.roomGuestCount", houseNumber);
	}

	// admin페이지에 필요한 방 전체 리스트
	public List<HouseRoomVO> selectRealAll(Map<String, Integer> houseMap) {
		return sqlSession.selectList("House.selectRealAll", houseMap);
	}

	// 페이징 처리에 필요한 목록 개수 가져오기
	public int getTotal() {
		return sqlSession.selectOne("House.getTotal");
	}
	
	public List<HouseMemberDTO> getProfile(int houseNumber){
		return sqlSession.selectList("House.getProfile", houseNumber);
	}

	// 하우스 넘버로 방 목록에서 방 지우기
	public void roomDelete(int houseNumber) {
		sqlSession.delete("House.roomDelete", houseNumber);
	}

	// 하우스 넘버로 방 목록에서 방 지우기
	public void houseDelete(int houseNumber) {
		sqlSession.delete("House.houseDelete", houseNumber);
	}

	// 전체 하우스 개수 구하기
	public int houseCount() {
		return sqlSession.selectOne("House.houseCount");
	}

	// 승인 대기 중인 하우스 개수
	public int waitCount() {
		return sqlSession.selectOne("House.waitCount");
	}

	// 방 정보 조회
	public List<HouseRoomVO> roomInfo(int houseNumber) {
		return sqlSession.selectList("House.roomInfo", houseNumber);
	}

	// 하우스 정보 수정
	public void updateInfo(HouseVO house) {
		sqlSession.update("House.updateInfo", house);
	}

	// 방 정보 수정
	public void updateRoomInfo(HouseRoomVO room) {
		sqlSession.update("House.updateRoomInfo", room);
	}

	public List<HouseDTO> getPosition() {
		return sqlSession.selectList("House.getPosition");
	}

	// 가장 최근에 등록된 하우스 번호
	public int getSeq() {
		return sqlSession.selectOne("House.getSeq");
	}

	// admin페이지에 필요한 방 전체 리스트
	public List<HouseRoomVO> adminSelectAll(Map<String, Integer> houseMap) {
		return sqlSession.selectList("House.adminSelectAll", houseMap);
	}

	// admin페이지에 필요한 방 전체 리스트2
	public List<HouseDTO> adminSelectAllTwo(Map<String, Integer> houseMap) {
		return sqlSession.selectList("House.adminSelectAllTwo", houseMap);
	}

	// 페이징 처리에 필요한 목록 개수 가져오기
	public int getTotalTwo() {
		return sqlSession.selectOne("House.getTotalTwo");
	}

	public void updateStatus(int houseNumber) {
		sqlSession.update("House.updateStatus", houseNumber);
	}

	public void guestDelete(int houseNumber) {
		sqlSession.delete("House.guestDelete", houseNumber);
	}

	public void fileDelete(int houseNumber) {
		sqlSession.delete("House.fileDelete", houseNumber);
	}

	public int getForSaleTotal(HouseDTO dto) {
		return sqlSession.selectOne("House.getForSaleTotal", dto);
	}

	public List<RoomGuestDTO> getForSaleList(String memberId) {
		return sqlSession.selectList("House.getForSaleList", memberId);
	}
	
	
	
	
	
	
	//투어 신청 수
	public int tourCount() {
		return sqlSession.selectOne("House.tourCount");
	}

	//입주 대기자 수
	public int waitResidentCount() {
		return sqlSession.selectOne("House.waitResidentCount");
	}		
	
	//입주자 수
	public int residentCount() {
		return sqlSession.selectOne("House.residentCount");
	}

	//모든 방 수
	public int roomCount() {
		return sqlSession.selectOne("House.roomCount");
	}
			
	//리뷰 별점 5개 건수
	public int fiveReviewCount() {
		return sqlSession.selectOne("House.fiveReviewCount");
	}
	
	//리뷰 별점 4개 건수
	public int fourReviewCount() {
		return sqlSession.selectOne("House.fourReviewCount");
	}
			
	//리뷰 별점 3개 건수
	public int threeReviewCount() {
		return sqlSession.selectOne("House.threeReviewCount");
	}		
	
	//리뷰 별점 2개 건수
	public int twoReviewCount() {
		return sqlSession.selectOne("House.twoReviewCount");
	}
	
	//리뷰 별점 1개 건수
	public int oneReviewCount() {
		return sqlSession.selectOne("House.oneReviewCount");
	}
	
	//총 리뷰 수
	public int reviewCount() {
		return sqlSession.selectOne("House.reviewCount");
	}
	
	//총 문의 수
	public int inquiryTotalCount() {
		return sqlSession.selectOne("House.inquiryTotalCount");
	}
	
	//메인 베너 가져오기
	public List<HouseDTO> bannerList() {
		return sqlSession.selectList("House.bannerList");
	}

}
