<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내 목록 보기</title>
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
	<h3>내 목록 보기</h3>
	<c:if test="${ !empty list }">
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>1번</th>
	      <th>2번</th>
	      <th>3번</th>
	      <th>4번</th>
	      <th>5번</th>
	      <th>6번</th>
	    </tr>	   
	    
	    <c:forEach items="${list}" var="lottonums">
		    <tr>
		      <td><a href="upform?no=${lottonums.no}">${lottonums.no}</a></td>
		      <td>${lottonums.num1}</td>
		      <td>${lottonums.num2}</td>
		      <td>${lottonums.num3}</td>
		      <td>${lottonums.num4}</td>
		      <td>${lottonums.num5}</td>
		      <td>${lottonums.num6}</td>
		    </tr>
        </c:forEach>		    
	  </table>  
   </c:if>	  
   
   <c:if test="${ empty list }">  
      등록된 숫자 조합이 없습니다.
   </c:if>
  <br>
  <button type="button" onclick="location.href='list2024'">2024년 당첨목록 보기</button>
  <button type="button" onclick="location.href='form'">
  로또번호 생성하기</button>

</body>
</html>