package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class AdminUpdateStatusOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO dao = new HouseDAO();
		
		int houseNumber = Integer.parseInt(req.getParameter("houseNumber"));
		dao.updateStatus(houseNumber);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/house/AdminStandByOk.ho");
		return af;
	}

}
