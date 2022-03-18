package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

public class MemberFindPwOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		

		 member.setMemberPhone(req.getParameter("memberPhone"));
		 member.setMemberPw(req.getParameter("changePw"));
		
		 dao.updatePw(member);
		
		

		return null;
	}

}
