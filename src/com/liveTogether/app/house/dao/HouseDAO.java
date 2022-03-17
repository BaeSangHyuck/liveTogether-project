package com.liveTogether.app.house.dao;

import java.util.List;

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
//	public void findroom(뭘까용) {
//		return sqlSession.select("House.findroom", 뭘까용);
//	}
	
//	하우스 전체 리스트
	public List<HouseDTO> selectAll(){
		return sqlSession.selectList("House.selectAll");
	}
	
//	방 정보조회
	public List<HouseVO> info(int houseNumber) {
		return sqlSession.selectList("House.info", houseNumber);
	}
//  하우스 내놓기
	public void regist(HouseVO house) {
		sqlSession.insert("House.regist", house);
	}
//	방 추가하기
	public void registroom(HouseRoomVO house) {
		sqlSession.insert("House.registroom", house);
	}

}
