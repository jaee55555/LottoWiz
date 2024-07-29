<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화면</title>
<style type="text/css">
	body #bd {
		display: flex;
		flex-direction: column;
		align-items: center;
		font-family: 'Roboto', sans-serif;
		margin: 0;
		padding: 0;
		min-height: 100vh;
		background-color: #f9f9f9;
		box-sizing: border-box;
		border: 2px solid #275efe;
        border-radius: 25px;
        padding: 20px;
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
		width: 200px;
	}

	button:hover {
		transform: translateY(-4px);
		box-shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
	}
	
	img {
		width: 80%;
		margin-bottom: 20px;
	}

	.button-container {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		flex: 1;
		width: 100%;
	}
</style>
</head>
<body>
	<div id="bd">
		<img src="../img/lotto645.jpg" alt="Lotto 6/45">
		<div class="button-container">
			<button type="button" onclick="location.href='list2024'">2024년 당첨목록 보기</button>
			<button type="button" onclick="location.href='list'">내 목록 보기</button>
			<button type="button" onclick="location.href='form'">로또번호 만들기</button>
		</div>
	</div>
	<footer>
    	<p>Copyright © 2024 jaee55555</p>
	</footer>
</body>
</html>
