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
					<select id="categoryDropDown">
						<option value="로고 이미지">로고 이미지</option>
						<option value="편집 이미지">편집 이미지</option>
						<option value="기타 이미지">기타 이미지</option>
					</select>
					카테고리박스 좀더 이쁘게 만들 궁리중
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
					<input type="text" value="제목들어갈부분">
				</div>
				
				<div class="leftLine" style="width: auto">
					무엇을 디자인해드릴까요?
				</div>
				
				<br>
				
				<textarea id="content">
					프로젝트 해온 팀들이 게시판 api 크게 2개
					서머노트랑 네이버에디터 많이 사용한다고 하는데
					서머노트는 쉬운대신에 구리고
					네이버에디터는 반대래욤 
				</textarea>
				
				<hr> <!-- 나중에 2px solid gray 로 수정 -->
				
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
				</script>
			</form>
		</div>
		
		<!-- 공용영역 -->
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>