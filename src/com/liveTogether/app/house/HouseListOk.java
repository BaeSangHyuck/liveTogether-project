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
import com.liveTogether.app.house.vo.HouseRoomVO;

public class HouseListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HouseDAO dao = new HouseDAO();
		PrintWriter out = resp.getWriter();
		List<HouseRoomVO> replyList = dao.selectAll();
		JSONArray rooms = new JSONArray();

		for(HouseRoomVO r : replyList) {
			JSONObject room = new JSONObject();
			room.put("houseNumber", r.getHouseNumber());
			room.put("roomDeposit", r.getRoomDeposit());
			room.put("roomMonthly", r.getRoomMonthly());
			room.put("roomGender", r.getRoomGender());
			room.put("roomType", r.getRoomType());
			rooms.add(room);
		}
		
		
		out.print(rooms.toJSONString());
		out.close();
		
		return null;

		
		
	}
}
