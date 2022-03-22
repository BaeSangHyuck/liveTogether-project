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
import com.liveTogether.app.house.dao.HouseFileDAO;
import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.house.vo.HouseFileVO;

public class HouseListOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HouseDAO hdao = new HouseDAO();
		PrintWriter out = resp.getWriter();
		List<HouseDTO> houseList = hdao.selectAll();
		JSONArray houses = new JSONArray();
		HouseFileDAO fdao = new HouseFileDAO();		
		int roomGuestCount = 0;
		
		

		for(HouseDTO h : houseList) {
			JSONObject house = new JSONObject();
			house.put("houseNumber", h.getHouseNumber());
			house.put("roomDeposit", h.getRoomDeposit());
			house.put("roomMonthly", h.getRoomMonthly());
			house.put("houseGender", h.getHouseGender());
			house.put("houseType", h.getHouseType());
			roomGuestCount = hdao.roomGuestCount(h.getHouseNumber());
			house.put("houseMax", h.getHouseMax() - roomGuestCount);
			house.put("housefileName", h.getHousefileName());
			houses.add(house);
		}
		
		out.print(houses.toJSONString());
		out.close();
		
		return null;

	}
}