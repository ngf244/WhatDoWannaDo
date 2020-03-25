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


	.categoryName{float:left;}
	#img-thumbnail1{width:50px; height:50px; border: 1px solid black; display:inline-block;}

	#requestForm{background-color: rgba(224, 224, 224, 0.16); height: 500px; position:relative; z-index:100;}
	.attachmentsFiles{display: inline-block;}
	
	.whiteLine{background-color: white; height:10px;}
	
	
	.portpolioThumbNailForm{border: 1px solid black;}
	.portpolioThumbNail{margin-right: 50px; border: 1px solid black; width: 250px; height: 250px; float: left; }
	
	#contestChat{width: 200px;}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="content">
			<div id="left-side" style="background-color: yellow;">
				<div>왼쪽 영역</div>
			</div>
	
			<!-- 공용영역 -->
			<div id="main" >
				<button>돌아가기</button>
				
				<br>
				
				<div id="requestForm"> 
					<!-- 로고로 만들어서 제작 -->
					<img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'><div>디자인 요청 상세 내용</div>
					
					<hr>
				
					<div id="categoryForm">
						<div class="categoryName">카테고리 </div>
						<span id="categorySelect"> 로고 이미지</span>	
					</div>
					
					<div>
						<div id="requesterNickForm">의뢰인
							<span id="requesterNick">홍길동</span>					
						</div> 
					</div>
				
					<div>
						<div id="requestContentForm">무엇을 디자인해드릴까요?
							<div id="reuqestContent">
								<div>내용</div>
							</div>
						</div>
					
					</div>
				
				
					<hr>
					
					
					<div>
						<div id="attachmentsFilesForm">
							자료첨부 파일
						</div>
						
						<div>
							<div class="attachmentsFiles">첨부파일</div><button>Download</button>
						</div>
					</div>
						<div id="dDay-editorForm">마감일
							<div id="dDay-editor">2020년 3월 25일 오후 11시 40분</div>
						</div>
					<div class="whiteLine"></div>
					
					<div>참여작 보기
						<div>
							※ 참여 내역은 의뢰인과 본인만 확인 가능합니다. 
							
							<div class="portpolioThumbNailForm">
								<div class="portpolioThumbNail">#1234</div>
								<div class="portpolioThumbNail">#1234</div>
								<div class="portpolioThumbNail">#1234</div>
								<div class="portpolioThumbNail">#1234</div>
							</div>
						</div>
					</div>
					
					
				
				</div>
				
				<div style="clear: both;"></div>
				
				<div id="contestChatForm">
					콘테스트 문의하기
					<div id="contestChat">
						<textarea style="width:200px; height: 100px;" placeholder="내용을 입력하세요"></textarea>
						<button>글쓰기</button>
						
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