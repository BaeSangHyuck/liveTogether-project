package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.ActionForward;

public class HouseFrontController extends HttpServlet {
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

		switch (command) {
		case "/house/HouseRegisterOk.ho":
			af = new HouseRegisterOk().execute(req, resp);
			break;
		case "/house/HouseListOk.ho":
			af = new HouseListOk().execute(req, resp);
			break;
		case "/house/HouseFindRoom.ho":
			af = new HouseFindRoom().execute(req, resp);
			break;
		case "/house/AdminDetailOk.ho":
			af = new AdminDetailOk().execute(req, resp);
			break;
		case "/house/AdminDeleteOk.ho":
			af = new AdminDeleteOk().execute(req, resp);
			break;
		case "/house/AdminOk.ho":
			af = new AdminOk().execute(req, resp);
			break;
		case "/house/HouseDetailOk.ho":
			af = new HouseDetailOk().execute(req, resp);
			break;
		case "/house/HousePositionOk.ho":
			af = new HousePositionOk().execute(req, resp);
			break;
		case "/house/FindRoom.ho":
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/house/findRoom.jsp");
			break;
		
		}

		// 분기 별 결과를 af에 담았다면 여기로 내려온다.

		if (af != null) {// af가 null이 아니라면
			if (af.isRedirect()) {// redirect 방식이라면
				resp.sendRedirect(af.getPath());// redirect로 전송

			} else {// forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);// forward로 전송
			}
		}
	}
}
