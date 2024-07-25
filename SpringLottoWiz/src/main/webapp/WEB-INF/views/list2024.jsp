<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2024년 로또 당첨번호 목록</title>
</head>
<body>
	<h3>24년도 당첨번호 목록</h3>
	<table>
	    <tr>
	      <th>회차</th>
	      <th>추첨날짜</th>
	      <th>1번</th>
	      <th>2번</th>
	      <th>3번</th>
	      <th>4번</th>
	      <th>5번</th>
	      <th>6번</th>
	      <th>보너스 번호</th>
	    </tr>
	    <c:forEach items="${list}" var="lotto2024">
		    <tr>
		      <td>${lotto2024.no}</td>
		      <td>${lotto2024.drwNoDate}</td>
		      <td>${lotto2024.drwtNo1}</td>
		      <td>${lotto2024.drwtNo2}</td>
		      <td>${lotto2024.drwtNo3}</td>
		      <td>${lotto2024.drwtNo4}</td>
		      <td>${lotto2024.drwtNo5}</td>
		      <td>${lotto2024.drwtNo6}</td>
		    </tr>
        </c:forEach>
</body>
</html>