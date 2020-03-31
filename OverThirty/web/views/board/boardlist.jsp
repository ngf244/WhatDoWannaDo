<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>
	.freeboard{
	
	 margin-top: 10px;
	 
	}
	
	.tableArea{
	
	 margin-top: 10px;
	 border-top-style: solid;
	 border-top-color: rgb(52, 152, 219);  
	 	  
	}
	
	
	#listArea{
	
	margin-top: 30px;
	border-bottom-style: solid;
	color: white;
	border-collapse: collapse; 
	border-spacing:0;
		  
	}
	
	#listArea tr:first-of-type{
	background-color: rgb(52, 152, 219);
	border-bottom-color: rgb(52, 152, 219);
	color: block;
	}
	
	
	.tableArea td {
	text-align: center;
	color: black;
	
	
	}
	
	
	.boardlist{
	margin-top: 300px;
	
	}
	
	
	.boardWriting{
	
	text-align: center;
	height: 40px; 	
	color: black;
	}
	
	.writingbutton{
	
	margin-top: 90px;
	position: relative;
	margin-right: 500px;
	width: 20%;
	height: 40px;
	
	}
	
	.backbutton{
	margin-left: 100px;
	text-align: center;
	
	}
</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: white">
			
  <div class="freeboard">자유갤러리</div>
	<div class ="tableArea">
	  <table id="listArea" style=" width: -webkit-fill-available;">
		<tr>
		 	<th class="post_no"><span class="num">번호</span></th>
			<th class="post_title"><span class="title">제목</span></th>
			<th class="post_writer">작성자</th>
			<th class="post_date">작성일</th>
			<th class="post_views">조회수</th>
			<th class="post_dation">추천수</th>
		</tr>
					<tr>
						<td class="post_no"><span class="num">1</span></td>
						<td class="post_title"><span class="title"></span>오늘의 의뢰</td>
						<td class="post_writer">써글인생</td>
						<td class="post_date"> 2002-10-20 </td>
						<td class="post_views">34</td>
						<th class="post_dation">30</th>
				   </tr>
	 </table>
			<div class="boardlist">
			</div>
		
			<div class="boardWriting">
				<button type="button" class="backbutton">이전</button>
				 	<a href="">[1]</a>
				 	<a href="">[2]</a>
				 	<a href="">[4]</a>
				 	<a href="">[5]</a>
				<button type="button" class="nextbutton">다음</button>
				<button type="button" class="writingbutton">글쓰기</button>
			</div>
						</div>
					</div>
		<div id="right-side" style="background: blue">
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>