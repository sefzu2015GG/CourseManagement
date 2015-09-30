package com.fzu.sqlutils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseSqlUtils {

	public static void main(String[] arg0) {
		CourseSqlUtils courseSqlUtils = new CourseSqlUtils("test1");
		List<CourseBean> list = courseSqlUtils.GetCousertable();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getCoursename());
		}
	}

	private String tableName = "";

	public CourseSqlUtils(String tableName) {
		System.out.println(tableName);
		this.tableName = tableName;
		CreateTable();
	}

	private void CreateTable() {
		String sql = "create table if not exists " + tableName
				+ "_courseInfo (" + "coursenum varchar(16) primary key,"
				+ "Grade varchar(8)," + "marjor varchar(64),"
				+ "peoplenum int default 0," + "coursename varchar(255),"
				+ "type varchar(32)," + "credit float(.1) default 0,"
				+ "period int default 0," + "testperiod int default 0,"
				+ "fuckcomputerperiod int default 0" + ");";
		SqlHelper.escuteUpdate(sql, null);
	}

	public int insert(List<CourseBean> data) {
		String sql = "insert into " + tableName
				+ "_courseInfo (coursenum,Grade,marjor,peoplenum,coursename,"
				+ "type,credit,period,testperiod,fuckcomputerperiod)"
				+ "values(?,?,?,?,?,?,?,?,?,?)";
		Object params[][] = new Object[data.size()][10];
		for (int i = 0; i < data.size(); i++) {
			CourseBean bean = data.get(i);
			params[i][0] = bean.getCoursenum();
			params[i][1] = bean.getGrade();
			params[i][2] = bean.getMajor();
			params[i][3] = bean.getPeoplenum();
			params[i][4] = bean.getCoursename();
			params[i][5] = bean.getType();
			params[i][6] = bean.getCredit();
			params[i][7] = bean.getPeriod();
			params[i][8] = bean.getTestperiod();
			params[i][9] = bean.getFuckcomputerperiod();
		}
		SqlHelper.excuteUpdateMultiParams(sql, params);
		return -1;
	}

	public List<CourseBean> GetCousers() {
		String sql = "select * from " + tableName + "_courseInfo";
		System.out.println(sql);
		List<CourseBean> res = new ArrayList<CourseBean>();
		ResultSet resultSet = SqlHelper.executeQuery(sql, null);
		try {
			if (resultSet != null){
				
				while (resultSet.next()) {
					CourseBean bean = new CourseBean();
					bean.setCoursenum(resultSet.getString(1));
					bean.setGrade(resultSet.getString(2));
					bean.setMajor(resultSet.getString(3));
					bean.setPeoplenum(Integer.parseInt(resultSet.getString(4)));
					bean.setCoursename(resultSet.getString(5));
					bean.setType(resultSet.getString(6));
					bean.setCredit(Float.parseFloat(resultSet.getString(7)));
					bean.setPeriod(Integer.parseInt(resultSet.getString(8)));
					bean.setTestperiod(Integer.parseInt(resultSet.getString(9)));
					bean.setFuckcomputerperiod(Integer.parseInt(resultSet
							.getString(10)));
					res.add(bean);
				}
			}else{
				System.out.println("result is null!!!!!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
<<<<<<< HEAD
			SqlHelper.close();
=======
			
>>>>>>> b59dc1f50a8c3b0709f9ef484b18bebdedb37b09
		}
		return res;
	}

	public List<CourseBean> GetCousertable() {

		ChoseSqlUtils choseSqlUtils = new  ChoseSqlUtils(tableName);
		List<ChoseBean> choseList = choseSqlUtils.GetChose();
		List<CourseBean> courseList = GetCousers();
		for (int i = 0; i < choseList.size(); i++) {
			ChoseBean cbean = choseList.get(i);
			for (int j = 0; j < courseList.size(); j++) {
				CourseBean cobean = courseList.get(j);
				if (cbean.getCoursenum().equalsIgnoreCase(
						cobean.getCoursename())) {
					cobean.addWeektime(cbean.getWeektime());
					cobean.addTeachername(cbean.getTeachername());
					cobean.addRemark(cbean.getRemark());
				}

			}
		}

		return courseList;
	}

}
