package com.liveTogether.app.house;

import java.io.IOException;
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


public class HouseRegisterUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		
		ActionForward af = new ActionForward();
		
		int houseNumber = Integer.parseInt(req.getParameter("houseNumber"));
		
		HouseDAO hDao = new HouseDAO();
		HouseFileDAO fDao = new HouseFileDAO();
		HouseVO house = hDao.info(houseNumber);
		List<HouseRoomVO> room = hDao.roomInfo(houseNumber);		

		
		
		req.setAttribute("house", house);	
		req.setAttribute("room", room);


		
		af.setRedirect(false);
		af.setPath("/house/houseRegisterUpdate.jsp");
		return af;
	}

}
