package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;

public class HouseRegister implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		HouseDAO dao = new HouseDAO();
		ActionForward af = new ActionForward();
		
		int houseNumber = 0;
	      try {
	    	  houseNumber=dao.getSeq()+1; // roomName을 중복없이 주기 위한 houseNumber
	      } catch (NullPointerException e) {
	    	  houseNumber = 1;
	      }
		
		req.setAttribute("houseNumber", houseNumber);
		
		af.setRedirect(false);
		af.setPath("/house/HouseRegist.ho");

		return af;
	}

}
