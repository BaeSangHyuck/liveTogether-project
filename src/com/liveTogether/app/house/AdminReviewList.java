package com.liveTogether.app.house;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MyRoomGuestDTO;

public class AdminReviewList implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward();
		MemberDAO mDao = new MemberDAO();
		
		List<MyRoomGuestDTO> reviewList = mDao.totalReviewList();
		
		
		req.setAttribute("reviewList", reviewList);
		
		af.setRedirect(false);
		af.setPath("/admin/adminReviewList.jsp");

		return af;
	}

}
