package com.liveTogether.app.house;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseDTO;

public class HouseFindRoom implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");	
		
		int min = Integer.parseInt(req.getParameter("min"));
		int max = Integer.parseInt(req.getParameter("max"));
		String[] houseGender = req.getParameterValues("houseGender"); 
		String[] houseType = req.getParameterValues("houseType"); 
		String[] roomType = req.getParameterValues("roomType"); 
		String roomDate = req.getParameter("roomDate"); 
		System.out.println(min);
		System.out.println(max);
		System.out.println(houseGender);
		System.out.println(houseType);
		System.out.println(roomType);
		System.out.println(roomDate);
		
		HouseDAO hdao = new HouseDAO();
		HouseDTO hdto = new HouseDTO();
		PrintWriter out = resp.getWriter();
		
		
//		List<HouseDTO> replyList = hdao.findroom(hdto);
//		JSONArray rooms = new JSONArray();
//
//		for(HouseDTO r : replyList) {
//			JSONObject room = new JSONObject();
//			room.put("houseNumber", r.getHouseNumber());
//			room.put("roomDeposit", r.getRoomDeposit());
//			room.put("roomMonthly", r.getRoomMonthly());
//			room.put("houseGender", r.getHouseGender());
//			room.put("houseType", r.getHouseType());
//			room.put("houseMax", r.getHouseMax());
//			rooms.add(room);
//		}
//		
//		
//		out.print(rooms.toJSONString());
//		out.close();
		
		return null;

		
		
	}

}
