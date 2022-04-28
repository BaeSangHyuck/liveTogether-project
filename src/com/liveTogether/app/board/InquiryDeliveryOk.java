package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.board.vo.InquiryVO;

public class InquiryDeliveryOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		InquiryVO inquiry = new InquiryVO();
		HttpSession session = req.getSession();
		
		String memberType = (String)session.getAttribute("memberType");
		String memberId = (String)session.getAttribute("memberId");
		String memberPhone = dao.inquiryData(memberId);
		String houseNumber = req.getParameter("houseNumber");
		String houseType = req.getParameter("houseType");
		String typeOption = req.getParameter("typeOption");
		String inquiryContent = req.getParameter("inquiryContent");
		
		inquiry.setMemberType(memberType);
		inquiry.setMemberId(memberId);
		inquiry.setMemberPhone(memberPhone);
		inquiry.setHouseNumber(houseNumber);
		inquiry.setHouseType(houseType);
		inquiry.setTypeOption(typeOption);
		inquiry.setInquiryContent(inquiryContent);
		
		dao.inquiryInsert(inquiry);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/member/Main.me");
		return af;
	}

}
