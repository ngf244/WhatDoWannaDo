<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>

	.boardtitle{
	margin-top: 40px;
	text-align: left;
	background: white;
	height: 60px; 	
	color: black;
	height-bottom: auto; width: 100%; border: 5px solid blue;
	}

	.menubar{
	text-align: center;
	}
	
	.boardmenu{
	margin-top: 30px;
	text-align: left;
	background: skyblue;
	height: 420px; 
	}
	
	.boardWriting{
	
	margin-top: 390px;
	text-align: left;
	background: black;
	height: 40px; 	
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
			
				<div class ="boardtitle"> 자유갤러리
			
					<div class ="boardmenu"> 게시판 번호/제목/작성자/조회수/추천 영역
			
						<div class="boardWriting">글쓰기 / 페이징 넘기는 부분
							
							
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