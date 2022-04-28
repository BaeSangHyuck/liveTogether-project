package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;
import com.liveTogether.app.member.vo.MyRoomGuestDTO;
import com.liveTogether.app.member.vo.RoomGuestDTO;
import com.liveTogether.app.member.vo.RoomGuestVO;

public class MemberQuestionListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		MemberDAO dao = new MemberDAO();
		HttpSession session = req.getSession();
		String memberId=(String) session.getAttribute("memberId");
		
		req.setAttribute("inquiryList", dao.getQuestion(memberId));
		
		af.setRedirect(false);
		af.setPath("/member/mypagequestion.jsp");

		return af;
	}
	}


