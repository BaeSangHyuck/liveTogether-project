package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.RoomGuestVO;

public class MemberReviewListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		MemberDAO dao = new MemberDAO();		
		HttpSession session = req.getSession();
		RoomGuestVO reviews  = new RoomGuestVO();
		String memberId= ((String)session.getAttribute("memberId"));
		PrintWriter out = resp.getWriter();
		
		reviews=dao.reviewList(memberId);
		
		
		JSONObject review = new JSONObject();
		review.put("roomName", reviews.getRoomName());
		review.put("memberId", reviews.getMemberId());
		review.put("houseNumber", reviews.getHouseNumber());
		review.put("star", reviews.getStar());
		review.put("review", reviews.getReview());
		review.put("status", reviews.getStatus());
		
		out.print(review);
		out.close();

		return null;
	}


}
