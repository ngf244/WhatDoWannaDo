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
		font-size: 20pt;
		text-align: center;
		line-height: 60px;
		background-color: rgba(161, 206, 244, 0.55);
		border-radius: 15px;
	}
	#contentWrap {
		margin-top: 50px;
		height: 600px;
		
		border: 1px solid black;
	}
	#contentMain {
		width: 60%;
		height: 600px;
		float: left;
		
		border: 1px solid black;
	}
	#mainImg {
		width: 35%;
		height: 300px;
		float: right;
		
		border: 1px solid black;
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
			
			<div id="contentWrap">
				<div id="contentMain">
					카테고리 : 로고 디자인<br>
					상금 : 50,000원<br>
					디자이너 : user01<br>
					글 내용 : api로 받아올지 아니면 내용만 받아와서 중간에 ...으로 자를지<br>
				</div>
				
				<div id="mainImg">
					선정작 blur처리할수있도록
				</div>
			</div>
		</div>
		
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>