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

public class HouseListOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HouseDAO dao = new HouseDAO();
		PrintWriter out = resp.getWriter();
		List<HouseDTO> houseList = dao.selectAll();
		JSONArray houses = new JSONArray();

		for(HouseDTO h : houseList) {
			JSONObject house = new JSONObject();
			house.put("houseNumber", h.getHouseNumber());
			house.put("roomDeposit", h.getRoomDeposit());
			house.put("roomMonthly", h.getRoomMonthly());
			house.put("houseGender", h.getHouseGender());
			house.put("houseType", h.getHouseType());
			house.put("houseMax", h.getHouseMax());
			houses.add(house);
		}
		
		out.print(houses.toJSONString());
		out.close();
		
		return null;

	}
}