<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#oneHeader {
		margin-top: 50px;
	}
	#mainHeaderBar{
		text-align: center;
		display: inline-table;
		font-size: 18pt;
		font-weight: bold;
		margin-right: 20px;
		padding: 10px;
		background-color: rgba(224, 224, 224, 0.4);
		border-radius: 5px;
	}
 	#mainBar {
		display: inline-table;
		font-size: 14pt;
		line-height: 1.8;
		padding: 5px;
	} 
	#buttonList {
		margin-top: 50px;
		padding-bottom: 20px;
		border-bottom: 2px solid gray;
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
	#goWrite {
		float: right;
		background-color: rgb(244, 67, 54);
		color: white;
	}
    #manyProject {
    	display: inline-table;
    	padding: 10px;
    	margin-top: 20px; 
    	margin-left: 10px;  
    	background: #ffeeee;
    }

	#buttonSelectNSerch {
		margin-top: 30px;
		margin-bottom: 20px;
	}
	.select {
		display: inline-table;
		height: 30px;
		line-height: 30px;
		padding: 10px;
		padding-left: 30px;
		padding-right: 30px;
		margin: 15px;
		font-size: 14pt;
		border: 1px solid black;
	}
	#searchForm {
		float: right;
	}
	.buttonSerch {
		margin-top: 25px;
		margin-bottom: 25px;
		height: 30px;
		font-size: 14pt;
	}
	.boardList {
		padding: 10px;
		margin: 20px;
		
		border: 1px solid black;
	}
	.boardImg {
		display: inline-table;
		width: 140px;
		height: 140px;
		margin: 5px;
		
		border: 1px solid black;
	}
	.boardCon {
		/* width 값은 script로 별도 지정 */
		display: inline-table;
		height: 140px;
		margin: 5px;
	}
	.leftCon {
		display: inline-table;
		width: 70%;
		height: 140px;
		margin-left: 10px;
		
		/* border: 1px solid black; */
	}
	.rightCon {
		display: inline-table;
		width: 25%;
		height: 140px;
		float: right;
		
		/* border: 1px solid black; */
	}
	.rightBtn {
		display: inline-table;
		width: 100%;
		height: 35px;
		margin: 5px;
		line-height: 35px;
		font-weight: bold;
		text-align: center;
		border-radius: 5px;
		background-color: rgb(235, 239, 242);
	}
	#pageNum {
		margin-top: 30px;
		text-align: center;
	}
	.pageBtn {
		display: inline-table;
		width: 40px;
		height: 40px;
		line-height: 40px;
		margin: 5px;
		cursor: pointer;
		
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
			<!-- 게시판 리스트 상단 -->
			<div id="oneHeader">
				<div id="mainHeaderBar">=== 1:1 의뢰 ===</div>
				<div id="mainBar">
					한 명의 디자이너에게 의뢰하고 싶을 때는 1:1 프로젝트를 이용하세요.<br>
					프로젝트 내용을 등록하면 관심있는 디자이너가 지원합니다.
				</div>
			</div>
			
			<!-- 리스트 버튼  -->
			<div id="buttonList">
				<div id="reqList" class="button">의뢰리스트</div>
				<div id="guide" class="button">이용 가이드</div>
				<div id="goWrite" class="button">1:1 의뢰하기</div>
			</div>
			
			<script>
				$('#reqList').hover(function(){
					$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
				}, function(){
					$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
				});
				$('#guide').hover(function(){
					$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
				}, function(){
					$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
				})
			</script>
			
			<div id="manyProject"><b>총 123개</b>의 프로젝트</div><br>
				
			<div id="buttonSelectNSerch">
				<!-- 부트스트랩으로 아래로 창 열리게 해야 함.  -->
				<div class="select">카테고리 ▼</div>
				<div class="select">진행상태 ▼</div>
				
				<form id="searchForm">
					<input type="text" class="buttonSerch">
					<input type="button" class="buttonSerch" value="검색">	
				</form>
			</div>
			
			<!-- 리스트 시작 -->
			<div class="boardList">
				<div class="boardImg">
					<img src="">
				</div>
				<div class="boardCon">
					<div class="leftCon">
						 <b>로고 디자인  &nbsp; | &nbsp; 제목 </b><br>
						 의뢰인 : editor<br>
						 내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록
					</div>
					<div class="rightCon">
						<div class="rightBtn">
							참여자 : 10명
						</div>
						<div class="rightBtn">
							~ 2020.04.01
						</div>
						<div class="rightBtn">
							지원하기
						</div>
					</div>
				</div>
			</div>
			
			<div class="boardList">
				<div class="boardImg">
					<img src="">
				</div>
				<div class="boardCon">
					<div class="leftCon">
						 <b>로고 디자인  &nbsp; | &nbsp; 제목 </b><br>
						 의뢰인 : editor<br>
						 내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록
					</div>
					<div class="rightCon">
						<div class="rightBtn">
							참여자 : 10명
						</div>
						<div class="rightBtn">
							~ 2020.03.23
						</div>
						<div class="rightBtn">
							마감
						</div>
					</div>
				</div>
			</div>
			
			
			<script>
				$('.boardCon').width($('.boardList').width() - 200)
			</script>
			
			<div id="pageNum">
				<div class="pageBtn">1</div>
				<div class="pageBtn">2</div>
				<div class="pageBtn">3</div>
			</div>
		</div>
		
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>