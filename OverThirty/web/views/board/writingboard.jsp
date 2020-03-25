<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>
	
	.writingName
	{
	margin-top: 40px;
	text-align: left;
	background: white;
	height: 60px;
	color: black; 	
	}
	
	.writingtitle
	{
	margin-top: 30px;
	text-align: left;
	background: black;
	height: 40px; 	
	color: white;
	}
	
	.writingboard
	{
	margin-top: 15px;
	text-align: left;
	background: green;
	height: 400px; 	
	}
	
	.fileupload
	{
	margin-top: 350px;
	text-align: left;
	background: pink;
	height: 30px; 	
	}
	
	.writingbutton
	
	{
	margin-top: 5px;
	text-align: left;
	background: skyblue;
	height: 30px; 	
	}


</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: red">
		
				<div class ="writingName"> 아이디(비회원은 닉네임 직접작성), 비밀번호(입력란)
		
					<div class ="writingtitle"> 제목입력란
		
						<div class="writingboard">글작성부분						
		
							<div class="fileupload">파일올리는부분
							
								<div class="writingbutton">작성완료 or 취소버튼
							
							
							   </div>
							</div>
						</div>
					</div>
				</div>		
			</div>
		<div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>