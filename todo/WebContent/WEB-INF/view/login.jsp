<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container pt-3">
		<div class="text-center">
			<h1 style="margin-top:150px; color:#A6A6A6;">LOGIN</h1>
			<form method="post" action="${pageContext.request.contextPath}/login">
				<div class="mx-auto m-3" style="width:300px;">
					<div><input type="text" name="memberId" placeholder="I D" class="form-control"></div>
					<div><input type="text" name="memberPw" placeholder="P W" class="form-control"></div>
					<div>
						<button type="submit" class="btn mt-3" style="background-color:#059EE2; color:#fff; font-weight:bold;">로그인</button>
						<a href="${pageContext.request.contextPath}/addMember" class="btn mt-3" style="background-color:#059EE2; color:#fff; font-weight:bold;">회원가입</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>