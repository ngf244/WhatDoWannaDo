<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.editRecruitList{
		border: 1px solid black;
		height: 1200px;
	}

	.editRecruitListTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#editRecruitListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#editRecruitListContent{
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
	
	.editRecruitBoard{
		height: 730px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.editRecruitListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
	}
</style>
<title>지원자 모집 중</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="editRecruitList">
				<div class="editRecruitListTopArea">
					<div id="editRecruitListText">지원자 모집 중</div>	
				</div>
				<div id="editRecruitListContent">
					<div class="cashBoardText">Cash게시판</div>
					<div class="editRecruitBoard"></div>
					<div class="editRecruitListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>