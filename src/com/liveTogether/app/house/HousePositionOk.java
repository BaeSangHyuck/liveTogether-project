package com.liveTogether.app.house;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.expr.NewArray;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.house.vo.HouseVO;

public class HousePositionOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HouseDAO hdao = new HouseDAO();
		ActionForward af = new ActionForward();
		List<HouseDTO> houseList = hdao.selectAll();
		HouseDAO dao = new HouseDAO();
		
		PrintWriter out = resp.getWriter();
		JSONArray positions = new JSONArray();

		for(HouseDTO p : houseList) {
			JSONObject position = new JSONObject();
			position.put("lat", p.getLatitude());
			position.put("lng", p.getLongitude());
			position.put("houseNumber", p.getHouseNumber());
			position.put("roomDeposit", p.getRoomDeposit());
			position.put("roomMonthly", p.getRoomMonthly());
			position.put("houseGender", p.getHouseGender());
			position.put("houseType", p.getHouseType());
			position.put("houseMax", p.getHouseMax());
			position.put("housefileName", p.getHousefileName());

			positions.add(position);
		}
//		req.setAttribute("positionList", positionList);
		
		out.print(positions);
		out.close();

		af.setRedirect(false);
		af.setPath("/house/FindRoom.ho");
	    
		return af;
	}

}
