package com.liveTogether.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.ActionForward;

public class MemberFrontController extends HttpServlet {
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

		if (command.equals("/member/MemberCheckIdOk.me")) {
			new MemberCheckIdOk().execute(req, resp);

		} else if (command.equals("/member/MemberLoginOk.me")) {
			af = new MemberLoginOk().execute(req, resp);
		} else if (command.equals("/member/MemberJoinOk.me")) {
			af = new MemberJoinOk().execute(req, resp);
		} else if (command.equals("/member/MemberFindIdOk.me")) {
			af = new MemberFindIdOk().execute(req, resp);
		} else if (command.equals("/member/MemberFindPwOk.me")) {
			af = new MemberFindPwOk().execute(req, resp);
		} else if (command.equals("/member/MemberFindPwSMSOk.me")) {
			af = new MemberFindPwSMSOk().execute(req, resp);
		} else if (command.equals("/member/MemberLogoutOk.me")) {
			af = new MemberLogoutOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageOk.me")) {
			af = new MemberMypageOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageUpdate.me")) {
			af = new MemberMypageUpdate().execute(req, resp);
		} else if (command.equals("/member/MemberMypageUpdateOk.me")) {
			af = new MemberMypageUpdateOk().execute(req, resp);
		} else if (command.equals("/member/HostMemberListOk.me")) {
			af = new HostMemberListOk().execute(req, resp);
		} else if (command.equals("/member/HostMemberListOk.me")) {
			af = new HostMemberListOk().execute(req, resp);
		} else if (command.equals("/member/HostMyPageReadyOk.me")) {
			af = new HostMyPageReadyOk().execute(req, resp);
		} else if (command.equals("/member/HostMyPageTourOk.me")) {
			af = new HostMyPageTourOk().execute(req, resp);
		} else if (command.equals("/member/HostStatusFirstOk.me")) {
			af = new HostStatusFirstOk().execute(req, resp);
		} else if (command.equals("/member/HostStatusSecondOk.me")) {
			af = new HostStatusSecondOk().execute(req, resp);
		} else if (command.equals("/member/HostDeleteOk.me")) {
			af = new HostDeleteOk().execute(req, resp);
		} else if (command.equals("/member/MemberCheckPwOk.me")) {
			af = new MemberCheckPwOk().execute(req, resp);
		} else if (command.equals("/member/MemberDelete.me")) {
			af = new MemberDelete().execute(req, resp);
		} else if (command.equals("/member/MemberHostDelete.me")) {
			af = new MemberHostDelete().execute(req, resp);
		} else if (command.equals("/member/HostDeleteSecondOk.me")) {
			af = new HostDeleteSecondOk().execute(req, resp);
		} else if (command.equals("/member/HostMyPageCompleteOk.me")) {
			af = new HostMyPageCompleteOk().execute(req, resp);
		} else if (command.equals("/member/HostDeleteThirdOk.me")) {
			af = new HostDeleteThirdOk().execute(req, resp);
		} else if (command.equals("/member/HostStatusThirdOk.me")) {
			af = new HostStatusThirdOk().execute(req, resp);
		} else if (command.equals("/member/HostDeleteFourthOk.me")) {
			af = new HostDeleteFourthOk().execute(req, resp);
		} else if (command.equals("/member/HostRejectListOk.me")) {
			af = new HostRejectListOk().execute(req, resp);
		} else if (command.equals("/member/HostRestorationOk.me")) {
			af = new HostRestorationOk().execute(req, resp);
		} else if (command.equals("/member/HostRealDeleteOk.me")) {
			af = new HostRealDeleteOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageTourOk.me")) {
			af = new MemberMypageTourOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageStatusDeleteOk.me")) {
			af = new MemberMypageStatusDeleteOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageStatusSecondOk.me")) {
			af = new MemberMypageStatusSecondOk().execute(req, resp);
		} else if (command.equals("/member/MemberMypageTour.me")) {
			af = new MemberMypageTour().execute(req, resp);
		} else if (command.equals("/member/MemberMypageReviewOk.me")) {
			af = new MemberMypageReviewOk().execute(req, resp);
		} else if (command.equals("/member/MemberTourCancelOk.me")) {
			af = new MemberTourCancelOk().execute(req, resp);
		} else if (command.equals("/member/MemberCheckinOk.me")) {
			af = new MemberCheckinOk().execute(req, resp);
		} else if (command.equals("/member/Login.me")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/member/login.jsp");
		} else if (command.equals("/member/Join.me")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/member/join.jsp");
		} else if (command.equals("/member/HostMyPageOk.me")) {
			af = new HostMyPageOk().execute(req, resp);
		} else if (command.equals("/member/MemberReviewListOk.me")) {
			af = new MemberReviewListOk().execute(req, resp);
		} else if (command.equals("/member/HostMyPageLookOk.me")) {
			af = new HostMyPageLookOk().execute(req, resp);
		} else if (command.equals("/member/HostMyPageUpdateOk.me")) {
			af = new HostMyPageUpdateOk().execute(req, resp);
		} else if (command.equals("/member/MemberQuestionListOk.me")) {
			af = new MemberQuestionListOk().execute(req, resp);
		} else if (command.equals("/member/MemberReviewDeleteOk.me")) {
			af = new MemberReviewDeleteOk().execute(req, resp);
		} else if (command.equals("/member/MemberFindPwCountOk.me")) {
			af = new MemberFindPwCountOk().execute(req, resp);
		} else if (command.equals("/member/MemberLogin.me")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/member/login.jsp");
		} else if (command.equals("/member/Main.me")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/main/main.jsp");
		} else if (command.equals("/member/HostPageUpdateOk.me")) {
			af = new HostPageUpdateOk().execute(req, resp);
		} else if (command.equals("/member/HostQuestionOk.me")) {
			af = new HostQuestionOk().execute(req, resp);
		}
		if (af != null) {
			if (af.isRedirect()) {
				// redirect
				resp.sendRedirect(af.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}