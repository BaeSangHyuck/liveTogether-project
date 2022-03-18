package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class AdminOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO dao = new HouseDAO();
		System.out.println(dao.houseCount());
		System.out.println(dao.waitCount());
		req.setAttribute("houseCount", dao.houseCount());
		req.setAttribute("waitCount", dao.waitCount());
		
		af.setRedirect(false);
		af.setPath("/admin/admin.jsp");
		return af;
	}
	
}
