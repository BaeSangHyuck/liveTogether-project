package com.liveTogether.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;

public class MemberFindIdOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, String> findIdMap = new HashMap<>();
		MemberDAO dao = new MemberDAO();
		String memberId=null;
		PrintWriter out = resp.getWriter();
		

		findIdMap.put("memberName", req.getParameter("memberName"));
		findIdMap.put("memberPhone", req.getParameter("memberPhone"));
		
		memberId=dao.findId(findIdMap);
		
		out.print(memberId);
		out.close();

		return null;
	}

}
