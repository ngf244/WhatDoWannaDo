<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="../../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../../se2/quick_photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"> </script>
<style>
	#main {
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
		width: 35%;
		min-height: 50px;
		font-size: 16pt;
		text-align: center;
		line-height: 50px;
		margin: 10px;
		font-weight: bold;
	}
	.rightLine {
		display: inline-table;
		width: 60%;
		min-height: 50px;
		font-size: 16pt;
		line-height: 50px;
	}
	.br {
		margin-top: 20px;
	}
	
	#inputText {
		width: 80%;
		height: 40px;
		font-size: 14pt;
		line-height: 40px;
	}
	#content {
		width: 98%;
		height: 300px;
	}
	.concept {
		width: 15%;
		font-size: 14pt;
		text-align: center;
		display: inline-table;
		
	}
	.slider-wrap {
		width: 65%;
		margin-left: 10px;
		margin-right: 10px;
		display: inline-table;
	}
	.slider {
		width: 100%;
		display: inline-table;
	}
	.selectDate {
		width: 20%;
		height: 40px;
		font-size: 14pt;
		line-height: 40px;
		margin-right: 20px;
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
	
	/* The switch - the box around the slider */
	.switch {
	  position: relative;
	  display: inline-block;
	  width: 60px;
	  height: 34px;
	  vertical-align:middle;
	}
	
	/* Hide default HTML checkbox */
	.switch input {display:none;}
	
	/* The slider */
	.slider {
	  position: absolute;
	  cursor: pointer;
	  top: 0;
	  left: 0;
	  right: 0;
	  bottom: 0;
	  background-color: #ccc;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	.slider:before {
	  position: absolute;
	  content: "";
	  height: 26px;
	  width: 26px;
	  left: 4px;
	  bottom: 4px;
	  background-color: white;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	input:checked + .slider {
	  background-color: #2196F3;
	}
	
	input:focus + .slider {
	  box-shadow: 0 0 1px #2196F3;
	}
	
	input:checked + .slider:before {
	  -webkit-transform: translateX(26px);
	  -ms-transform: translateX(26px);
	  transform: translateX(26px);
	}
	
	/* Rounded sliders */
	.slider.round {
	  border-radius: 34px;
	}
	
	.slider.round:before {
	  border-radius: 50%;
	}
	
	p {
		margin:0px;
		display:inline-block;
		font-size:15px;
		font-weight:bold;
	}
	
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side"></div>

		<div id="main" >
			<!-- 로고로 만들어서 제작 -->
			<div id="logoImg">
				<img src=''>
			</div>
			<div id="mainTitle">
				디자인 요청 상세 내용
			</div>
			
			<form id="writeForm">
				<div class="leftLine">
					1. 어떤 작품을 원하시나요?
				</div>
				<div class="rightLine">
					<b>제목</b><br>
					<input id="inputText" type="text" value="제목들어갈부분"><br>
					<div class="br"></div>
					
					<b>카테고리</b><br>
					<select id="inputText">
						<option value="로고 이미지">컨텐츠 제작</option>
						<option value="편집 이미지">컨텐츠 수정</option>
						<option value="기타 이미지">기타</option>
					</select>
					<br>
					카테고리박스 좀더 이쁘게 만들 궁리중<br>
					<div class="br"></div>
					
					<b>의뢰인</b><br>
					홍길동<br>
					<div class="br"></div>
					
					<b>무엇을 디자인해드릴까요?</b><br>
					<textarea name="content" id="content"></textarea>
					<div class="br"></div>
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
				
				<div class="br" style="border-bottom: 2px solid gray"></div>
				<div class="br"></div>
				
				<div class="leftLine">
					2. 작품의 컨셉을 정해주세요.
				</div>
				<div class="rightLine">
					<div class="concept">우아하게</div>
					<div class="slider-wrap">
						<input id="concept1" class="range-slider__range" type="range" value="0" min="-50" max="50">
					</div>
					<div class="concept">터프하게</div>
					
					<div class="concept">재미있게</div>
					<div class="slider-wrap">
						<input id="concept2" class="range-slider__range" type="range" value="0" min="-50" max="50">
					</div>
					<div class="concept">진지하게</div>
					
					<div class="concept">화려하게</div>
					<div class="slider-wrap">
						<input id="concept3" class="range-slider__range" type="range" value="0" min="-50" max="50">
					</div>
					<div class="concept">수수하게</div>
					
					<div class="concept">대중적으로</div>
					<div class="slider-wrap">
						<input id="concept4" class="range-slider__range" type="range" value="0" min="-50" max="50">
					</div>
					<div class="concept">고급스럽게</div>
					
					<div class="concept">복고적으로</div>
					<div class="slider-wrap">
						<input id="concept5" class="range-slider__range" type="range" value="0" min="-50" max="50">
					</div>
					<div class="concept">현대적으로</div>
				</div>
				
				<div class="br" style="border-bottom: 2px solid gray"></div>
				<div class="br"></div>
				
				<div class="leftLine">
					3. 세부사항을 선택해주세요.
				</div>
				<div class="rightLine">
					<b>마감일</b><br>
					
					<select id="optionDay" class="selectDate" onchange="selectDate()">
						<option value="0">마감일</option>
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
						<option value="8">8일</option>
						<option value="9">9일</option>
						<option value="10">10일</option>
					</select>
					<select id="optionHour" class="selectDate" onchange="selectDate()">
						<option value="0">마감시간</option>
						<option value="1">1시간</option>
						<option value="2">2시간</option>
						<option value="3">3시간</option>
						<option value="4">4시간</option>
						<option value="5">5시간</option>
						<option value="6">6시간</option>
						<option value="7">7시간</option>
						<option value="8">8시간</option>
						<option value="9">9시간</option>
						<option value="10">10시간</option>
						<option value="11">11시간</option>
						<option value="12">12시간</option>
					</select>
					
					기한 : <span id="month"></span>월 <span id="day"></span>일 <span id="hour"></span>시
					<div class="br"></div>
					
					<script>
						var dt = new Date();
						$('#month').text(dt.getMonth() + 1)
						$('#day').text(dt.getDate())
						$('#hour').text(dt.getHours())
						
						function selectDate() {
							dt = new Date();
							
							dt.setDate(dt.getDate() + 1);
							console.log($('#optionDay option:selected').val())
							/* dt.setDate(dt.getDate() + $('#optionDay option:selected').val()) */
							/* dt.setHours(dt.setHours() + $('#optionHour option:selected').val()) */
							
							$('#month').text(dt.getMonth() + 1)
							$('#day').text(dt.getDate())
							$('#hour').text(dt.getHours())
						}
					</script>

					<b>의뢰비</b><br>
					<input id="inputText" type="text" value=""><br>
					<div class="br"></div>
					
					<b>공개여부</b><br>
					<label class="switch">
					<input type="checkbox">
					<span class="slider round"></span>
					</label>
					<p>&nbsp;공개</p><p style="display:none;">&nbsp;비공개</p>
					
					<script>
						var check = $("input[type='checkbox']");
						check.click(function(){
							$("p").toggle();
						});
					</script>
				</div>
				
				
				
				<br><br><br><br><br><br>
				
					<!-- 로고로 만들어서 제작 -->
				<div id="logoImg">
					<img src=''>
				</div>
				<div id="mainTitle">
					자료 첨부파일
				</div>
				
				<br><input type="file">
				<br><input type="file">
				<br><input type="file">
				<br><input type="file">
				파일첨부도 더 이쁜걸로 수정<br>
				
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
					
					$('#submit').click(function(){
						oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
						console.log(document.getElementById("content").value);
						
						
						console.log(document.getElementById("concept1").value);
					})
				</script>
			</form>
		</div>
		
		<!-- 공용영역 -->
		<div id="right-side"></div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>