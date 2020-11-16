<%@page import="kr.ac.shu.DTO.AddressDTO"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.function.Function"%>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
<script>
	function background(it) {
		tr = it.parentNode.parentNode;
		tr.style.backgroundColor = (it.checked) ? "#dcdcdc" : "white";
	}

	function check() {
		if (!document.joinform.nickname.value) {
			alert("닉네임을 입력하세요");
			return false;
		}
		if (!document.joinform.email.value) {
			alert("이메일을 입력하세요");
			return false;
		}
		if (!document.joinform.password.value) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		if (!document.joinform.number.value) {
			alert("휴대폰 번호를 입력하세요.");
			return false;
		} else {
			alert("회원가입에 성공하셨습니다. 로그인을 하세요.");
			return true;
		}

	}

	function confirmNickname() {
		if (document.joinform.nickname.value == "") {
			alert("닉네임을 입력하세요");
			return;
		}
		url = "confirmNickname.jsp?nickname="
				+ document.joinform.nickname.value;
		window
				.open(
						url,
						"confirmNickname",
						"toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400,height=200");
	}
</script>
</head>
<body>

	<h1>회원가입</h1>
	<form name="joinform" onsubmit="return check()" method="post"
		action="signup_proc.jsp">
		<table>
			<tr>
				<td><b>닉네임</b></td>
			</tr>
			<tr>
				<td><input type="text" name="nickname" maxlength="10"
					placeholder="2-10자로 입력해주세요" size="40" style="height: 35px;"></td>
			</tr>
			<tr>
				<td style="padding-left: 197px"><input type="button"
					value="중복확인" onclick="confirmNickname(this.form)"></td>
			</tr>

			<tr>
				<td><b>이메일 아이디<b></td>
			</tr>
			<tr>
				<td><input type="text" name="email"
					placeholder="FreeOrder@gmail.com" size="40" style="height: 35px;"></td>
			</tr>

			<tr>
				<td><b>비밀번호<b></td>
			</tr>
			<tr>
				<td><input type="text" name="password" maxlength="20"
					placeholder="10~20자로 입력해주세요" size="40" style="height: 35px;"></td>
			</tr>

			<tr>
				<td><b>휴대폰 번호<b></td>
			</tr>
			<tr>
				<td><input type="text" name="number" maxlength="11"
					placeholder="-없이 ex)01012345678" size="40" style="height: 35px;"></td>
			</tr>

			<tr>
				<td><b>주소<b></td>
			</tr>
			<tr>
				<td><textarea name="addr" style="width: 264px; height: 40px;"></textarea></td>
			</tr>

			<tr>
				<td><input type="checkbox" onclick="background(this)"
					name="sub1" value="A">이용약관 동의</td>
			</tr>
			<tr>
				<td><input type="checkbox" onclick="background(this)"
					name="sub1" value="P">개인정보 수집 및 이용동의</td>
			</tr>

			<tr>
				<td><input type="button" value="이전"
					onclick="location.href='login.jsp'">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
					value="다음"></td>
			</tr>

		</table>
	</form>
</body>
</html>