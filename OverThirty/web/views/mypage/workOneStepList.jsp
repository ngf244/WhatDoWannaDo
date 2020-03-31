<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.participateApplyList{
		border: 1px solid black;
	}

	.participateApplyListTopArea{height: 100px; background: rgb(241, 179, 80); color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#participateApplyListText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#participateApplyListContent{
		margin: 30px;
	}
	
	#buttonSelectNSerch {
		margin-top: 30px;
		margin-bottom: 20px;
	}
	.select {
		display: inline-table;
		height: 30px;
		line-height: 30px;
		padding: 10px;
		padding-left: 30px;
		padding-right: 30px;
		margin: 15px;
		font-size: 14pt;
		border: 1px solid black;
	}
	
	/* 드랍다운 메뉴 */
	#buttonSelectNSerch {
	  	position: relative;
	  	display: inline-block;
	}
	
	.dropdown-content {
	  	display: none;
	  	position: absolute;
	  	background-color: #f1f1f1;
	  	min-width: 160px;
	  	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  	z-index: 1;
	  	margin-left: 15px;
	}
	
	.dropdown-content a {
	  	color: black;
	  	padding: 12px 16px;
	  	text-decoration: none;
	  	display: block;
	}
	
	.dropdown-content a:hover {background-color: #ddd;}
	
	#buttonSelectNSerch:hover .dropdown-content {display: block;}
	
	/* 리스트 부분 */	
	.boardList {
		padding: 10px;
		margin: 20px;
		
		border: 1px solid black;
	}
	.boardImg {
		display: inline-table;
		width: 140px;
		height: 140px;
		margin: 5px;
		
		border: 1px solid black;
	}
	.boardCon {
		/* width 값은 script로 별도 지정 */
		display: inline-table;
		height: 140px;
		margin: 5px;
	}
	.leftCon {
		display: inline-table;
		width: 70%;
		height: 140px;
		margin-left: 10px;
		line-height: 30px;
		
		/* border: 1px solid black; */
	}
	.rightCon {
		display: inline-table;
		width: 25%;
		height: 140px;
		float: right;
		
		/* border: 1px solid black; */
	}
	.rightBtn {
		display: inline-table;
		width: 100%;
		height: 35px;
		margin: 5px;
		line-height: 35px;
		font-weight: bold;
		text-align: center;
		border-radius: 5px;
		background-color: rgb(235, 239, 242);
	}
	
	
	/* 페이징 처리 css */
	.pagingCenter{
		text-align: center;
		margin-top: 40px;
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
	
</style>
<title>참가 신청 중</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="participateApplyList">
				<div class="participateApplyListTopArea">
					<div id="participateApplyListText">참가 신청</div>	
				</div>
				<div id="participateApplyListContent">
					<div id="buttonSelectNSerch">
						<!-- 부트스트랩으로 아래로 창 열리게 해야 함.  -->
						<div class="select">카테고리 ▼</div>
						<div class="dropdown-content">
						    <a href="#">1:1 의뢰</a>
						    <a href="#">역경매</a>
						    <a href="#">콘테스트</a>
						</div>						
					</div>
				
					<!-- 리스트 시작 -->
					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 1:1 의뢰<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 10명
								</div>
								<div class="rightBtn">
									~ 2020.04.16
								</div>
								<div class="rightBtn">
									의뢰비 : 20,000
								</div>
							</div>
						</div>
					</div>
					
					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 1:1 의뢰<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 7명
								</div>
								<div class="rightBtn">
									~ 2020.04.13
								</div>
								<div class="rightBtn">
									의뢰비 : 20,000
								</div>
							</div>
						</div>
					</div>
					
					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 역경매<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 6명
								</div>
								<div class="rightBtn">
									~ 2020.04.09
								</div>
								<div class="rightBtn">
									최소 입찰가 : 20,000
								</div>
							</div>
						</div>
					</div>										

					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 역경매<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 6명
								</div>
								<div class="rightBtn">
									~ 2020.04.04
								</div>
								<div class="rightBtn">
									최소 입찰가 : 20,000
								</div>
							</div>
						</div>
					</div>
					
					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 콘테스트<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 3명
								</div>
								<div class="rightBtn">
									~ 2020.04.01
								</div>
								<div class="rightBtn">
									상금 : 50,000
								</div>
							</div>
						</div>
					</div>
					
					<div class="boardList">
						<div class="boardImg">
							<img src="">
						</div>
						<div class="boardCon">
							<div class="leftCon">
								 <b>로고 디자인  &nbsp; | &nbsp; 제목 : 스타곰탕 로고 의뢰 </b><br>
								 등록일 : 2020.03.20.<br>
								 의뢰유형 : 콘테스트<br>
								 내용 : 스타곰탕은 곰탕을 냉동해서 판매하는 온라인 마켓 입니다. 인스타그램을 기반으로 론칭 성장해서 30~40대 초반 젊은 주부들이 고객의 대부분을 차지 하고 있습니다.
							</div>
							<div class="rightCon">
								<div class="rightBtn">
									참여자 : 8명
								</div>
								<div class="rightBtn">
									~ 2020.04.01
								</div>
								<div class="rightBtn">
									상금 : 50,000
								</div>
							</div>
						</div>
					</div>
										
					<!-- 페이징 영역 -->					
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
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
		$('.boardCon').width($('.boardList').width() - 200)
	</script>
	<script>
		$('.rightBtn').hover(function(){
			$(this).css({'background-color':'rgb(241, 179, 150)', 'color':'white'})
		}, function(){
			$(this).css({'background-color':'rgb(235, 239, 242)', 'color':'black'})
		});
	</script>	
</body>
</html>