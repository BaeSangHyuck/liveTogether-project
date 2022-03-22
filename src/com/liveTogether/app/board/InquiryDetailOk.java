package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.board.vo.InquiryVO;

public class InquiryDetailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		
		InquiryVO vo = dao.inquiryDetail(Integer.parseInt(req.getParameter("inquiryNumber")));
		req.setAttribute("inquiry", vo);
		
		af.setRedirect(false);
		af.setPath("/admin/adminInquiryDetail.jsp");
		return af;
	}

}
