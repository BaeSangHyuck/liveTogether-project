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

public class MemberFindPwCountOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {	
		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		PrintWriter out = resp.getWriter();
		String memberId =req.getParameter("memberId");
		String memberPhone =req.getParameter("memberPhone");
		
		member.setMemberId(memberId);
		member.setMemberPhone(memberPhone);
		out.print(dao.findPwCount(member));
		out.close();
		
		return null;
	}

}
