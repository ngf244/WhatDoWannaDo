<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#content{
		width: 100%;
		min-height: 600px;
	}
	#left-side{
		float:left;
		width: 12%;
		display: inline-block;
		min-height: 600px;
		margin-top: 20px;
		margin-bottom: 20px;
		margin: auto;
	}
	#main {
		width : 70%;
		display : inline-block;
		min-height : 600px;
		/* margin-bottom: 20px; */
		margin: auto;
		position:static;
		z-index:0;
		/* border: 1px solid black; */
	}
	#right-side{
		float:right;
		width : 16.5%;
		min-height : 600px;
		display: inline-block;
		margin-bottom: 20px;
		margin: auto;
	}
	#slideBar {
		margin-top: 50px;
		width: 100%;
		height: 200px;
		border: 1px solid black;
	}
	
	.mainHeaderBar{text-align:left; width: 100%; height: 30px;	border: 1px solid black; }
 	#mainBar {
		margin-top: 20px;
		width: 100%;
		height: 200px;
		border: 1px solid black;		} 


	.btnForm{margin-top: 50px; margin-bottom:30px;}
	#rollbackBtn{height: 30px;}
	#logoImgForm{margin-bottom: 50px;}	
	#img-thumbnail1{width:50px; height:50px; border: 1px solid black; display:inline-block;}

	#requestForm{padding-top:50px; background-color: rgba(224, 224, 224, 0.16); height: 500px; position:relative; z-index:100;}

</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="content" style="border: 2px solid black;">
			<div id="left-side" style="background-color: yellow;">
				<div>왼쪽 영역</div>
			</div>
	
			<!-- 공용영역 -->
			<div id="main" >
				<div class="btnForm">
					<button id="rollbackBtn">돌아가기</button>
				</div>
				
				<br>
				
				<div id="requestForm"> 
					<!-- 로고로 만들어서 제작예정 -->
					<div id="logoImgForm"><img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'>디자인 요청 상세 내용</div>
					
					<hr>
				
					<div id="categoryForm">
						<div class="categoryName">카테고리
							<select id="categoryDropDown">
								<option value="로고 이미지">로고 이미지</option>
								<option value="편집 이미지">편집 이미지</option>
								<option value="기타 이미지">기타 이미지</option>
							</select>
						</div>
					</div>
					
					<div>
						<div id="requesterNickForm">의뢰인
							<span id="requesterNick">홍길동</span>					
						</div> 
					</div>
				
					<div>
						<div id="requestContentForm">무엇을 디자인해드릴까요?
							<div id="reuqestContent">
								<textarea>내용</textarea>
							</div>
						</div>
					
					</div>
				
				
					<hr>
					
					
					<div>
						<div id="attachmentsFilesForm">
							자료첨부 파일
						</div>
						
						<div>
							<input type="text"><input type="file">
						</div>
					
					</div>
					
				
				
				</div>
				
				<button>작성완료</button>
			<!-- main영역 끝 -->	
			</div>
			
			<!-- 공용영역 -->
			<div id="right-side" style="background: blue">
				<div>오른쪽 영역</div>
			</div>
		</div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>