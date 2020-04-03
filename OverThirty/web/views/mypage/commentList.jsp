<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.commentList{
		height: 990px;
		width: 80%;
		border: 1px solid lightgray;
		margin: auto;
	}

	.commentListTopArea{height: 60px; background: #4374D9; color: white; font-size: 18pt; box-shadow: 2px 2px 5px black;}
	
	#commentListText{font-weight: bolder; padding-left: 40px; margin-top: 12px; padding-right: 30px; display:inline-block;}

	#commentListContent{
		height: 900px;
		margin-top: 30px;
	}
	
	.cashBoardText{
		margin-left: 480px;
		margin-top: 30px;
		width: 30%;
		height: 80px;
	}
	
	.commentBoard{
/* 		height: 850px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px; */
		min-height:50px; padding-bottom: 50px;
		margin-left:auto; margin:auto; margin-top:50px;		 
	}
	
	/* 전체 댓글 게시판 테이블 */
	#boardTable{text-align:center; margin: auto;}
	#boardTable th{border-bottom: 3px solid lightgray; background: #ececec; height: 50px; font-size: 13pt; border-bottom: 3px solid #036;}
	#boardTable td{border-bottom: 1px solid lightgray; height: 40px; font-size: 11pt;}	
	#boardTable tr:hover{background: rgba(161, 206, 244, 0.55)}
	
	.orgBtn{
		width: 120px;
		height: 30px;
		text-align: center;
		background-color: rgb(39, 174, 96);
		color: white;
		border-radius: 5px;
		cursor: pointer;		
	}
	
	/* 페이징 처리 css */
	.pagingCenter{
		text-align: center;
	}
	
	.pagination{
		display: inline-block;
	}

	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	  border: 1px solid #ddd;
	}
	
	.pagination a.active {
	  background-color: rgb(52, 152, 219);
	  color: white;
	  border: 1px solid rgb(52, 152, 219);
	}
	
	.pagination a:hover:not(.active) {background-color: #ddd;}	
</style>
<title>전체 댓글</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="commentList">
				<div class="commentListTopArea">
					<div id="commentListText">전체 댓글 보기</div>	
				</div>
				<div id="commentListContent">
					<div class="commentBoard">
						<table id="boardTable">
							<thead>
								<tr>
									<th style="width: 60%;">댓글</th>
									<th style="width: 15%">원문보기</th>
									<th style="width: 20%">작성일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>
								<tr>
									<td>댓글 내용</td>
									<td><button class="orgBtn">원문보기</button></td>
									<td>2020.03.25.</td>							
								</tr>							
							</tbody>
						</table>
					</div>
					<div class="pagingCenter">
						<div class="pagination">
						<a href=""> &laquo; </a>
						<a href="" class="active"> 1 </a>
						<a href=""> 2 </a>
						<a href=""> 3 </a>
						<a href=""> 4 </a>
						<a href=""> 5 </a>
						<a href=""> 6 </a>
						<a href=""> 7 </a>
						<a href=""> 8 </a>
						<a href=""> &raquo; </a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>