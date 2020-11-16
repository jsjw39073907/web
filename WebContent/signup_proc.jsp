<%@page import="kr.ac.shu.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.ac.shu.DTO.AddressDTO"%>
<%@page import="kr.ac.shu.DAO.AddressDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	AddressDTO data1 = new AddressDTO();
	data1.setnickname(request.getParameter("nickname"));
	data1.setemail(request.getParameter("email"));
	data1.setpassword(request.getParameter("password"));
	data1.setnumber(request.getParameter("number"));
	data1.setaddr(request.getParameter("addr"));
	//out.println("데이터 출력 : " + data1.toString());
	
	Connection con = DBConnection.openConnection();
	AddressDAO dao1 = new AddressDAO(con);
	dao1.insertData(data1);
	DBConnection.closeConnection(con);
	
	response.sendRedirect("login.jsp");
%>

