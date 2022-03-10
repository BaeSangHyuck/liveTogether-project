package com.liveTogether.app.house.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.house.vo.HouseVO;
import com.liveTogether.mybatis.config.MybatisConfig;

public class HouseDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;
	
//	방 찾기
//	public void findroom(뭘까용) {
//		return sqlSession.select("House.findroom", 뭘까용);
//	}
	
//	방 전체 리스트
	public List<HouseVO> selectAll(){
		return sqlSession.selectList("House.selectAll");
	}
	
//	방 정보조회
	public List<HouseVO> info(int houseNumber) {
		return sqlSession.selectList("House.info", houseNumber);
	}
}
