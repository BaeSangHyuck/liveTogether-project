package com.liveTogether.app.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberFindPwOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, String> findPwMap = new HashMap<>();
		MemberDAO dao = new MemberDAO();
		String memberPw=null;
		ActionForward af = new ActionForward();

		findPwMap.put("memberId", req.getParameter("memberId"));
		findPwMap.put("memberPhone", req.getParameter("memberPhone"));
		
		memberPw=dao.findId(findPwMap);
		
		req.setAttribute("memberPw", memberPw);
		
		af.setRedirect(false);
		af.setPath("/member/findPw.jsp");
		
		return af;
	}

}
