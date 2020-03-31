<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
<
link href ="https: //fonts.googleapis.com /css?family=Noto+Sans+KR
	 &display =swap" rel ="stylesheet ">#content {
	width: 100%;
	min-height: 600px;
}

#left-side {
	float: left;
	width: 12%;
	display: inline-block;
	min-height: 600px;
	margin-top: 20px;
	margin-bottom: 20px;
	margin: auto;
}

#main {
	width: 70%;
	display: inline-block;
	min-height: 600px;
	/* margin-bottom: 20px; */
	margin: auto;

	/* border: 1px solid black; */
}

#right-side {
	float: right;
	width: 16.5%;
	min-height: 600px;
	display: inline-block;
	margin-bottom: 20px;
	margin: auto;
}

#slideBar {
	margin-top: 50px;
	width: 100%;
	height: 200px;
	border: 1px solid black;
}

.mainBackground {
	background-color: rgba(224, 224, 224, 0.16);
	border-bottom: 1px solid rgba(200, 200, 200, 0.7);
	padding-top: 70px;
	padding-bottom: 70px;
	padding-top: 70px;
}

#randomThumbnail {
	width: 200px;
	height: 200px;
	border: 1px solid black;
	display: block;
	position: absolute;
}

#randomThumbnailForm {
	margin-left: 1150px;
	margin-top: 0px;
	width: 200px;
	height: 200px;
	display: inline;
	position: absolute;
	text-align: center;
}

.mainHeaderBar {
	display: inline-table;
	margin-top: 50px;
	margin-left: 100px;
	text-align: left;
	font-size: 33px;
	font-weight: bolder;
	height: 90px;
}

#mainBar {
	display: inline-table;
	margin-top: 0px;
	margin-left: 30px;
	
	font-size: 20px;
	line-height: 200%;
	height: 100px;
}

#manyProjectForm{
	margin-left:30px;
}

#manyProject {
	margin-top: 30px;
	margin-left: 0px;
	margin-bottom: 30px;
	width: 35px;
	font-size: 20px;
	border: 0px;
}

/* 카테고리, 진행상태 버튼 */
#buttonSelectNSerch {
	margin-top: 20px;
	margin-left: 20px;
	margin-right: 20px;
	position: relative;
	display: inline-table;
}

#buttonSelect {

	width: 172px;
	line-height: 34px;
	height: 34px;
	background-color: rgba(161, 206, 244, 0.55);
	padding: 8px;
	padding-right:0px;
	font-size: 15px;
	border: none;
	font-weight: bolder;
}

#buttonSelectNSerch {
	display: block;
	}

#dropCategory {
	position: relative;
	display: inline-block;
	text-align: center;
	
}

.dropdown-category {
	display: none;
	position: absolute;
	background-color: rgba(161, 206, 244, 0.55);
	min-width: 75px;
	text-align: center;
}

.dropdown-category a {
	color: black;
	text-decoration: none;
	text-align: center;
	display: block;
}

.dropdown-category a:hover {
	background-color: rgb(52, 152, 219);
}

#dropCategory:hover .dropdown-category {
	display: block;
}

#dropCategory:hover #buttonSelect {
	background-color: rgb(52, 152, 219);
}


.dropdown-category > a {	
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
	
}





#dropProgress {
	display: inline-table;
	width: 200px;
	margin-right: 35px;
}

.progress {
	display: inline-block;
	line-height: 34px;
	height: auto;
	background-color: white;
	padding: 8px;
	font-size: 15px;
	border: 1px solid rgba(200, 200, 200, 0.6);
	cursor: pointer;
}

.dropProgressActive {
	list-style: none;
	display: inline-block;
	margin: 0;
	padding: 0;
}

#guideBtn {
	display: inline-block;
	line-height: 34px;
	height: 34px;
	background-color: rgba(161, 206, 244, 0.55);
	padding: 8px;
	font-size: 15px;
	border: 0px solid rgba(200, 200, 200, 0.6);
	cursor: pointer;
}

#searchBtn {
	display: inline-block;
	margin-left: 38%;
	margin-right: 20px;
}

.buttonSerch {
	display: inline-block;
	line-height: 34px;
	height: 34px;
	background-color: white;
	padding: 8px;
	font-size: 15px;
	border: 1px solid #b8b8b8x;
}

#imgSearch {
	width: 40px;
	height: 34px;
}

#img-thumbnail1 {
	width: 200px;
	height: 200px;
	border: 1px solid black;
}

.boardCate {
	color: #e54e40;
	display: inline-block;
	font-size: 19px;
}

.boardTitle {
	color: black;
	display: inline-block;
	font-size: 19px;
}

.boardContent {
	color: black;
	display: inline-block;
	font-size: 16px;
}

#categoryName {
	display: inline-block;
	height: 40px;
}

#categorySubject {
	display: inline-block;
}

#contentName {
	height: 100px;
}

