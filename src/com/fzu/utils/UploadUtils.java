package com.fzu.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;

import com.fzu.excelandmysql.EtoM;

public class UploadUtils {

	
	public static void UploadFile(String realPath,String tablename,InputStream fileSource) throws Exception{
		
		
		String fileName = tablename+".xls";
		
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
			
		
	}
	
}
