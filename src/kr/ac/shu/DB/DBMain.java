package kr.ac.shu.DB;

import java.sql.Connection;

public class DBMain {

	public static void main(String[] args) {
		
		Connection con = DBConnection.openConnection();
		DBConnection.closeConnection(con);

	}

}
