<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="/resources/CSS/TLogin.css" rel="stylesheet" type="text/css">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PTM login</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
<style>

</style>
</head>
<body>
	<!-- 전체 컨텐츠를 감싼 div -->
	<div class="allcontents">
		
		<form name="login" method="post" action="/T-LoginOK">
		
		<div class="contentstext">
			<span>PT 관리를<br><b>PTM</b>에서<br> 간편하게 하세요.</span>
		</div>
		
		<table>
			<tr>
				<td><input type="text" id="t_id" name="t_id" class="form-control" placeholder="ID" required></td>
			</tr>
			<tr>
				<td>
					<input type="password" class="form-control" id="t_pw" name="t_pw" placeholder="PASSWORD" required>
					<c:if test = "${msg == 'failure'}">
						<div style = "color:red">
							아이디 또는 비밀번호가 일치하지 않습니다.
						</div>
					</c:if>
				</td>
			</tr>
			<tr>
				<td><input type="submit" id="loginBtn" class="btn btn-primary" value="LOGIN"></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td height='1' style='background-color:#cccccc'></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td><input type="button" class="btn btn-success" value="ID / PW 찾기" onclick="location.href='/Trainer/T-Id'"></td>
			</tr>
			<tr>
				<td><input type="button" class="btn btn-success" value="회원가입" onclick="location.href='/Trainer/T-Join'"></td>
			</tr>
		</table>
		</form>
		
	</div>
</body>
</html>