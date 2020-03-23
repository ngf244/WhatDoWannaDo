<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.completeRequestList{
		border: 1px solid black;
		height: 1200px;
	}

	.completeRequestListTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#completeRequestListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#completeRequestListContent{
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
	
	.completeRequestBoard{
		height: 730px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.completeRequestListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
	}
</style>
<title>거래 완료</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="completeRequestList">
				<div class="completeRequestListTopArea">
					<div id="completeRequestListText">거래 완료</div>	
				</div>
				<div id="completeRequestListContent">
					<div class="cashBoardText">Cash게시판</div>
					<div class="completeRequestBoard"></div>
					<div class="completeRequestListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>