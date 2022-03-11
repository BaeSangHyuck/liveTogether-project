package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

public class MemberMypageOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		String memberId=(String) session.getAttribute("memberId");
		ActionForward af = new ActionForward();
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		
		req.setAttribute("member", dao.getInfo(memberId));
		
		af.setRedirect(false);
		af.setPath("/member/MemberMypageOk.me");
		
		return af;
	}

}