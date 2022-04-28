package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;

public class BoardUpdate implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int boardNumber = Integer.parseInt(req.getParameter("boardNumber"));
		ActionForward af = new ActionForward();
		
		BoardDAO dao = new BoardDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		req.setAttribute("board", dao.selectDetail(boardNumber));
		
		af.setRedirect(false);
		af.setPath("/board/noticeUpdate.jsp");
		
		return af;
	}
}
