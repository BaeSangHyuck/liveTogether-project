package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberHostDelete implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();
		MemberDAO dao = new MemberDAO();
		String memberId = (String)session.getAttribute("memberId");
		int houseNumber = 0;
		houseNumber = dao.hostDeleteZero(memberId);
		
		if(houseNumber != 0) {
			dao.hostDeleteOne(houseNumber);
			dao.hostDeleteTwo(houseNumber);
			dao.hostDeleteThree(houseNumber);
			dao.hostDeleteFour(houseNumber);		
		}
		
		dao.updateM(memberId);
		
		session.invalidate();
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/house/MainBannerOk.ho");
		
		return af;
	}


}
