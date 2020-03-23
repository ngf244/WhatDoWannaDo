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
	
	.mainHeaderBar{text-align:left; width: 100%; height: 30px;	border: 1px solid black; }
 	#mainBar {
		margin-top: 20px;
		width: 100%;
		height: 200px;
		border: 1px solid black;		} 
	
	#buttonList button:nth-child(3){float:right;}
    #manyProject{margin-top: 20px; margin-left: 10px;  border:0px; background:#ffeeee;}

	#buttonSelectNSerch{margin-top: 20px; }
	#buttonSelectNSerch > .buttonSerch{float:right;}
	
	#img-thumbnail1{width:100px; height:100px; border: 1px solid black;}
	
	#onelist{border: 1px solid black;}
	#onelistTable tr{border: 1px solid black; }
	#onelistTable td{border: 1px solid black;}
	#onelistTable tr:nth-child(1) td:nth-child(2){border: 2px solid black; width:510px;}
	#onelistTable tr:nth-child(1) td:nth-child(3){border: 3px solid black; width:auto;}
	#onelist {border: 1px solid black;}
	#onelist > #categoryName{border:0px;}
	#onelist > #oneName{border:0px; }
	#onelist > #contentName{}
	#pageNum{border: 1px solid black; text-align: center;}
	
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="content" style="border: 2px solid black;">
			<div id="left-side" style="background-color: yellow;">
				<div>왼쪽 영역</div>
			</div>
			
			
	
			<!-- 공용영역 -->
			<div id="main" style="background: red">
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
				
				<input type="text" id="manyProject" name="manyContestProject" value="총 000개의 프로젝트" readonly="readonly" >  
				
					
				<div id="buttonSelectNSerch">
					<!-- 부트스트랩으로 아래로 창 열리게 해야 함.  -->
					<button id="buttonSelect">카테고리 / 진행상태</button>				
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
								<div id="categoryName">로고 디자인  &nbsp; | &nbsp; 제목</div> 
								<div >의뢰인 : editor1</div>
							</td>
							<td>
								<span class="howMoney">상금&nbsp;&nbsp;&nbsp;</span><span class="winMoney">&nbsp;&nbsp;700,000원</span>
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
					
					<table id="onelistTable">
						<tr>
							<td  rowspan="3">
								<img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'>
							</td>
							<td>
								<div id="categoryName">로고 디자인  &nbsp; | &nbsp; 제목</div> 
								<div >의뢰인 : editor1</div>
							</td>
							<td>
								<span class="howMoney">상금&nbsp;&nbsp;&nbsp;</span><span class="howMoney">&nbsp;&nbsp;700,000원</span>
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
					
					<table id="onelistTable">
						<tr>
							<td  rowspan="3">
								<img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'>
							</td>
							<td>
								<div id="categoryName">로고 디자인  &nbsp; | &nbsp; 제목</div> 
								<div >의뢰인 : editor1</div>
							</td>
							<td>
								<span class="howMoney">상금&nbsp;&nbsp;&nbsp;</span><span class="howMoney">&nbsp;&nbsp;700,000원</span>
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