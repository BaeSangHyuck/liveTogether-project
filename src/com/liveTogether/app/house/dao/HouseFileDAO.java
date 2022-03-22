package com.liveTogether.app.house.dao;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.house.vo.HouseFileVO;
import com.liveTogether.mybatis.config.MybatisConfig;
import com.oreilly.servlet.MultipartRequest;

public class HouseFileDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public HouseFileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	// 첨부파일 추가(SQL)
	private void insertHF(HouseFileVO file) {
		sqlSession.insert("houseFiles.insertHF", file);
	}

	// 첨부파일 추가(로직)
	public void insertHF(MultipartRequest multi, int houseNumber) {
		HouseFileVO file = new HouseFileVO();
		Enumeration<String> files = multi.getFileNames();

		// type="file"인 태그의 개수만큼 반복
		while (files.hasMoreElements()) {		
			// 사용자가 업로드한 파일 태그의 name값(key값)
			String name = files.nextElement();

			// 사용자가 업로드한 원본 파일 이름
			String housefileNameOriginal = multi.getOriginalFileName(name);

			// 중복 시 변경된 이름
			String housefileName = multi.getFilesystemName(name);

			// 첨부파일이 업로드되지 않았다면
			if (housefileName == null) {continue;}

			file.setHousefileName(housefileName);
			file.setHousefileNameOriginal(housefileNameOriginal);
			file.setHouseNumber(houseNumber);

		
			insertHF(file);
		}
	}
	
	//방 사진만
		public List<HouseFileVO> getRoomImg(Map<String, Integer> house){
			return sqlSession.selectList("houseFiles.getRoomImg", house);
		}
		


	//하우스 전체 사진 가져오기
	public List<HouseFileVO> getHouseImg(int houseNumber){
		return sqlSession.selectList("houseFiles.getHouseImg", houseNumber);
	}
	
	
	//하우스 사진 삭제
	public void delete(int houseNumber) {
		sqlSession.delete("houseFiles.delete", houseNumber);
	}
	

	
	
	
	
	
}
