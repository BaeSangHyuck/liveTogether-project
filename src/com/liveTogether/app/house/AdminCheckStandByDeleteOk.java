package com.liveTogether.app.house;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class AdminCheckStandByDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO dao = new HouseDAO();
		ArrayList<Integer> alHouseNumber = new ArrayList<>();
		String[] StringHouseNumber = req.getParameterValues("term1");
		
		for (int i = 0; i < StringHouseNumber.length; i++) {
			int houseNumber = Integer.parseInt(StringHouseNumber[i]);
			alHouseNumber.add(houseNumber);
		}
		
		for (int i = 0; i < alHouseNumber.size(); i++) {
			dao.fileDelete(alHouseNumber.get(i));
			dao.guestDelete(alHouseNumber.get(i));
			dao.roomDelete(alHouseNumber.get(i));
			dao.houseDelete(alHouseNumber.get(i));
		}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/house/AdminStandByOk.ho");
		return af;
	}

}
