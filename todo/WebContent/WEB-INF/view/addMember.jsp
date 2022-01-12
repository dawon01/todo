<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addBtn').click(function(){
			if($('#memberId').val() == '') {
				alert('memberId를 입력하세요');
				return;
			}
			if($('#memberPw').val() == '') {
				alert('memberPw를 입력하세요');
				return;
			}
			
			$('#addForm').submit();
		});
	});
</script>
</head>
<body>
	<div class="div">
		<h1>회원가입</h1>
		<form id="addForm" method="post" action="${pageContext.request.contextPath}/addMember">
			<table class="table" border="1">
				<tr>
					<th>아이디</th>
					<td><input class="btn" type="text" id="memberId" name="memberId"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input class="btn" type="password" id="memberPw" name="memberPw"></td>
				</tr>
			</table>
			<div class="bottomBtn">
				<button class="btn" type="button" id="addBtn" onclick="button()">가입하기</button>
				<button class="btn" type="reset">초기화</button>
				<a class="btn" href="${pageContext.request.contextPath}/login">뒤로가기</a>
			</div>
		</form>
	</div>
</body>
</html>