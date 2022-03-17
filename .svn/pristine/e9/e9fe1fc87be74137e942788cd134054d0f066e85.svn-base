package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class BoardWrite implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		
		String memberId=(String) session.getAttribute("memberId");
		
		req.setAttribute("memberId", memberId);
		
		af.setRedirect(false);
		af.setPath("/board/noticeWrite.jsp");
		
		return af;
	}
}