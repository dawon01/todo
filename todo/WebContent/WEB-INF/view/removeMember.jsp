<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REMOVE MEMBER</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container pt-3">
		<div class="text-center">
			<h1 style="margin-top:150px; color:#A6A6A6;">회원탈퇴</h1>
			${loginMember.memberId}님의 회원 탈퇴를 위해 정확한 PASSWORD를 입력해주세요.
			<form method="post" action="${pageContext.request.contextPath}/member/removeMember">
				<div class="mx-auto m-3" style="width:300px;">
					<input type="hidden" name="memberId" value="${loginMember.memberId}">
					<div><input type="text" name="memberPw" placeholder="P W" class="form-control"></div>
					<div>
						<button type="submit" class="btn mt-3" style="background-color:#059EE2; color:#fff; font-weight:bold;">탈퇴</button>
						<a href="${pageContext.request.contextPath}/member/calendar" class="btn mt-3" style="background-color:#059EE2; color:#fff; font-weight:bold;">캘린더</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>