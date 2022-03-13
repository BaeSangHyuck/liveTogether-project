package com.liveTogether.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.ActionForward;

public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		switch(command) {
		case "/board/BoardListOk.bo":
			af = new BoardListOk().execute(req, resp);
			break;
		case "/board/BoardWrite.bo":
			af = new BoardWrite().execute(req, resp);
			break;
		case "/board/BoardWriteOk.bo":
			af = new BoardWriteOk().execute(req, resp);
			break;
		case "/board/BoardDetailOk.bo":
			af = new BoardDetailOk().execute(req, resp);
			break;
		case "/board/BoardDeleteOk.bo":
			af = new BoardDeleteOk().execute(req, resp);
			break;
		case "/board/BoardUpdateOk.bo":
			af = new BoardUpdateOk().execute(req, resp);
			break;
		case "/board/BoardUpdate.bo":
			af = new BoardUpdate().execute(req, resp);
			break;
		}
		
		//분기 별 결과를 af에 담았다면 여기로 내려온다.
		
		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
	}
}















