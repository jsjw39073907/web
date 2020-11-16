<%@page import="kr.ac.shu.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.ac.shu.DAO.AddressDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 중복확인 -->
<%
	//배포서버, 웹서버 설정 구축
	request.setCharacterEncoding("utf-8");	


	String nickname = request.getParameter("nickname");
	AddressDAO dao = AddressDAO.getInstance();
	boolean result = dao.confirm(nickname);
	
	
	if(result){ %>
		<center>
		<br /><br />
		<h4>이미 사용중인 닉네임입니다.</h4>
		</center>
	<%}else{ %>
		<center>
		<br /><br />
		<h4>입력하신 <%=nickname %>는 사용하실 수 있는 닉네임입니다.</h4>
		</center>
	<% } %>