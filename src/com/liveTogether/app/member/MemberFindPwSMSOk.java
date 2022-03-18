package com.liveTogether.app.member;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.MemberVO;

import net.nurigo.java_sdk.api.Message;


import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class MemberFindPwSMSOk implements Action{    
         @Override
         public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
         req.setCharacterEncoding("UTF-8");

            PrintWriter out = resp.getWriter();
            JSONObject obj = new JSONObject();
            
            String memberPhone = req.getParameter("memberPhone");
            
                  //휴대폰 번호 인증
                  String api_key = "NCSTVTL58G2HYSHS"; // 상혁이꺼
                   String api_secret = "H3SGSZ3E4RKWIVXSUT9ZLDQOJSH08BOY"; // 상혁이꺼  ㅋ 
                   int code =(int)(Math.random()*(999999 - 100000) + 100000);
                   
                   
            /*       Message coolsms = new Message(api_key, api_secret);

                   // 4 params(to, from, type, text) are mandatory. must be filled
                   HashMap<String, String> params = new HashMap<String, String>();
                   params.put("to", memberPhone);
                   params.put("from", "01040625261");
                   System.out.println(memberPhone);
                   params.put("type", "SMS");
                   params.put("text", "귀하의 인증번호는 ["+ code +"] 입니다.");
                   params.put("app_version", "test app 2.2"); // application name and version

                   try {
                     JSONObject obj2 = (JSONObject) coolsms.send(params);
                     System.out.println(obj2.toString());
                   } catch (CoolsmsException e) {
                     System.out.println(e.getMessage());
                     System.out.println(e.getCode());
                   }*/
      
          
      
            out.print(code);
            out.close();
            
            return null;
         }
         
}