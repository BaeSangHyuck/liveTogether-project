package com.liveTogether.app.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;

public class InquiryAdminCheckDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		BoardDAO dao = new BoardDAO();
		ArrayList<Integer> alInquiryNumber = new ArrayList<>();
		String[] StringInquiryNumber = req.getParameterValues("term1");
		
		for (int i = 0; i < StringInquiryNumber.length; i++) {
			int inquiryNumber = Integer.parseInt(StringInquiryNumber[i]);
			alInquiryNumber.add(inquiryNumber);
		}
		
		for (int i = 0; i < alInquiryNumber.size(); i++) {
			dao.inquiryDelete(alInquiryNumber.get(i));
		}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/InquiryAdminOk.bo");
		
		return af;
	}

}
