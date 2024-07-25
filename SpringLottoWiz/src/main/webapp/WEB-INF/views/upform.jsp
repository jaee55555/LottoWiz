<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LottoNums정보수정</title>
   <script type="text/javascript">
       function remove(){
    	   location.href='delete?no=${lottonums.no}';
       }
   </script>
   <style type="text/css">
		.inp {
            width: 30px; 
            text-align: center;
        }
	</style>
</head>
<body>
  <h3>LottoNums정보수정</h3>
  <hr>
  <form method="post">
  <input type="hidden" name="no" value="${lottonums.no }">
    <input type="text" class="inp" id="num1" name="num1" value="${lottonums.num1}">
    <input type="text" class="inp" id="num2" name="num2" value="${lottonums.num2}">
    <input type="text" class="inp" id="num3" name="num3" value="${lottonums.num3}">
    <input type="text" class="inp" id="num4" name="num4" value="${lottonums.num4}">
    <input type="text" class="inp" id="num5" name="num5" value="${lottonums.num5}">
    <input type="text" class="inp" id="num6" name="num6" value="${lottonums.num6}">
   <button type="submit">수정</button>
   <!-- <button type="button" onclick="location.href=delete?no=3">삭제</button> -->
   <button type="button" onclick="location.href='delete?no=${lottonums.no}'">삭제</button>
  </form>
  <br>
  <a href="list">목록보기</a>
</body>
</html>

