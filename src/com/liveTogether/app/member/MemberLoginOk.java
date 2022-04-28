package com.liveTogether.app.member;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

public class MemberLoginOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, String> loginMap = new HashMap<>();
		MemberDAO dao = new MemberDAO();
		MemberVO vo= new MemberVO();
		String memberType=null;
		String memberId = null; 
		String memberName=null;
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();

		loginMap.put("memberId", req.getParameter("memberId"));
		loginMap.put("memberPw", Base64.getEncoder().encodeToString(req.getParameter("memberPw").getBytes()));
		
		vo = dao.login(loginMap);
		if(vo == null) { //로그인 실패
			af.setRedirect(false);
			af.setPath("/member/MemberLogin.me?code=" + memberId);
		}else {//로그인 성공			
			memberId = vo.getMemberId();
			if(dao.findStatus(memberId) != 0) {
				af.setRedirect(false);
				af.setPath("/member/MemberLogin.me?access=" + memberId);
			}else {	
			memberType=vo.getMemberType();
			memberName=vo.getMemberName();
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberType", memberType);
			session.setAttribute("memberName", memberName);
			af.setRedirect(true);
			af.setPath(req.getContextPath() + "/member/Main.me");
			}
		}
		
		return af;
	}

}
