<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>번호 만들기</title>
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
            text-align: center;
        }

        table {
            width: auto;
            border-collapse: separate;
            border-spacing: 10px;
            margin: 20px 0;
        }

        th, td {
            text-align: center;
        }

        #checkboxForm {
            margin: 20px 0;
        }

        .checkbox-wrapper {
            display: flex;
            align-items: center;
        }

        .checkbox-wrapper input[type="checkbox"] {
            appearance: none;
            width: 20px;
            height: 20px;
            border: 2px solid #28a745;
            border-radius: 4px;
            position: relative;
            cursor: pointer;
            margin-right: 5px;
        }

        .checkbox-wrapper input[type="checkbox"]:checked {
            background-color: #275efe;
            border-color: #28a745;
        }

        .checkbox-wrapper input[type="checkbox"]:checked::before {
            content: '✔';
            color: white;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 14px;
        }

        .checkbox-wrapper label {
            cursor: pointer;
        }

        :root {
            --background: #275efe;
            --text: #fff;
            --font-size: 16px;
            --duration: 0.44s;
        }

        .green-button {
            background-color: #28a745; 
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

        button {
            background-color: var(--background); /* 기본 파란색 */
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

        .center {
            display: flex;
            justify-content: center;
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
        img {
			width: 80%;
			margin-bottom: 20px;
		}
	}
    </style>
    <script>
        function getRandomInt() {
            return Math.floor(Math.random() * 45) + 1; // 1에서 45까지의 랜덤 정수 생성
        }

        function generateCheckboxes() {
            const table = document.createElement('table');
            const tbody = document.createElement('tbody');

            for (let i = 1; i <= 45; i++) {
                if ((i - 1) % 5 === 0) { // 새로운 행 시작
                    const row = document.createElement('tr');
                    tbody.appendChild(row);
                }

                const checkboxWrapper = document.createElement('div');
                checkboxWrapper.className = 'checkbox-wrapper';

                const checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
                checkbox.name = 'option';
                checkbox.value = i;

                const label = document.createElement('label');
                label.appendChild(document.createTextNode(i + '번'));

                checkboxWrapper.appendChild(checkbox);
                checkboxWrapper.appendChild(label);

                const td = document.createElement('td');
                td.appendChild(checkboxWrapper); // 체크박스를 셀에 추가
                tbody.lastChild.appendChild(td); // 마지막 행에 추가
            }
            table.appendChild(tbody);
            document.getElementById('checkboxForm').appendChild(table);
        }

        function makeNumList() {
            const chkList = Array.from(document.querySelectorAll('input[name="option"]:checked'));
            let ranList = [];
            if (chkList.length > 6) {
                alert("숫자는 6개 이하로 골라주세요");
                return;
            }
            while (chkList.length + ranList.length < 6) {
                let temp = getRandomInt();
                if (!chkList.some(chk => parseInt(chk.value) === temp) && !ranList.includes(temp)) {
                    ranList.push(temp);
                }
            }

            // 선택한 숫자와 생성한 난수 리스트 합치기
            let finalList = chkList.map(chk => parseInt(chk.value)).concat(ranList);
            finalList.sort((a, b) => a - b);

            // 최종 리스트를 각 입력 요소에 설정
            finalList.forEach((num, index) => {
                document.getElementById('num' + (index + 1)).value = num;
            });
        }

        window.onload = generateCheckboxes;
    </script>
</head>
<body>
	<img src="../img/lotto645.jpg" alt="Lotto 6/45">
    <div>
        <h3>최대 6개의 번호를 고르세요</h3>
        <div id="checkboxForm"></div>
        <div class="center">
            <button class="green-button" onclick="makeNumList()">번호 생성하기</button>
        </div>
    </div>
     
    <h3>번호 구성</h3>
    <form method="post">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num1" name="num1" value="">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num2" name="num2" value="">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num3" name="num3" value="">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num4" name="num4" value="">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num5" name="num5" value="">
        <input type="text" pattern="[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-5]" class="inp" id="num6" name="num6" value="">
        
        <button class="green-button">저장하기</button>
    </form>

    <br>
    <div>
        <button type="button" onclick="location.href='list2024'">2024년 당첨목록 보기</button>
        <button type="button" onclick="location.href='list'">내 목록 보기</button>
    </div>
</body>
</html>
