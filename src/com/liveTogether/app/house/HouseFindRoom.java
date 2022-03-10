package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;

public class HouseFindRoom implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String[] month = req.getParameterValues("max");
		String[] gender = req.getParameterValues("g");
		String[] type = req.getParameterValues("h");
		String[] quantity = req.getParameterValues("g");
		
		
		
		
		return null;
	}

}
