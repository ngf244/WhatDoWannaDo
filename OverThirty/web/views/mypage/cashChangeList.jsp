<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.commentList{
		border: 1px solid black;
		height: 1200px;
	}

	.commentListTopArea{height: 100px; background: #FFE08C; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#commentListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#commentListContent{
		height: 1070px;
		margin-top: 30px;
		border: 1px solid black;
	}
	
	.cashBoardText{
		margin-left: 480px;
		margin-top: 30px;
		width: 30%;
		height: 80px;
		border: 1px solid black;
	}
	
	.commentBoard{
		height: 850px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.commentListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
	}
</style>
<title>Cash 내역</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="commentList">
				<div class="commentListTopArea">
					<div id="commentListText">Cash 변동내역</div>	
				</div>
				<div id="commentListContent">
					<div class="commentBoard"></div>
					<div class="commentListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>