.boardList {
	cursor:pointer;
	padding: 10px;
	margin: 20px;
	border: 1px solid #d6d6d6;
	border-bottom-color: #b8b8b8;
	border-right-color: #b8b8b8;
}

.boardImg {
	display: inline-table;
	width: 140px;
	height: 140px;
	margin: 5px;
	border: 1px solid black;
}
.boardReq{
	margin-top: 10px;
	padding-bottom:5px;
	margin-bottom: 13px; 
	border-bottom:1px solid black;
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
}

.rightCon {
	display: inline-table;
	width: 25%;
	height: 140px;
	float: right;
}

.rightBtn {
	display: inline-table;
	width: 100%;
	height: 38px;
	margin: 5px;
	margin-top:8px;
	line-height: 35px;
	font-weight: bold;
	text-align: center;
	border-radius: 5px;
	background-color: rgb(235, 239, 242);
	line-height: 35px;
}

#pageNum {
	margin-top: 15px;
	margin-left: 17px;
	margin-right: 20px;
	text-align: left;
	border-top: 1px solid black;
	padding-top: 8px;
}

.pageBtn {
	display: inline-table;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin: 1px;
	cursor: pointer;
	text-align: center;
}

#pageNum :nth-child(1) {
	background-color: #302f3a;
	color: white;
}

#pageNum :nth-child(2) {
	background-color: #ddd;
	color: black;
}

#pageNum :nth-child(3) {
	background-color: #ddd;
	color: black;
}

#pageNum > a {	
	width: 180px;
	height: 40px;
	line-height: 38px;	
	float: right;
	font-size: 15px;
	text-decoration: none;
	text-align: center;
	background-color: red;
	color: white;
	font-weight: bold;
	padding: 10px 0;
	
}


