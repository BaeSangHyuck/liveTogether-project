package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class HostMyPageOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("memberId");
		ActionForward af = new ActionForward();
		MemberDAO dao = new MemberDAO();
		
		req.setAttribute("member", dao.getInfo(memberId));
		
		af.setRedirect(false);
		af.setPath("/member/hostmypage.jsp");
		
		return af;
	}

}
