package kr.ac.shu.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static {
		//mysql 8.x 버전사용 드라이버 로드
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 데이터베이스 연결 설정 
	 * @return 연결 설정된 Connection 객체
	 */
	public static Connection openConnection() {
		Connection con  = null;
		
		try {
			//호스트, mysql 포트, 데이터베이스명
			String url = "jdbc:mysql://localhost:3306/capstone?serverTimezone=UTC";
			String id = "capstone";
			String passwd = "1234";
			con = DriverManager.getConnection(url, id, passwd);
			
			System.out.println("데이터베이스 연결 성공!!!");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	/**
	 * 데이터베이스 연결 종료
	 * @param con : 종료하고자 하는 Connection 객체
	 */
	public static void closeConnection(Connection con) {
		if(con != null) {
			
			try {
				con.close();
				System.out.println("데이터베이스 종료 성공!!!");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}










