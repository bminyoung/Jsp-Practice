package com.practice;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mSignUp")
public class MemSignUp extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" -- doGet() -- ");
		
		String mName = request.getParameter("mName");
		String mPass = request.getParameter("mPassword");
		String mGender = request.getParameter("mGender");
		String[] mHobbys = request.getParameterValues("mHobby");
		String mResidence = request.getParameter("mResidence");
		
		System.out.println("mName : " + mName);
		System.out.println("mPass : " + mPass);
		System.out.println("mGender : " + mGender);
		System.out.println("mHobbys : " + Arrays.toString(mHobbys));
		System.out.println("mResidence : " + mResidence);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
