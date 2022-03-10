package com.liveTogether.app.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberLoginOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, String> loginMap = new HashMap<>();
		MemberDAO dao = new MemberDAO();
		String memberId=null;
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();

		loginMap.put("memberId", req.getParameter("memberId"));
		loginMap.put("memberPw", req.getParameter("memberPw"));
		
		memberId = dao.login(loginMap);
		if(memberId == null) {//로그인 실패
			af.setRedirect(false);
			af.setPath("/member/MemberLogin.me?code=" + memberId);
		}else {//로그인 성공
			session.setAttribute("memberId", memberId);
			af.setRedirect(true);
			af.setPath(req.getContextPath() + "/board/BoardListOk.bo");
		}
		
		return af;
	}

}
