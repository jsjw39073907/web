<%@page import="kr.ac.shu.DTO.AddressDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no,
					  maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<title>로그인 화면</title>


</head>
<body>

		<form action="매장 보기.jsp">
			<table>	
				<div style="padding: 60px 100px 70px 350px;">
				 <img border="0" src="${pageContext.request.contextPath}\image\freeorder.png" width="280" height="80">
				</div>
			
				<tr>
					<td style="padding-left:395px"><input type="text" name="email" placeholder="이메일 아이디"  size="25"></td>
				<tr>
					
				<tr>
					<td style="padding-left:395px"><input type="password" name="password"placeholder="비밀번호"  size="25"></td>
				</tr>	
							
				<tr>
					<td style="padding-left:395px"><button type="submit" style="width:144pt; height:20pt;">로그인</button></td>
				</tr>
				
				<tr>
					<td style="padding-left:427px"><a href="">아이디/비밀번호 찾기</a></td>
				</tr>
				<tr>
					<td style="padding-left:350px">혹시, FreeORder가 처음이신가요?<a href="signup.jsp">회원가입</a></td>
				</tr>
			</table>
		</form>	
		
</body>
</html>
















