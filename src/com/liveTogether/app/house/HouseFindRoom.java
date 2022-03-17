package com.liveTogether.app.house;

import java.io.IOException;
<<<<<<< HEAD
import java.io.PrintWriter;
import java.util.List;
=======
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseDTO;
=======
import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433

public class HouseFindRoom implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
<<<<<<< HEAD
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HouseDAO dao = new HouseDAO();
		PrintWriter out = resp.getWriter();
		List<HouseDTO> replyList = dao.selectAll();
		JSONArray rooms = new JSONArray();

		for(HouseDTO r : replyList) {
			JSONObject room = new JSONObject();
			room.put("houseNumber", r.getHouseNumber());
			room.put("roomDeposit", r.getRoomDeposit());
			room.put("roomMonthly", r.getRoomMonthly());
			room.put("houseGender", r.getHouseGender());
			room.put("houseType", r.getHouseType());
			room.put("houseMax", r.getHouseMax());
			rooms.add(room);
		}
		
		
		out.print(rooms.toJSONString());
		out.close();
		
		return null;

		
		
=======
		String[] month = req.getParameterValues("max");
		String[] gender = req.getParameterValues("g");
		String[] type = req.getParameterValues("h");
		String[] quantity = req.getParameterValues("g");
		
		
		
		
		return null;
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433
	}

}
