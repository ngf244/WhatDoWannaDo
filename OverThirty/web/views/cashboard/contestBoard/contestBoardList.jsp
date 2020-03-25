<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#content{
		width: 100%;
		min-height: 600px;
	}
	#left-side{
		float:left;
		width: 12%;
		display: inline-block;
		min-height: 600px;
		margin-top: 20px;
		margin-bottom: 20px;
		margin: auto;
	}
	#main {
		width : 70%;
		display : inline-block;
		min-height : 600px;
		/* margin-bottom: 20px; */
		margin: auto;
		
		/* border: 1px solid black; */
	}
	#right-side{
		float:right;
		width : 16.5%;
		min-height : 600px;
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
	
	#randomThumbnail{margin-left: 950px; margin-top: 80px; width: 250px; height:250px; border: 1px solid black; display: inline; position: absolute; }
	
	.mainHeaderBar{margin-top: 50px; text-align:left; width: 100%; height: 100px; border: 1px solid black; }
 	#mainBar {
		margin-top: 40px;
		width: 100%;
		height: 100px;
		border: 1px solid black;		} 
	#buttonList{margin-top: 80px; }
	#buttonList button:nth-child(1){margin-left: 20px;}
	#buttonList button:nth-child(3){float:right;margin-right: 20px;}
	
    #manyProject{margin-top: 20px; width: 360px; margin-left: 20px;  font-size:20px; border:0px; background:#ffeeee; }


 
				
		
	/* 카테고리, 진행상태 버튼 */		
	#buttonSelectNSerch{margin-top: 20px;  margin-left: 20px; margin-right:20px; position: relative; display: inline-block;}
	#buttonSelect{
			
			background-color: #FFDAB9;
			padding: 8px;
			font-size: 15px;
			border: none;
		}		
	#buttonSelectNSerch{display: block; border: 1px solid black;}	
	#dropCategory{position: relative; display: inline-block;}	
	.dropdown-category{			
			display: none;
			position: absolute;
			background-color: #FFDAB9;
			min-width: 75px;
			padding: 5px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);}	
	.dropdown-category a{
			color: black;
			padding: 8px;
			text-decoration: none;
			display: block;
	}
	
	.dropdown-category a:hover { background-color: #CD853F; }
	#dropCategory:hover .dropdown-category { display: block; }	 
	#dropCategory:hover #buttonSelect{ background-color: #CD853F; }
	
	
	#progressSelect{
		background-color: #FFDAB9;
		padding: 8px;
		font-size: 15px;
		border: none;
	}	
	#dropProgress{position: relative; display: inline-block;}	
	.dropdown-prgress{			
			display: none;
			position: absolute;
			background-color: #FFDAB9;
			min-width: 75px;
			padding: 5px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);}	
	.dropdown-prgress a{
			color: black;
			padding: 8px;
			text-decoration: none;
			display: block;
	}
	
	.dropdown-prgress a:hover { background-color: #CD853F; }
	#dropProgress:hover .dropdown-prgress { display: block; }	 
	#dropProgress:hover #progressSelect{ background-color: #CD853F; }
			
	#buttonSelectNSerch > .buttonSerch{position: relative; background-color: #FFDAB9; padding: 8px; font-size: 15px;
			border: none; float:right;}
	
	
	
	
	#onelistForm{margin-left:20px; margin-right:20px; margin-top:50px;}
	#img-thumbnail1{width:200px; height:200px; border: 1px solid black;}
	#onelistTable tr{border: 1px solid black; }
	#onelistTable td{border: 1px solid black;}
	#onelistTable tr:nth-child(1) td:nth-child(2){border: 2px solid black; width:900px; height: 10px;}
	#onelistTable tr:nth-child(1) td:nth-child(3){border: 3px solid black; width:300px; height: 80px; }
	#onelist {border: 1px solid black;}
	#onelist > #categoryName{border:0px;}
	#onelist > #oneName{border:0px; }
	#onelist > #contentName{}
	#categoryName{display: inline-block; height:40px;}
	#categorySubject{display: inline-block;}
	#contentName{height:100px;}
	
	/* 상금 */
	#moneyDiv{ line-height: 100px; text-align: center;}
	.howMoney{font-size: 20px; background-color: rgba(224, 224, 224, 0.5); }
	.winMoney{font-size: 20px; background-color: rgba(224, 224, 224, 0.5); }
		
	/* 쪽번호 위치 */
	#pageNum{margin-left:20px; margin-right:20px; border: 1px solid black; background-color: pink; text-align: center;}
	
	
	
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="content" >
			<div id="left-side" style="background-color: yellow;">
				<div>왼쪽 영역</div>
			</div>
			
			
	
			<!-- 공용영역 -->
			<div id="main" style="background: white;">
				<div id="randomThumbnail"> 
					랜덤 사진값
				</div>
				<!-- 게시판 리스트 상단 -->
				<div id="oneHeader">
					<div class="mainHeaderBar">콘테스트 프로젝트</div>
						<div id="mainBar">
							굉장히 쉽고 빠르게 의뢰하면서 <br>
							다양한 에디터들에게 수많은 디자인을 받아보세요.
						</div>
				</div>
				
				<!-- 리스트 버튼  -->
				<div id="buttonList">
					<button>콘테스트 리스트</button>
					<button>이용 가이드</button>
					<button>콘테스트 개최</button>
				</div>
				
				<hr>
				
				<input type="text" id="manyProject" name="manyContestProject" value="총 000개의 프로젝트가 선정되었습니다." readonly="readonly" >  
				
					
				<div id="buttonSelectNSerch">
					<div id="dropCategory">
						<button id="buttonSelect">&nbsp; 전체 카테고리 &nbsp;</button>
							<div class="dropdown-category">
								<a href="#">로고 디자인</a>
								<a href="#">편집 디자인</a>
								<a href="#">기타 디자인</a>
							</div>
					</div>
					<div id="dropProgress">					
						<button id="progressSelect">진행상태</button>
							<div class="dropdown-prgress">
								<a href="#">진행 중</a>
								<a href="#">마감</a>
							</div>				
					</div>		
					<input type="button" class="buttonSerch" value="검색"><input type="text" class="buttonSerch">
				</div>
				
				<div>
				
				</div>
				
				<!-- 리스트 시작 -->
				<form id="onelistForm">
					<table id="onelistTable">
						<tr>
							<td  rowspan="3">
								<img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'>
							</td>
							<td>
								<div id="categoryName">로고 디자인  </div>
								<div id="categorySubject"> | 제목</div>
								<div >의뢰인 : editor1</div>
							</td>
							<td>
								<div id="moneyDiv"><span class="howMoney">상금&nbsp;&nbsp;&nbsp;</span><span class="winMoney">&nbsp;&nbsp;700,000원</span></div>
							</td>
						</tr>
						<tr>
							<td>
								<div id="contentName">내용</div>		
							</td>
							<td>
								<span id="dDay-editor">모집 마감일&nbsp;</span><span>3/21(토) </span> <span>지원자  </span> <span>2명</span>
							</td>
						</tr>
					</table>
					
					
				</form>
				
				<div id="pageNum">
					쪽 번호 들어갈 부분
				</div>
				
				
				
			<!-- main영역 끝 -->	
			</div>
			
			<!-- 공용영역 -->
			<div id="right-side" style="background: blue">
				<div>오른쪽 영역</div>
			</div>
		</div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>