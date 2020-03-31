<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		width: 20%;
		height: 50px;
		font-size: 16pt;
		text-align: center;
		line-height: 50px;
		margin: 10px;
		font-weight: bold;
	}
	.rightLine {
		display: inline-table;
		width: 70%;
		height: 50px;
		font-size: 16pt;
		line-height: 50px;
	}
	#content {
		width: 100%;
		height: 500px;
		
		border: 1px solid black;
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
	.editorId {
		display: inline-table;
		width: 20%;
		height: 30px;
		text-align: center;
	}
	.editorDate {
		display: inline-table;
		width: 15%;
		height: 30px;
		text-align: center;
	}
	.editorCheck {
		display: inline-table;
		width: 10%;
		height: 30px;
		text-align: center;
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
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
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
					카테고리
				</div>
				<div class="rightLine">
					로고 이미지
				</div>
				
				<div class="leftLine">
					의뢰인
				</div>
				<div class="rightLine">
					홍길동
				</div>
				
				<div class="leftLine">
					제목
				</div>
				<div class="rightLine">
					어플 로고 이미지 제작
				</div>
				
				<div class="leftLine" style="width: auto">
					무엇을 디자인해드릴까요?
				</div>
				
				<br>
				
				<div id="content">
					게시판 api가 글 내용을 이쁘게 받아와 줄거임^^ 
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
					참여 에디터
				</div>
				
				<br><br>
				
				<div class="editorId">
					user01
				</div>
				<div class="editorDate">
					20/03/25
				</div>
				<div class="editorCheck">
					<input type="radio" name="editor" value="">
				</div>
				<div class="editorId">
					user02
				</div>
				<div class="editorDate">
					20/03/25
				</div>
				<div class="editorCheck">
					<input type="radio" name="editor" value="">
				</div>
				<div class="editorId">
					user03
				</div>
				<div class="editorDate">
					20/03/25
				</div>
				<div class="editorCheck">
					<input type="radio" name="editor" value="">
				</div>
				<div class="editorId">
					user04
				</div>
				<div class="editorDate">
					20/03/25
				</div>
				<div class="editorCheck">
					<input type="radio" name="editor" value="">
				</div>
				<div class="editorId">
					user05
				</div>
				<div class="editorDate">
					20/03/25
				</div>
				<div class="editorCheck">
					<input type="radio" name="editor" value="">
				</div>
				
				
				
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
		
		<!-- 공용영역 -->
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>