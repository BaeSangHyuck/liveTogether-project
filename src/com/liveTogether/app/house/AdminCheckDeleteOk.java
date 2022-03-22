package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class AdminCheckDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO dao = new HouseDAO();
		String[] StringHouseNumber = req.getParameterValues("term1");
		
		for (int i = 0; i < StringHouseNumber.length; i++) {
			dao.fileDelete(Integer.parseInt(StringHouseNumber[i]));
			dao.guestDelete(Integer.parseInt(StringHouseNumber[i]));
			dao.roomDelete(Integer.parseInt(StringHouseNumber[i]));
			dao.houseDelete(Integer.parseInt(StringHouseNumber[i]));
		}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/house/AdminDetailOk.ho");
		return af;
	}

}
