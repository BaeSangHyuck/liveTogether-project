package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;

public class InquiryDeleteZeroOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		
		dao.inquiryDelete(Integer.parseInt(req.getParameter("inquiryNumber")));
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/InquiryAdminZeroOk.bo");
		return af;
	}

}
