<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.portpolioList{
		border: 1px solid black;
		height: 1700px;
	}

	.portpolioListTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#portpolioListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#portpolioListContent{
		height: 1570px;
		margin-top: 30px;
		border: 1px solid black;
	}
	
	.portpolioView{
		height: 1400px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px;		 
	}
	
	.portpolioImageArea{
		height: 1330px;
		width: 55%;
		border: 1px solid black;
		margin: 30px;
		display: inline-block;
	}
	
	.portpolioDesc{
		width: 34%;
		height: 1330px;
		border: 1px solid black;
		margin: 30px;
		display: inline-block;
	}
	
	.normalDesc{
		height: 450px;
		border-bottom: 1px solid black;
	}
	
	.BtnArea{
		border: 1px solid black;
		margin: 30px;
		height: 80px;
		width: 25%;
		margin-left: 500px;
		padding-top: 15px;
	}
	
	.updateBtn{
		display: inline-block;
		width: 45%;
		height: 80%;
		background: lightblue;
		margin-left: 15px;
		text-align: center;
	}
	
	.deleteBtn{
		display: inline-block;
		width: 45%;
		height: 80%;		
		background: lightblue;
		text-align: center;				
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
					<div class="portpolioView">
						<div class="portpolioImageArea"></div>
						<div class="portpolioDesc">
							<div class="normalDesc"></div>
							<div class="DesignDesc"></div>
						</div>
					</div>
					<div class="BtnArea">
						<div class="updateBtn">수정</div>
						<div class="deleteBtn">삭제</div>
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