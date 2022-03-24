package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class HostQuestionOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		MemberDAO dao = new MemberDAO();
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("memberId");
		
		req.setAttribute("inquiryList", dao.getQuestion(memberId));
		
		af.setRedirect(false);
		af.setPath("/member/hostquestion.jsp");
		return af;
	}

}
