<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.applyParticipateList{
		border: 1px solid black;
		height: 1200px;
	}

	.applyParticipateListTopArea{height: 100px; background: rgb(241, 179, 80); color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#applyParticipateListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#applyParticipateListContent{
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
	
	.applyParticipateBoard{
		height: 730px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.applyParticipateListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
	}
</style>
<title>의뢰 참가</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="applyParticipateList">
				<div class="applyParticipateListTopArea">
					<div id="applyParticipateListText">의뢰 참가 중</div>	
				</div>
				<div id="applyParticipateListContent">
					<div class="cashBoardText">Cash게시판</div>
					<div class="applyParticipateBoard"></div>
					<div class="applyParticipateListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>