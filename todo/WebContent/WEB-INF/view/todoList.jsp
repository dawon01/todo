<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO - DO LIST</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
  font-family: Arial;
  padding: 20px;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: white;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
  float: left;
  width: 75%;
}

a{
  text-decoration: none;
  color: #A6A6A6;
}
a:hover{
  text-decoration:none;
  color: black;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {
    width: 100%;
    padding: 0;
  }
}
</style>
</head>
<body>
	<div class="container pt-3">
		<div class="header">
		  <div class="text-center">
				<h3>${loginMember.memberId} : TO - DO LIST</h3>
			</div>
		</div>
	
		<div class="row mt-3">
		
		  <div class="leftcolumn">
		  
		    <div class="card">
		      	<div class="w-100 text-center mb-3">
					<span style="font-size:24px; font-weight:bold;">${todoDate}</span>
				</div>
				<c:forEach var="t" items="${todoList}">
					<div class="m-2">
						<span style="color:#FBE1E2;">??? </span> ${t.todoContent}
						<br>
						<span style="color:#A6A6A6; font-size:12px;">${t.createDate} | ${t.updateDate} | <a href="${pageContext.request.contextPath}/member/modifyTodo?todoNo=${t.todoNo}">??????</a> | <a href="${pageContext.request.contextPath }/member/removeTodo?todoNo=${t.todoNo}&todoDate=${todoDate}">??????</a></span>
					</div>
				</c:forEach>
		    </div>
		    
		    <div class="card">
		    	<div class="w-100 text-center mb-3">
					<span style="font-size:24px; font-weight:bold;">ADD TO-DO</span>
				</div>
					<form method="post" action="${pageContext.request.contextPath}/member/addTodo">
					<!-- AddTodoController.doPost() -->
						<div>
							<input type="hidden" name="memberId" value="${loginMember.memberId}"><input type="text" name="todoDate" value="${todoDate}" readOnly="readonly" class="form-control">
						</div>
						<div>
							<textarea rows="3" cols="50" name="todoContent" class="form-control"></textarea>
						</div>
						<div>
							<a href="${pageContext.request.contextPath}/member/calendar">????????????</a>
						</div>
						<div class="float-right"><button type="submit" class="btn" style="background-color:#BED8FE; color:#fff; font-weight:bold;">??????</button></div>
					</form>
			</div>
		    
		  </div>
		  
		  <div class="rightcolumn">
		  
		    <div class="card">
		      	<div>
					????????? total todo : ${todoList.size()}
				</div>
		    </div>
		    
		    <div>
				<div class="text-center">
					<a href="${pageContext.request.contextPath}/member/logout" class="btn btn-sm mt-3" style="background-color:#A6A6A6; color:#fff; font-weight:bold;">????????????</a>
					<a href="${pageContext.request.contextPath}/member/removeMember" class="btn btn-sm mt-3" style="background-color:#A6A6A6; color:#fff; font-weight:bold;">????????????</a>
				</div>
		    </div>
		    
		  </div>
		  
		</div>
		
		<div class="footer">
		</div>
	</div>
</body>
</html>