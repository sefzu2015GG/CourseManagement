package com.fzu.sqlutils;

import java.io.FileInputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class SqlHelper {

	private static Connection connection = null;
	private static PreparedStatement preparedStatement = null;
	// private static ResultSet;
	private static ResultSet resultSet = null;
	private static CallableStatement callableStatement = null;
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/curvar?useUnicode=true&characterEncoding=UTF-8";
	private static String uerName = "root";
	private static String passWord = "root";

	private static Properties properties = null;
	private static FileInputStream fileInputStream = null;

	// public static Connection getCon() {
	//
	// return connection;
	// }

	public static PreparedStatement getPreparedStatement() {
		return preparedStatement;
	}

	public static ResultSet getResultSet() {
		return resultSet;
	}

	public static CallableStatement getCallableStatement() {
		return callableStatement;
	}

	/**
	 * 初始化Mysql连接
	 */
	static {

		try {
//			fileInputStream = new FileInputStream("file.properties");
//			properties = new Properties();
//			properties.load(fileInputStream);
//			driver = properties.getProperty("driver");
//			url = properties.getProperty("url");
//			uerName = properties.getProperty("username");
//			passWord = properties.getProperty("password");

			Class.forName(driver);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if (fileInputStream != null) {
				try {
					fileInputStream.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			fileInputStream = null;
		}

	}

	public static Connection getConnection() {

		try {
			connection = DriverManager.getConnection(url, uerName, passWord);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return connection;

	}

	/**
	 * 多条sql处理
	 * 
	 * @param sql
	 * @param parmameters
	 */
	public static void excuteUpdateMultiParams(String[] sql,
			Object[][] parmameters) {
		try {
			connection = getConnection();
			connection.setAutoCommit(false);

			for (int i = 0; i < sql.length; i++) {
				preparedStatement = connection.prepareStatement(sql[i]);
				for (int j = 0; j < parmameters[i].length; j++) {
					preparedStatement.setObject(j + 1, parmameters[i][j]);
				}
				preparedStatement.executeUpdate();
			}
			connection.commit();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

			try {
				connection.rollback();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
			// throw new RuntimeErrorException(null, e.getMessage());
		} finally {
			close();
			// close(resultSet, preparedStatement, connection);
		}
	}

	/**
	 * 单条sql多参数处理
	 * 
	 * @param sql
	 * @param parmameters
	 */
	public static void excuteUpdateMultiParams(String sql,
			Object[][] parmameters) {
		try {
			connection = getConnection();
			connection.setAutoCommit(false);

			for (int i = 0; i < parmameters.length; i++) {
				preparedStatement = connection.prepareStatement(sql);
				for (int j = 0; j < parmameters[i].length; j++) {
					preparedStatement.setObject(j + 1, parmameters[i][j]);
				}
				preparedStatement.executeUpdate();
			}
			connection.commit();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

			try {
				connection.rollback();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
			// throw new RuntimeErrorException(null, e.getMessage());
		} finally {
			close();
			// close(resultSet, preparedStatement, connection);
		}
	}

	/**
	 * update,insert,delete等
	 * 
	 * @param sql
	 * @param parameters
	 */
	public static void escuteUpdate(String sql, Object[] parameters) {

		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);

			if (parameters != null) {
				for (int i = 0; i < parameters.length; i++) {
					preparedStatement.setObject(i + 1, parameters[i]);
				}
			}
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			close();
			// close(resultSet, preparedStatement, connection);
		}

	}

	public static ResultSet executeQuery(String sql, Object[] parameters) {
		try {
			connection = getConnection();
			System.out.println("connection status is = "+connection.isClosed());
			preparedStatement = connection.prepareStatement(sql);
			if (parameters != null) {
				for (int i = 0; i < parameters.length; i++) {
					preparedStatement.setObject(i + 1, parameters[i]);
				}
			}
			resultSet = preparedStatement.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		if(resultSet==null){			
			System.out.println("result is null");
		}else{
			System.out.println("result not null");
		}
		return resultSet;

	}

	/**
	 * 储存过程
	 * 
	 * @param sql
	 * @param parameters
	 */

	public static void callProc(String sql, Object[] parameters) {
		try {
			connection = getConnection();
			callableStatement = connection.prepareCall(sql);
			// ��ֵ
			if (parameters != null) {
				for (int i = 0; i < parameters.length; i++)
					callableStatement.setObject(i + 1, parameters[i]);
			}
			callableStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		} finally {
			// �ر���Դ
			closeproc();
			// close(resultSet, callableStatement, connection);
		}
	}

	/**
	 * @param sql
	 * @param inparameters
	 * @return
	 */
	public static ResultSet callProcInput(String sql, Object[] inparameters) {
		try {
			connection = getConnection();
			callableStatement = connection.prepareCall(sql);
			if (inparameters != null)
				for (int i = 0; i < inparameters.length; i++)
					callableStatement.setObject(i + 1, inparameters[i]);
			callableStatement.execute();
			resultSet = callableStatement.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		} finally {
			// 在由该方法调用者在使用完result之后关闭
		}
		return resultSet;
	}

	/**
	 * @param sql
	 * @param outparameters
	 * @return
	 */
	public static ResultSet callProcOutput(String sql, Integer[] outparameters) {
		try {
			connection = getConnection();
			callableStatement = connection.prepareCall(sql);
			// ��out����ֵ
			if (outparameters != null)
				for (int i = 0; i < outparameters.length; i++)
					callableStatement.registerOutParameter(i + 1,
							outparameters[i]);
			callableStatement.execute();
			resultSet = callableStatement.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		} finally {

		}
		return resultSet;
	}

	public static void close() {
		close(resultSet, preparedStatement, connection);
	}

	public static void closeproc() {
		close(resultSet, callableStatement, connection);
	}

	public static void close(ResultSet rs, Statement ps, Connection conn) {
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		rs = null;
		if (ps != null)
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		ps = null;
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		conn = null;
	}
}
