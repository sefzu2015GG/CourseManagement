package com.fzu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fzu.sqlutils.CourseBean;
import com.fzu.sqlutils.CourseSqlUtils;

public class CourseTableServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
		String tablename = (String) request.getAttribute("tablename");
		CourseSqlUtils courseSqlUtils = new CourseSqlUtils(tablename);
		List<CourseBean> list = courseSqlUtils.GetCousertable();
		
		request.setAttribute("coursetable",list);
		//response.sendRedirect("jsp/welcome.jsp");
		RequestDispatcher rd=request.getRequestDispatcher("courseshow.jsp");
		rd.forward(request,response);

		
//		for(CourseBean bean :list){
//			out.println(bean.getCoursename()+"</br>");
//			//System.out.println(bean.getCoursename());
//		}
//		out.flush();
//		out.close();
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
