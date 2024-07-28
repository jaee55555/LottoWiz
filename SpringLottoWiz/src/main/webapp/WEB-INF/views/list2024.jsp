<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2024년 로또 당첨번호 목록</title>
<style type="text/css">
	body {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		font-family: 'Roboto', sans-serif;
		border: 2px solid #275efe;
        border-radius: 25px;
        padding: 20px;
        box-sizing: border-box; 
        width: 80%; 
        margin: auto;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: white;
	}

	h3 {
		color: #333;
	}

	table {
		width: 80%;
		border-collapse: collapse;
		margin: 20px 0;
	}

	th {
		background-color: #4CAF50;
		color: white;
		text-align: left;
		padding: 12px;
	}

	td {
		padding: 12px;
		text-align: left;
		border-bottom: 1px solid #ddd;
	}

	tr:nth-child(even) {
		background-color: #f2f2f2;
	}

	tr:nth-child(odd) {
		background-color: #fff;
	}

	tr:hover {
		background-color: #ddd;
	}

	:root {
		--background: #275efe;
		--text: #fff;
		--font-size: 16px;
		--duration: 0.44s;
	}

	button {
		background-color: var(--background);
		color: var(--text);
		font-size: var(--font-size);
		border: none;
		padding: 10px 20px;
		margin: 10px;
		cursor: pointer;
		border-radius: 25px;
		transition: transform var(--duration), box-shadow var(--duration);
	}

	button:hover {
		transform: translateY(-4px);
		box-shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
	}
	img {
		width: 80%;
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<img src="../img/lotto645.jpg" alt="Lotto 6/45" width=80%>
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
   <div>
	   <button type="button" onclick="location.href='form'">로또번호 생성하기</button>
	   <button type="button" onclick="location.href='list'">내 목록 보기</button>
   </div>
</body>
</html>
