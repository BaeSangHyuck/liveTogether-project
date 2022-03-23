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
		case "/board/BoardSearchOk.bo":
			af = new BoardSearchOk().execute(req, resp);
			break;
		case "/board/info.bo":
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/board/info.jsp");
			break;
		case "/board/InquiryOk.bo":
			af = new InquiryOk().execute(req, resp);
			break;
		case "/board/InquiryDeliveryOk.bo":
			af = new InquiryDeliveryOk().execute(req, resp);
			break;
		case "/board/InquiryAdminOk.bo":
			af = new InquiryAdminOk().execute(req, resp);
			break;
		case "/board/InquiryAdminCheckDeleteOk.bo":
			af = new InquiryAdminCheckDeleteOk().execute(req, resp);
			break;
		case "/board/InquiryDeleteOk.bo":
			af = new InquiryDeleteOk().execute(req, resp);
			break;
		case "/board/InquiryDetailOk.bo":
			af = new InquiryDetailOk().execute(req, resp);
			break;
		case "/board/terms.bo":
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/board/terms.jsp");
			break;
		case "/board/policy.bo":
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/board/policy.jsp");
			break;
		case "/board/InquiryReplyUpdateOk.bo":
	         af = new InquiryReplyUpdateOk().execute(req, resp);
	         break;
	      case "/board/InquiryAdminZeroOk.bo":
	         af = new InquiryAdminZeroOk().execute(req, resp);
	         break;
	      case "/board/InquiryAdminCheckDeleteZeroOk.bo":
	         af = new InquiryAdminCheckDeleteZeroOk().execute(req, resp);
	         break;
	      case "/board/InquiryDeleteZeroOk.bo":
	         af = new InquiryDeleteZeroOk().execute(req, resp);
	         break;
	      case "/board/InquiryAdminOneOk.bo":
	         af = new InquiryAdminOneOk().execute(req, resp);
	         break;
	      case "/board/InquiryAdminCheckDeleteOneOk.bo":
	         af = new InquiryAdminCheckDeleteOneOk().execute(req, resp);
	         break;
	      case "/board/InquiryDeleteOneOk.bo":
	         af = new InquiryDeleteOneOk().execute(req, resp);
	         break;
	      case "/board/InquiryReplyDeleteOk.bo":
	         af = new InquiryReplyDeleteOk().execute(req, resp);
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















