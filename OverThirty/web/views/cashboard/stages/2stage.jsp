<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#boardCate {
		margin-top: 50px;
		width: auto;
		height: auto;
		text-align: left;
		font-size: 15pt;
		padding: 15px;
		border-bottom: 2px solid gray;
	}
	#boardTitle {
		margin-top: 40px;
		width: auto;
		height: 60px;
		text-align: center;
		font-size: 20pt;
		line-height: 60px;
		background-color: rgba(161, 206, 244, 0.55);
		border-radius: 15px;
	}
	#boardContent {
		margin-top: 50px;
		width: auto;
		height: 500px;
		
		border: 1px solid black;
	}
	
	#registId {
		margin-top: 50px;
		width: auto;
		height: auto;
		text-align: left;
		font-size: 15pt;
		padding: 15px;
		
		border-top: 2px solid gray;
	}
	#registWrap {
		margin-top: 50px;
		width: auto;
		min-height: 500px;
		height: auto;
		
		border: 1px solid black;
	}
	#registContent {
		width: 60%;
		height: 500px;
		float: left;
		
		border: 1px solid black;
	}
	#registChat {
		width: 35%;
		height: 500px;
		float: right;
		
		border: 1px solid black;
	}
	#chatTitle {
		height: 40px;
		background-color: rgba(161, 206, 244, 0.55);
		line-height: 40px;
	}
	#chatMain {
		height: 400px;
		
		border: 1px solid black;
	}
	.leftChat {
		float: left;
		width: 70%;
		background-color: rgb(224, 224, 224);
		padding: 10px;
		margin: 10px;
		border-radius: 20px;
	}
	.rightChat {
		float: right;
		width: 70%;
		background-color: rgba(243, 156, 18, 0.32);
		text-align: right;
		padding: 10px;
		margin: 10px;
		border-radius: 20px;
	}
	#chatBottom {
		height: 60px;
		
		border: 1px solid black;
	}
	#registList {
		width: 35%;
		height: 500px;
		float: right;
		
		border: 1px solid black;
	}
	#idListTitle {
		height: 40px;
		background-color: rgba(161, 206, 244, 0.55);
		line-height: 40px;
	}
	#idListMain {
		height: 460px;
		
		border: 1px solid black;
	}
	.idList {
		display: inline-table;
		width: 70%;
		background-color: rgb(224, 224, 224);
		text-align: center;
		padding: 10px;
		margin: 10px;
		border-radius: 20px;
	}
	.buttonWrap {
		text-align: center;
	}
	.button {
		display: inline-table;
		width: 20%;
		height: 60px;
		margin: 20px;
		line-height: 60px;
		text-align: center;
		background-color: rgb(52, 152, 219);
		color: white;
		border-radius: 5px;
		cursor: pointer;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="left-side"></div>
		
		<div id="main">
			<div id="boardCate">
				1:1 / 경매 / 컨테스트 의뢰
			</div>
			
			<div id="boardTitle">
				게시글 제목
			</div>
			
			<div id="boardContent">
				api가 구현해줄 게시글의 내용
			</div>
			
			<!-- 1:1 의뢰일 때와 경매 의뢰일 때 -->
			<div id="registId">
				지원자 : user01
			</div>
			
			<div id="registWrap">
				<div id="registContent">
					상단에는 게시자의 정보(id나 마이페이지에서 몇개 가져와서 연락처 등) + api가 구현해줄 게시글의 내용
				</div>
				
				<div id="registChat">
					<div id="chatTitle">1:1 채팅방</div>
					<div id="chatMain">
						<div class="leftChat">받은 채팅</div>
						<div class="rightChat">보낸 채팅</div>
						<div class="rightChat">보낸 채팅</div>
						<div class="leftChat">받은 채팅</div>
						<div class="leftChat">받은 채팅</div>
					</div>
					<div id="chatBottom">내용 입력받을 부분</div>
				</div>
			</div> <br>
			
			<div class="buttonWrap">
				<div class="button">거래 수락</div>
				<div class="button">거래 취소</div>
				<div class="button">거래 중재</div>
			</div>
			
			<!-- 컨테스트 의뢰일 때 -->
			<div id="registId">
				지원자 : user01
			</div>
			
			<div id="registWrap">
				<div id="registContent">
					상단에는 게시자의 정보(id나 마이페이지에서 몇개 가져와서 연락처 등) + api가 구현해줄 게시글의 내용
				</div>
				
				<div id="registList">
					<div id="idListTitle">등록된 작업물 확인</div>
					<div id="idListMain">
						<div class="idList">user01</div>
						<div class="idList">user02</div>
						<div class="idList">user03</div>
						<div class="idList">user04</div>
						<div class="idList">user05</div>
					</div>
				</div>
			</div> <br>
			
			<div class="buttonWrap">
				<div class="button">거래 수락</div>
				<div class="button">거래 취소</div>
				<div class="button">거래 중재</div>
			</div>
		</div>
		
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
	
</body>
</html>