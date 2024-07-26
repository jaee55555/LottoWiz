<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2024년 로또 당첨번호 목록</title>
<style type="text/css">
	table {
		border: 1px solid;
		border-collapse: collapse;
	}
	th, td {
		text-align: center;
		border: 1px solid;
	}
</style>
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
	    <c:forEach items="${list}" var="list2024">
		    <tr>
		      <td>${list2024.drwNo}</td>
		      <td>${list2024.drwNoDate}</td>
		      <td>${list2024.drwtNo1}</td>
		      <td>${list2024.drwtNo2}</td>
		      <td>${list2024.drwtNo3}</td>
		      <td>${list2024.drwtNo4}</td>
		      <td>${list2024.drwtNo5}</td>
		      <td>${list2024.drwtNo6}</td>
		      <td>${list2024.bnusNo}</td>
		    </tr>
        </c:forEach>
   </table>
   <br>
   <button type="button" onclick="location.href='form'">로또번호 생성하기</button>
   <button type="button" onclick="location.href='list'">내 목록 보기</button>
</body>
</html>