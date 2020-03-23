<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>

	.maintitle
	{
	margin-top: 90px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid yellow;
	background: yellow;
	height: 70px; 	
	}
	
	.writingName
	{
	margin-top: 90px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid red;
	background: red;
	height: 70px; 	
	}
	
	.writingtitle
	{
	margin-top: 50px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid black;
	background: black;
	height: 170px; 	
	color: white;
	}
	
	.writingboard
	{
	margin-top: 140px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid green;
	background: green;
	height: 70px; 	
	}
	
	.Comments
	{
	margin-top: 50px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid pink;
	background: pink;
	height: 50px; 	
	}


</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: red">
			<div class ="maintitle"> 메인타이틀 영역
		
				<div class ="writingName"> 아이디(비회원은 닉네임 직접작성), 비밀번호(입력란)
		
					<div class ="writingtitle"> 제목입력란
		
						<div class="writingboard">글작성란 부분 파일 올리는부분
						</div>
		
						<div class="Comments">댓글 쓰는 부분
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