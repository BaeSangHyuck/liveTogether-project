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
import com.liveTogether.app.house.vo.HouseFilterDTO;

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
		String gender = "";
		String htype = "";
		String rtype = "";
		
		HouseDAO hdao = new HouseDAO();
		HouseFilterDTO fdto = new HouseFilterDTO();
		PrintWriter out = resp.getWriter();		
		fdto.setMin(min);
		fdto.setMax(max);
		if(houseGender != null) {
			for (String gd : houseGender) {
				if(gd != null) {
					gender += gd;				
				}
			}
			fdto.setHouseGender(gender);
		}
		if(houseType != null) {
			for (String ht : houseType) {
				if(ht != null) {
					htype += ht;				
				}
			}
			fdto.setHouseType(htype);
		}
		if(roomType != null) {
			for (String rt : roomType) {
				if(rt != null) {
					rtype += rt;				
				}
			}
			fdto.setRoomType(rtype);
		}
		fdto.setRoomDate(roomDate);					

		List<HouseDTO> houseList = hdao.findroom(fdto);
		JSONArray rooms = new JSONArray();
		for(HouseDTO r : houseList) {
			JSONObject room = new JSONObject();
			room.put("houseNumber", r.getHouseNumber());
			room.put("roomDeposit", r.getRoomDeposit());
			room.put("roomMonthly", r.getRoomMonthly());
			room.put("houseGender", r.getHouseGender());
			room.put("houseType", r.getHouseType());
			room.put("houseMax", r.getHouseMax());
			room.put("housefileName",r.getHousefileName());
			room.put("lat",r.getLatitude());
			room.put("lng",r.getLongitude());
			rooms.add(room);
		}
		
		out.print(rooms.toJSONString());
		out.close();
		
		return null;

		
		
	}

}
