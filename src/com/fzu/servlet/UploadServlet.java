package com.fzu.servlet;

import java.util.Date;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fzu.excelandmysql.EtoM;
<<<<<<< HEAD
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
=======

public class UploadServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dopost");
		
		
		InputStream fileSource = request.getInputStream();
		String tempFileName = "E:/tempFile";
		
		File tempFile = new File(tempFileName);
		
		FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
		
		byte b[] = new byte[1024];
		int n;
		while((n = fileSource.read(b))!=-1){
			fileOutputStream.write(b,0,n);
		}

		fileOutputStream.close();
		fileSource.close();
		
		RandomAccessFile randomFile = new RandomAccessFile(tempFile, "r");
		randomFile.readLine();
		String string = randomFile.readLine();
		String[] stringtemp = string.split("\"");
		string = stringtemp[stringtemp.length-1];
		//string 为源文件名
		
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String tablename = simpleDateFormat.format(new Date());
		String fileName = tablename+".xls";
		System.out.println("filename:" +fileName);
		
		randomFile.seek(0);
		long startPointtion = 0;
		int i = 1;
		while((n=randomFile.read())!=-1&&i<=4){
			if(n=='\n'){
				startPointtion = randomFile.getFilePointer();
				i++;
			}
		}
		startPointtion = randomFile.getFilePointer()-1;
		
		randomFile.seek(randomFile.length());
		long endPointtion = randomFile.getFilePointer();
		int j =1;
		while(endPointtion>=0&&j<=2){
			endPointtion--;
			randomFile.seek(endPointtion);
			if(randomFile.readByte()=='\n'){
				j++;
			}
			
		}
		endPointtion = endPointtion-1;
		
		
		String realPath = getServletContext().getRealPath("/") + "fileData";
		System.out.println("realPath = "+realPath);
		File fileupload = new File(realPath);
		if(!fileupload.exists()){
			fileupload.mkdir();
		}
		File saveFile = new File(realPath,fileName);
		RandomAccessFile randomAccessFile = new RandomAccessFile(saveFile,"rw");
		randomFile.seek(startPointtion);
		while(startPointtion < endPointtion){
			randomAccessFile.write(randomFile.readByte());
			startPointtion = randomFile.getFilePointer();
		}
		randomAccessFile.close();
		randomFile.close();
		tempFile.delete();
		
		System.out.println("success");
		EtoM etoM = new EtoM(realPath+"\\"+fileName, tablename);
		
		
		request.setAttribute("result", "succex");
		request.setAttribute("tablename",tablename);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/CourseTableServlet");
		dispatcher.forward(request, response);
		
		System.out.println("forward");
	}

>>>>>>> b59dc1f50a8c3b0709f9ef484b18bebdedb37b09
}
