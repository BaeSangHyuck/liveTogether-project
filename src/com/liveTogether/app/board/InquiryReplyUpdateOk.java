package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.board.vo.InquiryVO;

public class InquiryReplyUpdateOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		InquiryVO inquiry = new InquiryVO();
		
		
 		String inquiryResponse = req.getParameter("inquiryResponse");
		int inquiryNumber = Integer.parseInt(req.getParameter("inquiryNumber"));
		
		inquiry.setInquiryResponse(inquiryResponse);
		inquiry.setInquiryNumber(inquiryNumber);
		
		
		dao.updateIRStauts(inquiry);
		
		
		req.setAttribute("inquiryResponse", inquiry.getInquiryResponse());
		req.setAttribute("inquiryNumber", inquiry.getInquiryNumber());
		
		
		af.setRedirect(false);
		af.setPath("/board/InquiryDetailOk.bo");
		return af;
	}

}
