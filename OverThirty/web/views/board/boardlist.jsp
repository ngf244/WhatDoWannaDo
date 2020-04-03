<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>
	.freeBackground {
		background-color: rgba(224, 224, 224, 0.16);
		border-bottom: 1px solid rgba(200, 200, 200, 0.7);
		padding-top: 20px;
		padding-bottom: 20px;
	}
	
	.freeHeaderBar {
		display: inline-table;
		margin-top: 50px;
		margin-left: 100px;
		text-align: left;
		font-size: 33px;
		font-weight: bolder;
		height: 90px;
	}

	#freeBar {
		display: inline-table;
		margin-top: 0px;
		margin-left: 30px;
		font-size: 20px;
		line-height: 200%;
		height: 100px;
	}

	#freeMenuBar{
		position: relative;
	}
	
	#freeDropCategory {
		width: 180px;
		position: relative;
		text-align: center;
		margin-left: 10px;
		display: inline-block;
		background-color: rgba(161, 206, 244, 0.55);
	}
	
	#freebuttonselect {
		line-height: 34px;
		height: 34px;
		background-color: rgba(161, 206, 244, 0.55);
		padding: 8px;
		padding-right:0px;
		font-size: 15px;
		border: none;
		font-weight: bolder;
	}
	
	.freedropdown-category {
		position: absolute;
		display: none;
		background-color: rgba(161, 206, 244, 0.55);
		min-width: 75px;
		text-align: center;
	}
	
	.freedropdown-category a {
		color: black;
		text-decoration: none;
		text-align: center;
		display: block;
	}
	
	.freedropdown-category a:hover {
		background-color: rgb(52, 152, 219);
	}
	
	#freeDropCategory:hover .freedropdown-category {
		display: block;
	}
	
	#freeDropCategory:hover #freebuttonselect {
		background-color: rgb(52, 152, 219);
	}


	.freedropdown-category > a {	
		width: 180px;
		height: 40px;
		line-height: 38px;	
		float: center;
		font-size: 15px;
		text-decoration: none;
		text-align: center;
		background-color: rgba(161, 206, 244, 0.7);
		color: black;
		font-weight: bold;
		z-index: 10;
	}

	#searchArea{
		width: 430px;
		position: absolute;
		right: 0%;
		top: 0%;
		vertical-align: top;
		/* background-color: red; */
	}

	select[name="searchOption"]{
		height: 48px;
		width: 120px;
		background-color: rgba(161, 206, 244, 0.55);
		border: 0.5px solid lightgray;
		font-size: 15px;
	}

	select[name="searchOption"]:hover{
		background-color: rgb(52, 152, 219);
		font-weight: bold;
	}

	input[name="searchWord"]{
		height: 45px;
		width: 230px;
		background-color: rgba(161, 206, 244, 0.55);
		margin-left: 5px;
		border: 0.5px solid lightgray;
		text-align: center;
		font-size: 15px;
	}

	input[name="searchWord"]+div{
		width: 45px;
		height: 45px;
		position: absolute;
		right: 3%;
		top: 5%;
		border: 1px solid black;
	}

	#freeBoardTitle{
		width: 98.5%;
		height: 45px;
		border: 3px solid rgba(204,204,204, 0.55);
		margin: auto;
		margin-top: 10px;
		position: relative;
		z-index: 1;
	}

	.input{
		/* position: absolute; */
		display: inline-block;
		line-height: 44px;
		height: 45px;
		font-weight: bolder;
		text-align: center;
		margin-left: 1.5%;
		margin-right: 1.5%;
	}

	.box1{
		width: 12%;
	}
	.box2{
		width: 30%;
	}
	.box3{
		width: 14%;
	}
	.box4{
		width: 5%;
	}
	.box5{
		width: 8%;
	}
	.box6{
		width: 8%;
	}

	.freeBoardList{
		width: 98.5%;
		height: 50px;
		margin: auto;
		margin-top: 3px;
		border-top: 1px solid rgba(204,204,204, 0.55);
	}

	.freeBoardList div[class~=box1]{
		color: orange;
	}
	.freeBoardList div[class~=box2] ~ div{
		font-weight: normal;
	}

	#freeBoardEnd{
		width: 98.5%;
		margin: auto;
		height: 0;
		border-bottom: 1px solid black;
	}

	
	
	.boardWriting{
	position: relative;
	text-align: center;
	height: 40px; 	
	color: black;
	}
	
	.writingbutton{
	position: absolute;
	right: 5%;
	width: 20%;
	height: 40px;
	}
	
</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: white">
			<div class="freeBackground">
		  		<div id="oneHeader">
					<div class="freeHeaderBar">자유 게시판</div>
					<div id="freeBar"></div>
				</div>
			</div>
			<br>
			<div id="freeMenuBar">
				<div id="freeDropCategory">
					<div id="freebuttonselect">&nbsp;전체 카테고리</div>
					<div class="freedropdown-category">
						<a href="#">제작 디자인</a> 
						<a href="#">편집 디자인</a> 
						<a href="#">기타 디자인</a>
					</div>
				</div>
				<form>
					<div id="searchArea">
						<select name="searchOption">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="writer">작성자</option>
							<option value="All">제목+내용</option>
						</select>
						<input name="searchWord" type="text" placeholder="검색어 입력">
						<div>돋보기 submit</div>
					</div>
				</form>
			</div>
			
			<div id="freeBoardTitle">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div class="freeBoardList">
				<div class="input box1">카테고리</div>
				<div class="input box2">제목</div>
				<div class="input box3">작성자</div>
				<div class="input box4">파일</div>
				<div class="input box5">조회수</div>
				<div class="input box6">추천수</div>
			</div>
			<div id="freeBoardEnd"></div>
			<br>
			<div class="boardWriting">
				<button type="button" class="backbutton">이전</button>
				<a href="">[1]</a>
				<a href="">[2]</a>
				<a href="">[4]</a>
				<a href="">[5]</a>
				<button type="button" class="nextbutton">다음</button>
				<button type="button" class="writingbutton">글쓰기</button>
					<div class="writeBtn">
				</div>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<jsp:include page="../cashboard/auctionBoard/auctionBoardList.jsp"/>
		</div>
		<div id="right-side" style="background: blue">
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>