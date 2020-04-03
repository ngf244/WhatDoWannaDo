<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.portpolioList{
		border: 1px solid lightgray;
		height: 1230px;
		width: 80%;
		margin: auto;
	}

	.portpolioListTopArea{height: 60px; background: #4374D9; color: white; box-shadow: 2px 2px 5px black;}
	
	#portpolioListText{font-size: 18pt; font-weight: bolder; margin-top: 12px; padding-left: 40px; padding-right: 30px; display:inline-block; float: left;}
	
	#portpolioEnrollBtn{
		display: inline-table;
		width: 20%;
		height: 60px;
		margin: 20px;
		line-height: 60px;
		text-align: center;
		background-color: rgb(39, 174, 96);
		color: white;
		border-radius: 5px;
		cursor: pointer;
		float: right; 
	}
	
	#portpolioListContent{
		height: 1120px;
		margin-top: 30px;
	}
	
	.imageEditTap{
		width: 25%;
		height: 70px;
		display: inline-block;
		margin-left: 150px;
		margin-top: 30px;
		cursor: pointer;
		background: rgb(52, 73, 94, 0.8);
		color: white;
		font-size: 15pt;
		font-weight: bold;
		line-height: 70px;
		padding-left: 30px;
		border-radius: 10px;
	}
	
	.imageEditTap:hover{
		background: rgb(52, 73, 94);
	}
	
	.videoEditTap{
		width: 25%;
		height: 70px;
		display: inline-block;
		margin-left: 150px;
		margin-top: 30px;		
		cursor: pointer;
		background:  rgb(52, 73, 94, 0.8);
		color: white;
		font-size: 15pt;
		font-weight: bold;
		line-height: 70px;
		padding-left: 30px;
		border-radius: 10px;
	}
	
	.videoEditTap:hover{
		background: rgb(52, 73, 94);	
	}
	
	.portpolioBoard{
		height: 830px;
		margin: 30px;
		margin-top: 30px;
		border-top: 1px solid lightgray;		 
	}
	
	.portpolioThumb{
		width: 18%;
		height: 160px;
		border: 1px solid lightgrey;
		float: left;
		margin: 2%;
		margin-left: 4%;
		
	}
	
	/* 페이징 처리 css */
	.pagingCenter{
		text-align: center;
	}
	
	.pagination{
		display: inline-block;
	}

	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	  border: 1px solid #ddd;
	}
	
	.pagination a.active {
	  background-color: rgb(52, 152, 219);
	  color: white;
	  border: 1px solid rgb(52, 152, 219);
	}
	
	.pagination a:hover:not(.active) {background-color: #ddd;}
	
	/* 포트폴리오 디테일 모달창 */
	.portDetailModalArea{
		display: none;
		position: fixed;
		z-index: 10;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		overflow: auto;
		background-color: rgb(0,0,0);
		background-color: rgba(0,0,0,0.5);
	}
	
	.portDetailModalContent{
		background-color: #fefefe;
		margin: 15% auto;
		border: 1px solid #888;
		width: 60%;
	}
	
	#modalCloseBtn{
		width: 4%;
		height: 40px;
		float: right;
		margin-top: 8px;
	}
	
	.portpolioNameContents{
		width: 70%;
		border: 1px solid black;
		float: left;
		margin-left: 2%;
		margin-right: 4%;
	}
	
	.portpolioName{
		width: 100%;
		height: 120px;
		font-size: 20pt;
		line-height: 110px;
	}
	
	.portpolioDesc{
		width: 21%;
		height: 620px;
		border: 1px solid black;
		float: left;
	}
	
	.userId{
		height: 50px;
		background: #4C4C4C;
		color: white;
		font-size: 15pt;
		font-weight: bolder;
		text-align: center;
		line-height: 48px;
	}
	
	.portClass{
		height: 40px;
		font-size: 12pt;
		text-align: center;
		line-height: 48px;
	}
	
	.usingSite{
		height: 80px;
		font-size: 12pt;
		text-align: left;
		line-height: 48px;
		border-bottom: 1px solid black;
		margin: 10px;
	}
	
	.portDescription{
		height: 400px;
		font-size: 12pt;
		text-align: left;
		line-height: 38px;
		margin: 10px;
	}
	
	#updateBtn{
		margin: 10px;
		width: 9%;
		height: 40px;
		background: rgb(52, 152, 219);
		color: white;
		display: inline-block;
		cursor: pointer;
		text-align: center;
		line-height: 40px;
		border-radius: 10px;
	}
	
	#deleteBtn{
		margin: 8px;
		width: 9%;
		height: 40px;
		background: rgb(52, 152, 219);
		color: white;
		display: inline-block;
		cursor: pointer;
		text-align: center;
		line-height: 40px;
		border-radius: 10px;		
	}
	
	.replyArea{
		width: 95.1%;
		height: 300px;
		margin: 22px;
	}
	
	.replayText{
		font-size: 12pt;
		text-indent: 30px;
		border-bottom: 1px solid silver;
		height: 30px;
		line-height: 30px;
	}	
	
	.repWriterImg{
		width: 6%;
		border: 1px solid black;
		height: 65px;
		border-radius: 50px;
		margin: 10px;
		float: left;
	}
	
	.repIdDateCon{
		float: left;
	}
	
	.idDate{
		margin: 10px;
	}
	
	.repContents{
		margin: 10px;
	}
	
	.repEnrollArea{
		width: 777px;
	}
	
	.repMeImg{
		width: 65px;
		border: 1px solid black;
		height: 65px;
		border-radius: 50px;
		margin: 10px;
		float: left;
	}	
	
	#repEnrollBtn{
		margin: 8px;
		width: 9%;
		height: 40px;
		background: rgb(52, 152, 219);
		color: white;
		display: inline-block;
		cursor: pointer;
		text-align: center;
		line-height: 40px;
		border-radius: 10px;			
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
					<div class="editClass">
						<div class="imageEditTap">이미지 편집</div>
						<div class="videoEditTap">동영상 편집</div>
					</div>
					<div class="portpolioBoard">
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
						<div class="portpolioThumb"><img src=""></div>
					</div>
					<div class="pagingCenter">
						<div class="pagination">
						<a href=""> &laquo; </a>
						<a href="" class="active"> 1 </a>
						<a href=""> 2 </a>
						<a href=""> 3 </a>
						<a href=""> 4 </a>
						<a href=""> 5 </a>
						<a href=""> 6 </a>
						<a href=""> 7 </a>
						<a href=""> 8 </a>
						<a href=""> &raquo; </a>
						</div>
					</div>
					<div id="portpolioEnrollBtn">등록하기</div>
				</div>
			</div>
			
			<!-- 포트폴리오 디테일 모달창 -->
			<div id="portDetailModal" class="portDetailModalArea">
				<div class="portDetailModalContent">
					<div id="modalCloseBtn" onclick="closeDetail();"><img src="../images/x_icon2.png" width="30" height="30"></div>
					<div style="clear: both;"></div>
					
					<div class="portpolioNameContents">
						<div class="portpolioName" style="text-indent: 20px;">
							끄끄흐 디자인 (인테리어 디자인 및 용품 판매업) 로고 제작
						</div>
						<div class="portpolioContents">
							<img style="width: 100%;" name="portImage" src="../images/portimage_ex1.jpg">
						</div>
					</div>
					<div class="portpolioDesc">
						<div class="userId">user01</div>
						<div class="portClass">이미지 편집</div>
						<div class="usingSite" style="font-size: 10pt; line-height: 30px;">※ 본 사이트에서 의뢰를 받아<br>&nbsp;&nbsp;&nbsp;작업한 디자인입니다.</div>
						<div class="portDescription">
							<span style="font-weight: bold;">디자인 설명</span><br>
							<span>인테리어 디자인 및 용품 판매 업체인 "끄끄흐"만의 재미있고 독창성을 보여주며, 이용하는 고객들이 직관적으로 이해할 수 있는 텍스트형 로고로 제작하였습니다. 색상변경 가능합니다. 감사합니다:)</span>
						</div>						
					</div>
					<div class="BtnArea">
						<div id="updateBtn">수정</div>
						<div id="deleteBtn">삭제</div>
					</div>					
					<div style="clear: both;"></div>
					<div class="replyArea">
						<div class="replayText">댓글(0건)</div>
						<div class="repWriterImg">
							<img src="">
						</div>
						<div class="repIdDateCon">
							<div class="idDate">
								<span>user02</span>
								<span>2020.03.28.</span>
							</div>
							<div class="repContents">
								와 정말 감탄이 절로 나오네요.. 
							</div>
						</div>
						<div style="clear: both;"></div>
						<div class="repEnrollArea">
							<div class="repMeImg">
								<img src="">
							</div>
							<form>
								<textarea id="repEnrollCon" name="repEnrollCon" rows="5" cols="95" style="resize: none;"></textarea><br>
								<div id="repEnrollBtn" type="submit" style="float: right;">등록</div>								
							</form>
						</div>
					</div>
				</div>
				
			</div>			
			
		</div>
		<div id="right-side">
			
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
		$('.portpolioThumb').click(function(){
			$('#portDetailModal').show();
		});
		
		function closeDetail(){
			$('#portDetailModal').hide();
		}
		
		
	</script>
</body>
</html>