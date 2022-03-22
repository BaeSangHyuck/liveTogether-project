package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberCheckinOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MemberDAO dao = new MemberDAO();
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("memberId");
		ActionForward af = new ActionForward();
		
		
		dao.updateStMypageSecond(memberId);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/member/MemberMypageTour.me");
		
		return af;
	}

}