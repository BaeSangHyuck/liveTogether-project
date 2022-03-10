package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class HouseListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		HouseDAO dao = new HouseDAO();
		ActionForward af = new ActionForward();
		
		req.setAttribute("houseList", dao.selectAll());
		
		af.setRedirect(false);
		af.setPath("house/findRoom.jsp");
		
		return af;
		
	}
}
