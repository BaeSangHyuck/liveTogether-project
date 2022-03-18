package com.liveTogether.app.house.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;
import com.liveTogether.mybatis.config.MybatisConfig;

public class HouseDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public HouseDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

//	하우스 찾기
	public int findroom(HouseDTO house) {
		return sqlSession.selectOne("House.findroom", house);
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

	// admin페이지에 필요한 방 전체 리스트
	public List<HouseRoomVO> selectRealAll(Map<String, Integer> houseMap) {
		return sqlSession.selectList("House.selectRealAll", houseMap);
	}

	// 페이징 처리에 필요한 목록 개수 가져오기
	public int getTotal() {
		return sqlSession.selectOne("House.getTotal");
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
	public int houseCount(){
		return sqlSession.selectOne("House.houseCount");
	}
	
	// 승인 대기 중인 하우스 개수
	public int waitCount(){
		return sqlSession.selectOne("House.waitCount");
	}
	
	//방 정보 조회
	public List<HouseRoomVO> roomInfo (int houseNumber) {
		return sqlSession.selectList("House.roomInfo", houseNumber);
	}
	

}
