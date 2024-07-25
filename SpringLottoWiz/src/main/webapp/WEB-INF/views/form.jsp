<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>번호 만들기</title>
    <style type="text/css">
        table {
            width: 300px;
            border-collapse: collapse; 
        }
        
        th, td {
            width: 20%; 
            text-align: left; 
        }

        #checkboxForm {
            margin: 20px 0; 
        }

        .inp {
            width: 30px; 
            text-align: center;
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
                const tr = Math.ceil(i / 5); // 각 행에 5개씩 배치
                if ((i - 1) % 5 === 0) { // 새로운 행 시작
                    const row = document.createElement('tr');
                    tbody.appendChild(row);
                }
                
                const checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
                checkbox.name = 'option';
                checkbox.value = i;
				const temp = i.toString() + "번";
                const label = document.createElement('label');
                label.appendChild(checkbox);
                label.appendChild(document.createTextNode(temp));

                const td = document.createElement('td');
                td.appendChild(label); // 체크박스를 셀에 추가
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
    <div>
        <h3>번호를 고르세요</h3>
        <div id="checkboxForm"></div>
        <button onclick="makeNumList()">번호 생성하기</button>
    </div>
     
    <h3>번호 구성</h3>
    <form method="post">
        <input type="text" class="inp" id="num1" name="num1" value="">
        <input type="text" class="inp" id="num2" name="num2" value="">
        <input type="text" class="inp" id="num3" name="num3" value="">
        <input type="text" class="inp" id="num4" name="num4" value="">
        <input type="text" class="inp" id="num5" name="num5" value="">
        <input type="text" class="inp" id="num6" name="num6" value="">
        
        <button>저장하기</button>
    </form>

    <br><br>
    <a href="list_2024">2024년 당첨목록 보기</a>
    <a href="list">내 목록 보기</a>
</body>
</html>
