package com.liveTogether.app.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

public class MemberJoinOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		
		
		member.setMemberId(req.getParameter("memberId"));
		member.setMemberPw(Base64.getEncoder().encodeToString(req.getParameter("memberPw").getBytes()));
		member.setMemberName(req.getParameter("memberName"));
		member.setMemberNickname(req.getParameter("memberNickname"));
		member.setMemberPhone(req.getParameter("memberPhone"));
		member.setMemberGender(req.getParameter("memberGender"));
		member.setMemberProfile(req.getParameter("memberProfile"));
		member.setMemberType(req.getParameter("memberType"));
		
		System.out.println(req.getParameter("memberType"));
		
		
		dao.join(member);
		
		af.setRedirect(true);
		//redirect로 전송할 때 contextPath가 사라지기 때문에
		//미리 붙여놓고 전송한다.
		af.setPath(req.getContextPath() + "/member/login.jsp");
		
		return af;
	}

}
