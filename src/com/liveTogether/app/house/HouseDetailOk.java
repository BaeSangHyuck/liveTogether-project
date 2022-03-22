package com.liveTogether.app.house;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.dao.HouseFileDAO;
import com.liveTogether.app.house.vo.HouseFileVO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;

public class HouseDetailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		

		int houseNumber = Integer.parseInt(req.getParameter("houseNumber"));
		
		HouseDAO hDao = new HouseDAO();
		HouseFileDAO fDao = new HouseFileDAO();
		HouseVO house = hDao.info(houseNumber);
		List<HouseRoomVO> room = hDao.roomInfo(houseNumber);
		List<HouseFileVO> houseFileName = fDao.getHouseImg(houseNumber);
		HashMap<String, Integer> RoomImg = new HashMap<>();
		RoomImg.put("houseNumber", houseNumber);
		RoomImg.put("limit",houseFileName.size());
		
		List<HouseFileVO> houseRoomImg = fDao.getRoomImg(RoomImg);
 				
		String houseMapImg = houseFileName.get(0).getHousefileName();
			
		ActionForward af = new ActionForward();
		
		req.setAttribute("houseRoomImg", houseRoomImg);
		req.setAttribute("house", house);
		req.setAttribute("room", room);
		req.setAttribute("houseMapImg", houseMapImg);
	
		
		
		af.setRedirect(false);
		af.setPath("/house/houseDetail.ho");

		return af;
	}

}
