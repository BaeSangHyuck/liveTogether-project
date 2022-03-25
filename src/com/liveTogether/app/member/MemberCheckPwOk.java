package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberCheckPwOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		
		String memberId = (String)session.getAttribute("memberId");
		String memberPw = Base64.getEncoder().encodeToString(req.getParameter("memberPw").getBytes());
		MemberDAO dao = new MemberDAO();
		
		HashMap<String, String> member = new HashMap<>();
		member.put("memberId", memberId);
		member.put("memberPw", memberPw);
		JSONObject obj = new JSONObject();
		PrintWriter out = resp.getWriter();
		
		if(dao.checkPw(member)) {
			obj.put("status", "ok");
		}else {
			obj.put("status", "not-ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		
		
		return null;
	}

}
