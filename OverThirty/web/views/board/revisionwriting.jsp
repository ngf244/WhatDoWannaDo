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
	
	.revisiontitle
	{
	margin-top: 30px;
	text-align: left;
	background: black;
	height: 50px; 	
	color: white;
	}
	
	
	.title{
	margin-top: 40px;
	text-align: left;
	background: pink;
	height: 70px; 	
	
	}
	
	.revisionboard{
	
	margin-top: 20px;
	text-align: left;
	background: skyblue;
	height: 290px; 	
	
	}
	
	.uploadfile{
	
	margin-top: 250px;
	text-align: left;
	background: darkblue;
	height: 30px; 
	
	}
	
	.revisionbutton{
	
	margin-top: 5px;
	text-align: left;
	background: green;
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
		
			<div class="title">자유갤러리
				
				<div class ="writingName"> 아이디(닉네임), <---패스워드(수정불가)
		
					<div class ="revisiontitle"> 제목입력란(수정)
						
						<div class="revisionboard">수정내용 입력
						
							<div class="uploadfile">사진파일올리는곳(수정가능? 수정불가?)
							
								<div class="revisionbutton">수정버튼/취소 구역
								
											</div>
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