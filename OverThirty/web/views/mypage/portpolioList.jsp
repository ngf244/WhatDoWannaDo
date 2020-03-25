<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.portpolioList{
		border: 1px solid black;
		height: 2000px;
	}

	.portpolioListTopArea{height: 100px; background: #4374D9; color: white; box-shadow: 2px 2px 5px black;}
	
	#portpolioListText{font-size: 25pt; font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block; float: left;}
	
	#portpolioEnrollBtn{
		color: white;
		background: rgb(231, 76, 60);
		width: 6%;
		height: 30px;
		float: left;
		padding: 10px;
		border-radius: 10px;
		margin: 20px;
		margin-top: 24px;
		padding-left: 24px;
		line-height: 26px;
		font-weight: bold;
		cursor: pointer;
	}
	
	#portpolioListContent{
		height: 1870px;
		margin-top: 30px;
		border: 1px solid black;
	}
	
	.imageEditTap{
		width: 25%;
		height: 100px;
		display: inline-block;
		border: 1px solid black;
		margin-left: 170px;
		margin-top: 30px;
		cursor: pointer;
		background: rgb(52, 73, 94);
		color: white;
		font-size: 20pt;
		font-weight: bold;
		line-height: 90px;
		padding-left: 30px;
	}
	
	.videoEditTap{
		width: 25%;
		height: 100px;
		display: inline-block;
		border: 1px solid black;
		margin-left: 170px;
		margin-top: 30px;		
		cursor: pointer;
		background: rgb(52, 73, 94);
		color: white;
		font-size: 20pt;
		font-weight: bold;
		line-height: 90px;
		padding-left: 30px;
	}
	
	.portpolioBoard{
		height: 1530px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.portpolioListPaging{
		width: 50%;
		height: 100px;
		border: 1px solid black;
		margin: 30px;
		float: left;
		margin-left: 350px;
	}
</style>
<title>포트폴리오</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="portpolioList">
				<div class="portpolioListTopArea">
					<div id="portpolioListText">포트폴리오</div>
					<div id="portpolioEnrollBtn">등록하기</div>
				</div>
				<div id="portpolioListContent">
					<div class="editClass">
						<div class="imageEditTap">이미지 편집</div>
						<div class="videoEditTap">동영상 편집</div>
					</div>
					<div class="portpolioBoard">
						포트폴리오 썸네일 뷰 가로 4개 x 세로 4개
					</div>
					<div class="portpolioListPaging">
						페이징 영역
					</div>
					<div id="portpolioEnrollBtn">등록하기</div>
				</div>
			</div>
		</div>
		<div id="right-side">
			
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>