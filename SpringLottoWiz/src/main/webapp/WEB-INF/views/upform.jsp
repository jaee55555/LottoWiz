<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LottoNums정보수정</title>
   <script type="text/javascript">
       function validateAndSubmit() {
           var num1 = document.getElementById('num1').value;
           var num2 = document.getElementById('num2').value;
           var num3 = document.getElementById('num3').value;
           var num4 = document.getElementById('num4').value;
           var num5 = document.getElementById('num5').value;
           var num6 = document.getElementById('num6').value;

           var numbers = [num1, num2, num3, num4, num5, num6];
           var uniqueNumbers = new Set(numbers);

           if (uniqueNumbers.size !== numbers.length) {
               alert('각 숫자들은 중복되면 안됩니다.');
               return false;
           }

           return true;
       }

       function remove() {
           location.href='delete?no=${lottonums.no}';
       }
   </script>
   
   <style type="text/css">
	   body #bd {
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
		
		footer {
			display: flex;
			flex-direction: column;
			align-items: center;
			font-family: 'Roboto', sans-serif;
		}
		.inp {
            width: 30px;
            text-align: center;
            background-color: #f0f0f0;
            border: 1px solid #ccc; 
            padding: 5px; 
            border-radius: 5px;
            box-sizing: border-box; 
            margin: 5px;
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

        .green-button {
            background-color: #28a745; /* 녹색 */
            color: var(--text);
            font-size: var(--font-size);
            border: none;
            padding: 10px 20px;
            margin: 10px;
            cursor: pointer;
            border-radius: 25px;
            transition: transform var(--duration), box-shadow var(--duration);
        }

        .green-button:hover {
            transform: translateY(-4px);
            box-shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button-container button {
            margin: 0 10px;
        }
        img {
			width: 80%;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<div id="bd">
		<img src="../img/lotto645.jpg" alt="Lotto 6/45" width=80%>
		<h3>숫자 조합 수정</h3>
		<hr>
		<form method="post" onsubmit="return validateAndSubmit();">
			<input type="hidden" name="no" value="${lottonums.no }">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num1" name="num1" value="${lottonums.num1}">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num2" name="num2" value="${lottonums.num2}">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num3" name="num3" value="${lottonums.num3}">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num4" name="num4" value="${lottonums.num4}">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num5" name="num5" value="${lottonums.num5}">
			<input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num6" name="num6" value="${lottonums.num6}">
			    
			<div class="button-container">
				<button type="submit" class="green-button">수정</button>
				<button type="button" class="green-button" onclick="location.href='delete?no=${lottonums.no}'">삭제</button>
			</div>
		</form>
		<br>
		<button type="button" onclick="location.href='list'">목록보기</button>
	</div>
	<footer>
    	<p>Copyright © 2024 jaee55555</p>
	</footer>
</body>
</html>
