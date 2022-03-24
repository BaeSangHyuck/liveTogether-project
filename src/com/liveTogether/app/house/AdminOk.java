package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.member.dao.MemberDAO;

public class AdminOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO hDao = new HouseDAO();
		MemberDAO mDao = new MemberDAO();
		BoardDAO bDao = new BoardDAO();
		req.setAttribute("boardCount", bDao.boardCount());
		req.setAttribute("houseCount", hDao.houseCount());
		req.setAttribute("waitCount", hDao.waitCount());
		req.setAttribute("inquiryCount", hDao.inquiryTotalCount());
		req.setAttribute("inquiryZeroCount", bDao.getInquiryCountZero());
		req.setAttribute("inquiryOneCount", bDao.getInquiryCountOne());
		
		req.setAttribute("nMemberCount", mDao.nMemberCount());
		req.setAttribute("hMemberCount", mDao.hMemberCount());
		req.setAttribute("tourCount", hDao.tourCount());
		req.setAttribute("waitResidentCount", hDao.waitResidentCount());
		req.setAttribute("residentCount", hDao.residentCount());
		req.setAttribute("roomCount", hDao.roomCount());
		
		req.setAttribute("fiveReviewCount", hDao.fiveReviewCount());
		req.setAttribute("fourReviewCount", hDao.fourReviewCount());
		req.setAttribute("threeReviewCount", hDao.threeReviewCount());
		req.setAttribute("twoReviewCount", hDao.twoReviewCount());
		req.setAttribute("oneReviewCount", hDao.oneReviewCount());
		req.setAttribute("reviewCount", hDao.reviewCount());

		
		
		af.setRedirect(false);
		af.setPath("/admin/admin.jsp");
		return af;
	}
	
}
