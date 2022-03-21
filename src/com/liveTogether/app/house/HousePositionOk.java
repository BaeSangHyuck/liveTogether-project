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
		
		ActionForward af = new ActionForward();
		
		HouseDAO dao = new HouseDAO();
		/*ArrayList<HouseVO> positionList = new ArrayList<>();*/
		
		
/*		for (int i = 0; i < dao.getPosition().size(); i++) {
			HouseVO vo = new HouseVO();
			vo.setLatitude(dao.getPosition().get(i).getLatitude());
			vo.setLongitude(dao.getPosition().get(i).getLongitude());
			positionList.add(vo);
		}*/

	
		
		PrintWriter out = resp.getWriter();
		List<HouseVO> positionList = dao.getPosition();
		JSONArray positions = new JSONArray();

		for(HouseVO p : positionList) {
			JSONObject position = new JSONObject();
			position.put("lat", p.getLatitude());
			position.put("lng", p.getLongitude());

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
