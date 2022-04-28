package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

public class HostPageUpdateOk implements Action{

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setCharacterEncoding("UTF-8");
      ActionForward af = new ActionForward();
      MemberVO member = new MemberVO();
      MemberDAO dao = new MemberDAO();
      HttpSession session = req.getSession();
      String memberId = (String) session.getAttribute("memberId");
      
      member.setMemberName(req.getParameter("memberName"));
      member.setMemberNickname(req.getParameter("memberNickname"));
      member.setMemberPhone(req.getParameter("memberPhone"));
      member.setMemberProfile(req.getParameter("memberProfile"));
      member.setMemberPw(req.getParameter("memberPw"));
      member.setMemberGender(req.getParameter("memberGender"));
      member.setMemberId(memberId);
      dao.updateInfo(member);
      
      af.setRedirect(true);
      af.setPath(req.getContextPath() + "/member/HostMyPageOk.me");
      return af;
   }

}