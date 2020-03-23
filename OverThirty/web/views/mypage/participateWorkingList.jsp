<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.participateWorkingList{
		border: 1px solid black;
		height: 1200px;
	}

	.participateWorkingListTopArea{height: 100px; background: rgb(241, 179, 80); color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#participateWorkingListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#participateWorkingListContent{
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
	
	.participateWorkingBoard{
		height: 730px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.participateWorkingListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
	}
</style>
<title>작업 진행 중</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="participateWorkingList">
				<div class="participateWorkingListTopArea">
					<div id="participateWorkingListText">작업 진행 중</div>	
				</div>
				<div id="participateWorkingListContent">
					<div class="cashBoardText">Cash게시판</div>
					<div class="participateWorkingBoard"></div>
					<div class="participateWorkingListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>