</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp" />
	<section>
		<div id="content">
			<div id="left-side" style="background-color: yellow;">
				<div>왼쪽 영역</div>
			</div>

			<!-- 공용영역 -->
			<div id="main" style="background: white;">
				<div class="mainBackground">
					<div id="randomThumbnailForm">
						1:1에 참여하세요
						<div id="randomThumbnail">랜덤 사진값</div>
					</div>

					<!-- 게시판 리스트 상단 -->
					<div id="oneHeader">
						<div class="mainHeaderBar">1:1 의뢰</div>
						<div id="mainBar">
							한 명의 디자이너에게 의뢰하고 싶을 때는 1:1 프로젝트를 이용하세요.<br> 프로젝트 내용을 등록하면 관심있는 디자이너가 지원합니다.
						</div>
					</div>
				</div>




				<div id="manyProjectForm">총 <input type="text" id="manyProject" name="manyContestProject"
					value="000" readonly="readonly">개의 프로젝트가 선정되었습니다.
				</div>	


				<div id="buttonSelectNSerch">
					<div id="dropCategory">
						<div id="buttonSelect">&nbsp;전체 카테고리</div>
						<div class="dropdown-category">
							<a href="#">제작 디자인</a> 
							<a href="#">편집 디자인</a> 
							<a href="#">기타 디자인</a>
						</div>
					</div>
					<div id="dropProgress">
						<ul class="dropProgressActive">
							<li class="progress">전체</li>
							<li class="progress">진행 중</li>
							<li class="progress">마감</li>
						</ul>
					</div>
					<div id="guideBtn">이용 가이드</div>
					<div id=searchBtn>
						<input type="text" class="buttonSerch" placeholder="1:1의뢰 검색"> <img id="imgSearch" src="imgSearch1.png" alt="go">
					</div>
				</div>


				<!-- 리스트 시작 -->
				<div class="boardList">
					<div class="boardImg">
						<img src="">
					</div>
					<div class="boardCon">
						<div class="leftCon">
							<div class="boardCate">
								<b>로고 디자인 &nbsp; |</b>
							</div>
							&nbsp;
							<div class="boardTitle">
								<b>제목 </b>
							</div>
							<div class="boardReq">의뢰인 : editor</div>
								<div class="boardContent">
								내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록 해서 내용 충분히 이어지도록
								죽는 날까지 하늘을 우러러 한 점 부끄럼이 없기를, 잎새에 이는 바람에도 나는 괴로워했다. 별을 노래하는 마음으로 모든 죽어 가는 것을 사랑해야지 그리고 나한테 주어진 길을 걸어가야겠다. 오늘 밤에도 별이 바람에 스치운다.
								</div>
						</div>
						<div class="rightCon">
							<div class="rightBtn">참여자 : 10명</div>
							<div class="rightBtn">~ 2020.04.01</div>
							<div class="rightBtn">상금 : 10만원</div>
						</div>
					</div>
				</div>
				<div class="boardList">
					<div class="boardImg">
						<img src="">
					</div>
					<div class="boardCon">
						<div class="leftCon">
							<div class="boardCate">
								<b>로고 디자인 &nbsp; |</b>
							</div>
							&nbsp;
							<div class="boardTitle">
								<b>제목 </b>
							</div>
							<div class="boardReq">의뢰인 : editor</div>
								<div class="boardContent">
								내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록 해서 내용 충분히 이어지도록
								죽는 날까지 하늘을 우러러 한 점 부끄럼이 없기를, 잎새에 이는 바람에도 나는 괴로워했다. 별을 노래하는 마음으로 모든 죽어 가는 것을 사랑해야지 그리고 나한테 주어진 길을 걸어가야겠다. 오늘 밤에도 별이 바람에 스치운다.
								</div>
						</div>
						<div class="rightCon">
							<div class="rightBtn">참여자 : 10명</div>
							<div class="rightBtn">~ 2020.04.01</div>
							<div class="rightBtn">상금 : 10만원</div>
						</div>
					</div>
				</div>
				<div class="boardList">
					<div class="boardImg">
						<img src="">
					</div>
					<div class="boardCon">
						<div class="leftCon">
							<div class="boardCate">
								<b>로고 디자인 &nbsp; |</b>
							</div>
							&nbsp;
							<div class="boardTitle">
								<b>제목 </b>
							</div>
							<div class="boardReq">의뢰인 : editor</div>
								<div class="boardContent">
								내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록 해서 내용 충분히 이어지도록
								죽는 날까지 하늘을 우러러 한 점 부끄럼이 없기를, 잎새에 이는 바람에도 나는 괴로워했다. 별을 노래하는 마음으로 모든 죽어 가는 것을 사랑해야지 그리고 나한테 주어진 길을 걸어가야겠다. 오늘 밤에도 별이 바람에 스치운다.
								</div>
						</div>
						<div class="rightCon">
							<div class="rightBtn">참여자 : 10명</div>
							<div class="rightBtn">~ 2020.04.01</div>
							<div class="rightBtn">상금 : 10만원</div>
						</div>
					</div>
				</div>
				<div class="boardList">
					<div class="boardImg">
						<img src="">
					</div>
					<div class="boardCon">
						<div class="leftCon">
							<div class="boardCate">
								<b>로고 디자인 &nbsp; |</b>
							</div>
							&nbsp;
							<div class="boardTitle">
								<b>제목 </b>
							</div>
							<div class="boardReq">의뢰인 : editor</div>
								<div class="boardContent">
								내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록 해서 내용 충분히 이어지도록
								죽는 날까지 하늘을 우러러 한 점 부끄럼이 없기를, 잎새에 이는 바람에도 나는 괴로워했다. 별을 노래하는 마음으로 모든 죽어 가는 것을 사랑해야지 그리고 나한테 주어진 길을 걸어가야겠다. 오늘 밤에도 별이 바람에 스치운다.
								</div>
						</div>
						<div class="rightCon">
							<div class="rightBtn">참여자 : 10명</div>
							<div class="rightBtn">~ 2020.04.01</div>
							<div class="rightBtn">상금 : 10만원</div>
						</div>
					</div>
				</div>
				<div class="boardList">
					<div class="boardImg">
						<img src="">
					</div>
					<div class="boardCon">
						<div class="leftCon">
							<div class="boardCate">
								<b>로고 디자인 &nbsp; |</b>
							</div>
							&nbsp;
							<div class="boardTitle">
								<b>제목 </b>
							</div>
							<div class="boardReq">의뢰인 : editor</div>
								<div class="boardContent">
								내용 : 어쩌고저쩌고 폰트도 좀 바꾸고 내용도 길게 받아서 2줄 3줄 되도록 해서 내용 충분히 이어지도록
								죽는 날까지 하늘을 우러러 한 점 부끄럼이 없기를, 잎새에 이는 바람에도 나는 괴로워했다. 별을 노래하는 마음으로 모든 죽어 가는 것을 사랑해야지 그리고 나한테 주어진 길을 걸어가야겠다. 오늘 밤에도 별이 바람에 스치운다.
								</div>
						</div>
						<div class="rightCon">
							<div class="rightBtn">참여자 : 10명</div>
							<div class="rightBtn">~ 2020.04.01</div>
							<div class="rightBtn">상금 : 10만원</div>
						</div>
					</div>
				</div>


				

				<!-- 쪽번호 부분 -->
				<script>
					$('.boardCon').width($('.boardList').width() - 200)
				</script>

				<div id="pageNum">
					<div class="pageBtn">1</div>
					<div class="pageBtn">2</div>
					<div class="pageBtn">3</div>
					<!-- 의뢰  버튼  -->
					<a href="#">1:1 의뢰하기</a>
				</div>
			</div>


			<!-- main영역 끝 -->
		</div>

		<!-- 공용영역 -->
		<div id="right-side" style="background: blue">
			<div>오른쪽 영역</div>
		</div>
	</section>
	<jsp:include page="../../common/footer.jsp" />




</body>
</html>