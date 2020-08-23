package com.practice.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CookieEx/loginCon")
public class LoginCon extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String mId = request.getParameter("mId");
		String mPw = request.getParameter("mPw");
		out.print("mId : " + mId);
		out.print("mPw : " + mPw);
		
		
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		for(Cookie c : cookies) {
			if(c.getName().equals("memberId")) {
				cookie = c;
			}
		}
		
		if(cookie == null) {
			cookie = new Cookie("memberId", mId);
		}
		
		response.addCookie(cookie);
		cookie.setMaxAge(60 * 60);
		
		response.sendRedirect("loginOk.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
