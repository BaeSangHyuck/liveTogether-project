package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.board.vo.InquiryVO;

public class InquiryDetailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		HttpSession session = req.getSession();
		
		int inquiryNumber = Integer.parseInt(req.getParameter("inquiryNumber"));
		String memberType = (String) session.getAttribute("memberType");
		
		InquiryVO vo = dao.inquiryDetail(inquiryNumber);
		req.setAttribute("inquiry", vo);
		req.setAttribute("memberType", memberType);
		
		af.setRedirect(false);
		af.setPath("/admin/adminInquiryDetail.jsp");
		return af;
	}

}
