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
import com.liveTogether.app.member.vo.RoomGuestDTO;

public class MemberMypageTourOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		MemberDAO dao = new MemberDAO();
		RoomGuestDTO dto = new RoomGuestDTO();
		
		//멤버아이디
		 dto.setMemberId((String) session.getAttribute("memberId"));
		//룸 이름
		dto.setRoomName(req.getParameter("roomName"));
		//하우스넘버
		dto.setHouseNumber(Integer.parseInt(req.getParameter("houseNumber")));
		
		//중복되면 안되도록
		if(dao.countTour((String) session.getAttribute("memberId"))==0) {			
			dao.insertTour(dto);
		}
	
		
		
		return null;
		
		//스테이터스 바꿔주는 다오 추가 o
		//방의 정보를 가져와야함 --> DTO 만들어야하나 -- 안만들어두댐 o
		//투어신청 취소누르면 취소되는 js만들어야댐
	}

}
