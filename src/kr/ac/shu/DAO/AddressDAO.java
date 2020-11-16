package kr.ac.shu.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.ac.shu.DTO.AddressDTO;

	public class AddressDAO {
	private Connection con;


	public AddressDAO(Connection con) {
	this.con = con;
	}
	
	private static AddressDAO ee = new AddressDAO();
	public static AddressDAO getInstance() {
		return ee;
	}
	private AddressDAO() {
		
	}
	
	
	public boolean confirm(String nickname) {
		boolean result = false;
		String sql = "select nickname from capstone where nickname=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, nickname);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	public void insertData(AddressDTO addr1) {
		//System.out.println("주소정보 출력 : "+ addr1.toString());
		
		String sql = "insert into capstone values(?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, addr1.getnickname());
			pstmt.setString(2, addr1.getemail());
			pstmt.setString(3, addr1.getpassword());
			pstmt.setString(4, addr1.getnumber());
			pstmt.setString(5, addr1.getaddr());			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
	