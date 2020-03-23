<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
	header {
		width : 100%;
		height: auto;
		text-align: center;
	}
	#titleHeader {
		background-color: rgba(161, 206, 244, 0.55);
		height: 200px;
		text-align: center;
		position: relative;
	}
	#mainIcon {
		width: 150px;
		height: 150px;
		display: inline-block;
		margin: 25px;
		vertical-align: middle;
	}
	#mainLetter{
		width: 400px;
		height: 50px;
		position: absolute;
		top: 30px;
		left: 35%;
		display: inline-block;
		vertical-align: middle;
	}

	#mainLetter img{
		width: 100%;
		height: 100%;
	}

	#mainSearch {
		width: 400px;
		height: 50px;
		display: inline-block;
		border: 1px solid black;
		vertical-align: middle;
		margin-left: 50px;
		margin-top: 75px;
	}
	#basicForm {
		width: 250px;
		height: 150px;
		display: inline-block;
		vertical-align: middle;
		margin-left: 50px;
	}
	#loginBtn, #signupBtn, #welcomeName {
		padding: 10px;
		background-color : rgb(52, 152, 219);
		color : white;
		border-radius: 5px;
		margin: 10px;
		/* line-height: 40px; */
		font-weight: bold;
		display: inline-block;
		cursor: pointer;
	}
	#notice, #modalMenu {
		width: 40px;
		height: 40px;
		margin: 10px;
		cursor: pointer;
	}
	#smallInfo {
		display: none;
		position: fixed;
		z-index: 100;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		overflow: auto;
		background-color: rgba(0,0,0,0.5);
	}
	#smallInfoContent {
		position: absolute;
		right: -500px;
		background-color: white;
		width: 500px;
		height: 100%;
		float: right;
		transition: right 0.5s ease;
	}
	#smallInfoContent.open {
		right: 0px;
	}
	
	#menuHeader {
		background-color: rgb(52, 152, 219);
		height: 60px;
		text-align: center;
	}
	.menubar {
		color: white;
		display: inline-block;
		font-size: 15pt;
		margin: 15px;
		cursor: pointer;
	}

	#noticeArea{
		display: none;
		border-style: outset;
		background-color: lightgrey;
		opacity: 0.5;
		width: 350px;
		height: 200px;
	}

	#left-side{
		width: 14%;
		min-height: 600px;
		float:left;
	}
	#main {
		width : 69.8%;
     	min-height : 600px;
     	margin-bottom: 20px;
		margin-right: 0.1%;
		margin-left: 0.1%;
		float: left;
		/* border: 1px solid black; */
	}
	#right-side{
		width : 16%;
		min-height : 600px;
		float: left;
	}
	section:after {
		content:""; 
		display: block;
		clear:both;
		/* border: 1px solid black;
		background-color: brown; */
	}
	/* section:after을 사용 못할 경우 section 마지막에 div class=sectionafter 을 만들어서 해결 */
	.sectionafter{
		clear: both;
		height: 0px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<header>
		<div id="titleHeader">
			<img id="mainIcon" src="${ contextPath }/views/images/왓두로고.png">
			<div id="mainLetter"><img src="${ contextPath }/views/images/왓두글자.PNG"></div>
			<div id="mainSearch">검색 기능 들어갈 부분</div>
			<div id="basicForm">
				<!-- 로그인 안되어 있을 때 -->
				<!-- 
				<div id="loginBtn">login</div>
				<div id="signupBtn">sign up</div> 
				-->
				
				<!-- 로그인 되어 있을 때 -->
				<div id="welcomeName">김대호님 환영합니다</div><br>
				<img id="notice" class="notice" src="${ contextPath }/views/images/알림.PNG">
				<img id="modalMenu" src="${ contextPath }/views/images/메뉴.PNG">
				<div id="noticeArea" class="notice">
					
				</div>

				<div id="smallInfo">
					<div id="smallInfoContent">
						
					</div>
				</div>
				
				<script>
					$('#modalMenu').click(function() {
						$('#smallInfo').css('display', 'block');
						setTimeout(function() {
							$('#smallInfoContent').addClass("open");
						}, 1);
					});
					$('#smallInfo').click(function() {
						if(!($('#smallInfoContent').is(":hover"))) {
							$('#smallInfoContent').removeClass("open");
							$('#smallInfo').css('display', 'none');
						}
					});

					$('#notice').click(function(e){
						$('#noticeArea').slideToggle();
					})

					$('html').click(function(e){
						if(!$(e.target).hasClass("notice")){
							$('#noticeArea').slideUp();
						}
					})
				</script>
			</div>
		</div>
		
		<div id="menuHeader">
			<div class="menubar">공지사항</div>
			<div class="menubar">가이드</div>
			<div class="menubar">사진</div>
			<div class="menubar">미디어</div>
			<div class="menubar">HIT 갤러리</div>
			<div class="menubar">문의</div>
			<div class="menubar">충전소</div>
		</div>
	</header>
	<br>
	
</body>
</html>