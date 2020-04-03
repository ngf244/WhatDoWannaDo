<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#mainWrap {
		width: 80%;
		margin: 0 auto;
		background-color: rgba(224, 224, 224, 0.16);
	}
	#logoImg {
		display: inline-table;
		width: 50px; 
		height: 50px; 
		margin: 10px;
		line-height: 50px;
		
		border: 1px solid black;
	}
	#mainTitle {
		display: inline-table;
		height: 50px;
		font-size: 18pt;
		font-weight: bold;
		line-height: 50px;
		margin: 10px;
	}
	#writeForm {
		margin-top: 30px;
		border-top: 2px solid gray;
		padding: 10px;
	}
	.leftLine {
		display: inline-table;
		width: 20%;
		height: 50px;
		font-size: 14pt;
		text-align: center;
		line-height: 50px;
		margin: 10px;
		font-weight: bold;
	}
	.rightLine {
		display: inline-table;
		width: 70%;
		height: 50px;
		font-size: 13pt;
		line-height: 50px;
	}
	.redColor {
		color: rgb(224, 63, 58);
	}
	#maincontent {
		width: 80%;
		height: 300px;
		margin: 0 auto;
		
		border: 1px solid black;
	}
	#conceptWrap {
		margin-top: 20px;
	}
	.concept {
		width: 20%;
		font-size: 13pt;
		text-align: center;
		display: inline-table;
		
	}
	.slider-wrap {
		width: 50%;
		margin-left: 10px;
		margin-right: 10px;
		display: inline-table;
	}
	.slider {
		width: 100%;
		display: inline-table;
	}
	#downloadWrap {
		margin-top: 30px;
		padding-top: 30px;
		margin-bottom: 30px;
		padding-bottom: 30px;
		border-top: 2px solid gray;
		border-bottom: 2px solid gray;
	}
	.download {
		display: inline-table;
		height: 30px;
		margin: 10px;
		padding-left: 20px;
		padding-right: 20px;
		line-height: 30px;
		font-size: 14pt;
		text-align: center;
		background-color: rgb(66, 66, 66);
		color: white;
		border-radius: 5px;
		cursor: pointer;
		font-weight: bold;
	}
	#registWrap {
		margin-top: 50px;
		width: auto;
		min-height: 500px;
		height: auto;
	}
	#registContent {
		width: 60%;
		height: 500px;
		float: left;
	}
	#buyerInfo {
		width: 98%;
		height: 150px;
	}
	#content {
		width: 98%;
		height: 300px;
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
	
	
	#btnList {
		text-align: center;
		margin-top: 30px;
	}
	.button {
		display: inline-table;
		width: 150px;
		height: 50px;
		margin: 10px;
		line-height: 50px;
		font-size: 14pt;
		text-align: center;
		background-color: rgb(224, 224, 224);
		border-radius: 5px;
		cursor: pointer;
		font-weight: bold;
	}
	
	.range-slider__range {
		-webkit-appearance: none;
		width: calc(100%);
		height: 10px;
		border-radius: 5px;
		background: #d7dcdf;
		outline: none;
		padding: 0;
		margin: 0;
	}
	/* custom thumb */
	.range-slider__range::-webkit-slider-thumb {
		-webkit-appearance: none;
		appearance: none;
		width: 20px;
		height: 20px;
		border-radius: 50%;
		background: #2c3e50;
		cursor: pointer;
		-webkit-transition: background .15s ease-in-out;
		transition: background .15s ease-in-out;
	}
	.range-slider__range::-webkit-slider-thumb:hover {
		background: #1abc9c;
	}
	.range-slider__range:active::-webkit-slider-thumb {
		background: #1abc9c;
	}
	.range-slider__range::-moz-range-thumb {
		width: 20px;
		height: 20px;
		border: 0;
		border-radius: 50%;
		background: #2c3e50;
		cursor: pointer;
		-webkit-transition: background .15s ease-in-out;
		transition: background .15s ease-in-out;
	}
	.range-slider__range::-moz-range-thumb:hover {
		background: #1abc9c;
	}
	.range-slider__range:active::-moz-range-thumb {
		background: #1abc9c;
	}
	.range-slider__range:focus::-webkit-slider-thumb {
		-webkit-box-shadow: 0 0 0 3px #fff, 0 0 0 6px #1abc9c;
		box-shadow: 0 0 0 3px #fff, 0 0 0 6px #1abc9c;
		 
		outline: none; 
	}
	/* custom label */
	.range-slider__value {
		display: inline-block;
		position: relative;
		width: 60px;
		color: #fff;
		line-height: 20px;
		text-align: center;
		border-radius: 3px;
		background: #2c3e50;
		padding: 5px 10px;
		margin-left: 8px;
	}
	.range-slider__value:after {
		position: absolute;
		top: 8px;
		left: -7px;
		width: 0;
		height: 0;
		border-top: 7px solid transparent;
		border-right: 7px solid #2c3e50;
		border-bottom: 7px solid transparent;
		content: '';
	}
	/* custom track */
	::-moz-range-track {
		background: #d7dcdf;
		border: 0;
	}
	/* remove border */
	input::-moz-focus-inner, input::-moz-focus-outer {
		border: 0;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="left-side"></div>

		<div id="main" >
			<div id="mainWrap">
				<!-- 로고로 만들어서 제작 -->
				<div id="logoImg">
					<img src=''>
				</div>
				<div id="mainTitle">
					디자인 요청 상세 내용
				</div>
				
				<form id="writeForm">
					<div class="leftLine">
						<span class="redColor">＞ </span>제목
					</div>
					<div class="rightLine">
						어플 로고 이미지 제작
					</div>
					
					<div class="leftLine">
						<span class="redColor">＞ </span>카테고리
					</div>
					<div class="rightLine">
						로고 이미지
					</div>
					
					<div class="leftLine">
						<span class="redColor">＞ </span> 의뢰인
					</div>
					<div class="rightLine">
						홍길동
					</div>
					
					<div class="leftLine" style="width: auto">
						<span class="redColor">＞ </span>무엇을 디자인해드릴까요?
					</div>
					
					<br>
					
					<div id="maincontent">
						글 내용을 불러올 부분
					</div>
					
					<div id="conceptWrap">
						<div class="leftLine">
							<span class="redColor">＞ </span>컨셉
						</div>
						<div class="rightLine">
							<div class="concept">우아하게</div>
							<div class="slider-wrap">
								<input id="concept1" class="range-slider__range" type="range" value="40" min="-50" max="50" disabled>
							</div>
							<div class="concept">터프하게</div>
							<br>
							<div class="concept">재미있게</div>
							<div class="slider-wrap">
								<input id="concept2" class="range-slider__range" type="range" value="-20" min="-50" max="50" disabled>
							</div>
							<div class="concept">진지하게</div>
							<br>
							<div class="concept">화려하게</div>
							<div class="slider-wrap">
								<input id="concept3" class="range-slider__range" type="range" value="30" min="-50" max="50" disabled>
							</div>
							<div class="concept">수수하게</div>
							<br>
							<div class="concept">대중적으로</div>
							<div class="slider-wrap">
								<input id="concept4" class="range-slider__range" type="range" value="0" min="-50" max="50" disabled>
							</div>
							<div class="concept">고급스럽게</div>
							<br>
							<div class="concept">복고적으로</div>
							<div class="slider-wrap">
								<input id="concept5" class="range-slider__range" type="range" value="-50" min="-50" max="50" disabled>
							</div>
							<div class="concept">현대적으로</div>
						</div>
						
						<div class="leftLine">
							<span class="redColor">＞ </span>마감일
						</div>
						<div class="rightLine">
							기한 : <span id="month">1</span>월 <span id="day">1</span>일 <span id="hour">12</span>시
						</div>
						
						<div class="leftLine">
							<span class="redColor">＞ </span>의뢰비
						</div>
						<div class="rightLine">
							10,000 원
						</div>
					</div>
					
					<div id="downloadWrap">
						<!-- 로고로 만들어서 제작 -->
						<div id="logoImg">
							<img src=''>
						</div>
						<div id="mainTitle">
							자료 첨부파일
						</div>
						
						<br>
						
						logo.jpg <div class="download">download</div>
					</div>
					
					<div id="logoImg">
						<img src=''>
					</div>
					
					<div id="mainTitle">
						참여 에디터 : <span>user01</span>
					</div>
					
					
					<div id="registWrap">
						<div id="registContent">
							<div id="buyerInfo">
								<div class="leftLine">
									의뢰인 정보
								</div>
								<div class="rightLine">
									정문종 하나 284-891239-76707 <br>
									010-5217-5324
								</div>
							</div>
							
							<textarea name="content" id="content"></textarea>
						</div>
						
						<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
							 oAppRef: oEditors,
							 elPlaceHolder: "content",
							 sSkinURI: "../../se2/SmartEditor2Skin.html",
							 fCreator: "createSEditor2"
							});
						</script>
						
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
					
					<div id="btnList">
						<div id="submit" class="button">작성완료</div>
						<div id="cancle" class="button">돌아가기</div>
					</div>
					
					<script>
						$('#submit').hover(function(){
							$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
						}, function(){
							$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
						});
						$('#cancle').hover(function(){
							$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
						}, function(){
							$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
						})
					</script>
					
				</form>
			</div>
		</div>
		
		<!-- 공용영역 -->
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>