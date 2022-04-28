package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;

public class InquiryOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("memberId");
		
		req.setAttribute("memberPhone", dao.inquiryData(memberId));
		req.setAttribute("memberId", memberId);
		
		af.setRedirect(false);
		af.setPath("/board/inquiry.jsp");
		
		return af;
	}

}
