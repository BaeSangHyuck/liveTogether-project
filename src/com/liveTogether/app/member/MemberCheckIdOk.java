package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberCheckIdOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		String memberId = req.getParameter("memberId");
		MemberDAO dao = new MemberDAO();
		PrintWriter out = resp.getWriter();
		JSONObject obj = new JSONObject();
		
		if(dao.checkId(memberId)) {
			//아이디가 중복되었을 때
//			out.print("not-ok");
			obj.put("status", "not-ok");
		}else {
			//사용 가능한 아이디일 때
//			out.print("ok");
			obj.put("status", "ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		return null;
	}

}
