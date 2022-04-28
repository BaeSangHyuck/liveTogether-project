package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;
import com.liveTogether.app.member.vo.MyRoomGuestDTO;
import com.liveTogether.app.member.vo.RoomGuestDTO;

public class MemberMypageTour implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af =  new ActionForward();
		MemberDAO dao = new MemberDAO();		
		HttpSession session = req.getSession();
		String memberId= ((String)session.getAttribute("memberId"));
		
		
		req.setAttribute("total", dao.countTour(memberId));
		req.setAttribute("myTourHouse", dao.myTourHouse(memberId));
		req.setAttribute("myTourHouseRoom", dao.myTourHouseRoom(memberId));
		
		
		af.setRedirect(false);
		//redirect로 전송할 때 contextPath가 사라지기 때문에
		//미리 붙여놓고 전송한다.
		af.setPath("/member/mypagetour.jsp");
		
		
		return af;
	}


}
