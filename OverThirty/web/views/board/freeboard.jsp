<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>

	.boardtitle{
	margin-top: 90px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid red;
	background: red;
	height: 70px; 	
	}

	.menubar{
	text-align: center;
	}
	
	.boardmenu{
	margin-top: 50px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid blue;
	background: blue;
	height: 200px; 	
	}
	
	.boardWriting{
	
	margin-top: 150px;
	text-align: left;
	height: auto; width: 100%; border: 1px solid black;
	background: black;
	height: 100px; 	
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
			<div class ="menubar"> 메인타이틀 영역
			
				<div class ="boardtitle"> 자유갤러리 (게시판 이름표시)영역
			
					<div class ="boardmenu"> 게시판 번호/제목/작성자/조회수/추천 영역
			
						<div class="boardWriting">글쓰기 / 페이징 넘기는 부분
						
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