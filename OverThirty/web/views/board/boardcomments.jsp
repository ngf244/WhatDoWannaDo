<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리플</title>
<style>

	.boardname{
	margin-top: 40px;
	text-align: left;
	background: skyblue;
	height: 40px; 	
	color: white;
	}


	.userid{
	
	margin-top: 15px;
	text-align: left;
	background: pink;
	height: 50px; 	
	color: black;
	}
	
	
	.boardtitle{
	
	margin-top: 15px;
	text-aling: left;
	background: black;
	height: 30px;
	color: white;
	
	}
	
	.nickname{
	
	margin-top: 5px;
	text-aling: left;
	background: green;
	height: 25px;
	color: white;
	
	}
	
	.board{
	
	text-aling: left;
	background: white;
	height: 300px;
	color: black;
	
	}
	
	.comments{
		
	margin-top : 250px;
	background: purple;
	height: 90px;
	color: white;
	
	
	
	}


</style>
</head>
<body>
   <jsp:include page="../common/mainHeader.jsp"/>
   <section>
	  <div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: red">
		
		<div class="boardname">자유갤러리 
			
			<div class="userid">닉네임(아이디표시)
			
				<div class="boardtitle">글 제목
				
					<div class="nickname">(레벨별마크)닉네임 or 아이디 
					
						<div class="board">글작성후 내용 <br> (오늘 지하철에서 틀딱이 뭐라는거야 ㅠㅠ)
						
							<div class="comments">댓글 작성부분
						
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