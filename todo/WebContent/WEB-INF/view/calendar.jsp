<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CALENDAR</title>
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
		      	<div class="w-100 text-center">
					<span class="float-left"><a href="${pageContext.request.contextPath}/member/calendar?currentYear=${targetYear}&currentMonth=${targetMonth}&option=pre" class="btn" style="background-color:#BED8FE; color:#fff; font-weight:bold;"> < 이전 </a></span>
					<span style="font-size:24px; font-weight:bold;">${targetYear}년 ${targetMonth}월</span>
					<span class="float-right"><a href="${pageContext.request.contextPath}/member/calendar?currentYear=${targetYear}&currentMonth=${targetMonth}&option=next" class="btn" style="background-color:#BED8FE; color:#fff; font-weight:bold;"> 다음 > </a></span>
				</div>
				<table style="width:100%; margin-top:20px;">
					<tr class="text-center">
						<td style="width:14%; color:red;">SUN</td>
						<td style="width:14%;">MON</td>
						<td style="width:14%;">TUE</td>
						<td style="width:14%;">WED</td>
						<td style="width:14%;">THUR</td>
						<td style="width:14%;">FRI</td>
						<td style="width:14%; color:blue;">SAT</td>
					</tr>
					<tr>
						<!-- JSTL for문 -->
						<c:forEach var="i" begin="1" end="${startBlank+endDay+endBlank}" step="1">
			            <c:if test="${i-startBlank >= 1 && i-startBlank<=endDay}">
			            	<td style="height:100px; vertical-align:top">
			            		<a href="${pageContext.request.contextPath }/member/todoList?y=${targetYear}&m=${targetMonth }&d=${i-startBlank}">${i-startBlank}</a>
			            		<div>
				            		<!-- 날짜별 일정 -->
				            		<c:forEach var="todo" items="${todoList}">
				            			<c:if test="${i-startBlank == todo.todoDate.substring(8)}">
				            				<div><span style="color:#FBE1E2;">● </span><span style="font-size:13px;">${todo.todoContent}</span></div>
				            			</c:if>
				            		</c:forEach>
			            		</div>
			            	</td>
			            </c:if>
			            <c:if test="${i-startBlank < 1 || i-startBlank>endDay}">
			            	<td>&nbsp;</td>
			            </c:if>
			            
			            <c:if test="${i%7 == 0}">
			            	</tr><tr>
			            </c:if>
			            </c:forEach>
					</tr>
				</table>
		    </div>
		    
		  </div>
		  
		  <div class="rightcolumn">
		  
		    <div class="card">
		      	<div>
					이달의 total todo : ${todoList.size()}
				</div>
		    </div>
		    
		    <div class="card">
		    	<div>오늘의 일정</div>
		    	<div>
			    	<c:forEach var="t" items="${todayTodoList}">
            				<div>
            					<span style="color:#FBE1E2;">● </span>${t.todoContent}
            				</div>
					</c:forEach>
				</div>
		    </div>
		    <div>
				<div class="text-center">
					<a href="${pageContext.request.contextPath}/member/logout" class="btn btn-sm mt-3" style="background-color:#A6A6A6; color:#fff; font-weight:bold;">로그아웃</a>
					<a href="${pageContext.request.contextPath}/member/removeMember" class="btn btn-sm mt-3" style="background-color:#A6A6A6; color:#fff; font-weight:bold;">회원탈퇴</a>
				</div>
		    </div>
		    
		  </div>
		  
		</div>
		
		<div class="footer">
		</div>
	</div>
	
</body>
</html>