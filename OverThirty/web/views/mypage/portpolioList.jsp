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

	.portpolioListTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#portpolioListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#portpolioListContent{
		height: 1870px;
		margin-top: 30px;
		border: 1px solid black;
	}
	
	.imageEditTap{
		width: 30%;
		height: 100px;
		display: inline-block;
		border: 1px solid black;
		margin-left: 170px;
		margin-top: 30px;
	}
	
	.videoEditTap{
		width: 30%;
		height: 100px;
		display: inline-block;
		border: 1px solid black;
		margin-left: 170px;
		margin-top: 30px;		
	}
	
	.portpolioBoard{
		height: 1530px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.portpolioListPaging{
		height: 120px;
		border: 1px solid black;
		margin: 30px;
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
				</div>
				<div id="portpolioListContent">
					<div class="editClass">
						<div class="imageEditTap">이미지 편집</div>
						<div class="videoEditTap">동영상 편집</div>
					</div>
					<div class="portpolioBoard"></div>
					<div class="portpolioListPaging"></div>
				</div>
			</div>
		</div>
		<div id="right-side">
			
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>