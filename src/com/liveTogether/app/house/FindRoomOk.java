package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;

public class FindRoomOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();		
		String keyword = req.getParameter("search");
		
		req.setAttribute("keyword", keyword);	
		
		af.setRedirect(false);
		af.setPath("/house/FindRoom.ho");
		return af;
	}

}
