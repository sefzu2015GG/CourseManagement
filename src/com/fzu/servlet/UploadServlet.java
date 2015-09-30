package com.fzu.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fzu.utils.UploadUtils;

public class UploadServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dopost");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyyMMddHHmmss");
		String tablename = simpleDateFormat.format(new Date());
		try {
			UploadUtils.UploadFile(getServletContext().getRealPath("/")
					+ "fileData", tablename, request.getInputStream());
			request.setAttribute("result", "succex");
			request.setAttribute("tablename", tablename);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/CourseTableServlet");
			dispatcher.forward(request, response);
			System.out.println("forward");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
