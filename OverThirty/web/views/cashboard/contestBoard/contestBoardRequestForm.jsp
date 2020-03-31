<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<style>
	#main {
		background-color: rgba(224, 224, 224, 0.16);
	}
	#logoImg {
		display: inline-table;
		width: 50px; 
		height: 50px; 
		margin: 10px;
		line-height: 50px;
		
		border: 1px solid black;
	}
	#mainTitle {
		display: inline-table;
		height: 50px;
		font-size: 18pt;
		font-weight: bold;
		line-height: 50px;
		margin: 10px;
	}
	#writeForm {
		margin-top: 30px;
		border-top: 2px solid gray;
		padding: 10px;
	}
	.leftLineForm{
		margin-left: 100px;
	}
	
	.leftLine {
		display: inline-block;
		width: 40%;
		height: 50px;
		font-size: 16pt;
		text-align: left;
		line-height: 50px;
		margin: 10px;
		font-weight: bold;
	}
	.rightLine {
		display: inline-block;
		text-align: left;
		width: 70%;
		height: 50px;
		font-size: 16pt;
		line-height: 50px;
	}
	.contentForm{
		text-align: center;
	}
	#content {
		width: 80%;
		height: 300px;
	}
	#btnList {
		text-align: center;
		margin-top: 30px;
	}
	.button {
		display: inline-table;
		width: 150px;
		height: 50px;
		margin: 10px;
		line-height: 50px;
		font-size: 14pt;
		text-align: center;
		background-color: rgb(224, 224, 224);
		border-radius: 5px;
		cursor: pointer;
		font-weight: bold;
	}
	
	
	#chooseBox{padding-top:100px;}
	
</style>
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript" src="../../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<jsp:include page="../../common/mainHeader.jsp"/>
	<section>
		<div id="left-side"></div>

		<div id="main" >
			<!-- 로고로 만들어서 제작 -->
			<div id="logoImg">
				<img src=''>
			</div>
			<div id="mainTitle">
				디자인 요청 상세 내용
			</div>
			
			<form id="writeForm">
				<div class="leftLine">
					1. 어떤 디자인 콘테스트를 개최하시나요?
				</div>
				
				<div id="chooseBox">
					<h2>카테고리를 선택하세요</h2>
					<div class="rightLine">
						<input type="radio" value="제작 이미지">제작 이미지  
						<input type="radio" value="편집 이미지">편집 이미지  
						<input type="radio" value="기타 이미지">기타 이미지  
					</div>
				</div>
				
				<div class="leftLine">
					의뢰인
				</div>
				<div class="rightLine">
					홍길동
				</div>
				
				<div class="leftLine">
					상금
				</div>
				
				<div class="rightLine">
					100,000원
				</div>
				
				<div class="leftLine">
					제목
				</div>
				<div class="rightLine">
					<input type="text" value="제목들어갈부분">
				</div>
				
				<div class="leftLineForm">
					<div class="leftLine" >
						무엇을 디자인해드릴까요?
					</div>
				</div>
				<br>
					<textarea name="content" id="content" rows="10" cols="100">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea>
				
				<div class="contentForm">
				</div>
				<hr> <!-- 나중에 2px solid gray 로 수정 -->
				
					<!-- 로고로 만들어서 제작 -->
				<div id="logoImg">
					<img src=''>
				</div>
				<div id="mainTitle">
					자료 첨부파일
				</div>
				
				<br><input type="file">
				<br><input type="file">
				<br><input type="file">
				<br><input type="file">
				파일첨부도 더 이쁜걸로 수정<br>
				
				<div id="btnList">
					<div id="submit" class="button">작성완료</div>
					<div id="cancle" class="button">돌아가기</div>
				</div>
				
				<script type="text/javascript">
					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
					 oAppRef: oEditors,
					 elPlaceHolder: "content",
					 sSkinURI: "../../se2/SmartEditor2Skin.html",
					 fCreator: "createSEditor2"
					});
				</script>
				
				
				
				
				<script>
					$('#submit').hover(function(){
						$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
					}, function(){
						$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
					});
					$('#cancle').hover(function(){
						$(this).css({'background-color':'rgb(52, 152, 219)', 'color':'white'})
					}, function(){
						$(this).css({'background-color':'rgb(224, 224, 224)', 'color':'black'})
					})
				</script>
			</form>
		</div>
		
		<!-- 공용영역 -->
		<div id="right-side"></div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
		<div id="content" >
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
					<div>
					<!-- 로고로 만들어서 제작예정 -->
					<div id="logoImgForm"><img id="img-thumbnail1" src='http://drive.google.com/uc?export=view&id=1V079qDax9ljZ2SVYWDtJaQ8JZOgKxLrB'>디자인 요청 상세 내용</div>
					
				
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
				
				
					
					
					<div>
						<div id="attachmentsFilesForm">
							자료첨부 파일
						</div>
						
						<div>
							<input type="text"><input type="file">
							<button>삭제버튼</button>
						</div>
					
					</div>
					
				
				
				</div>
				
				<button>작성완료</button>
			<!-- main영역 끝 -->	
				</div>
			</div>
			
			<!-- 공용영역 -->
			<div id="right-side" style="background: blue">
				<div>오른쪽 영역</div>
			</div>
		</div>
	</section>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html> --%>