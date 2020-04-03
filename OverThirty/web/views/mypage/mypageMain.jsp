<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Chewy" rel="stylesheet">
<style>
	/* 마이페이지 메인 상단 프로필 부분 */
	#mypageArea{width: 80%; margin: auto; text-align: left;}
	.mypageTopArea{z-index: -1; height: 80px; background: #4374D9; color: white; font-size: 22pt; box-shadow: 2px 2px 5px black; position: relative;}
	#mypageText{font-weight: bolder; margin-top: 20px; padding-left: 40px; padding-right: 30px; display:inline-block; float: left;}
/* 	.requestBtn{
		width: 100px; 
		height: 30px; 
		margin-top: 20px; 
		margin-right: 40px; 
		float: right; 
		border: 1px solid black; 
		font-size: 15pt; 
		padding: 10px; 
		padding-left: 25px;
		background: #003399;
		color: white;
		border-radius: 10px;
		box-shadow: 2px 2px 5px black;
		cursor: pointer;
	} */
	
	/* 의뢰 요청 버튼 */
	button {
	  position: relative;
	  background: none;
	  cursor: pointer;
	  border: 0;
	  padding: 0;
	  outline: 0;
	  font-family: 'Chewy', cursive;
	  color: crimson;
	  width: 250px;
	}
	span {
	  display: block;
	}
	.shadow:before,
	.shadow:after {
	  content: '';
	  position: absolute;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  border-radius: 100px;
	  background: red;
	  z-index: -2;
	  background: linear-gradient(to right, rgba(0,0,0,1) 0%,rgba(0,0,0,0) 100%);
	  opacity: .4;
	  transform: rotateX(0);
	  transform-origin: center 30px;
	  filter: blur(1px);
	  animation: shadowLeft 2s ease-in-out alternate infinite;
	  transition: all 1s cubic-bezier(0.875, -0.555, 0.190, 1.640);
	}
	@keyframes shadowLeft {
	  to {
	    opacity: .1;
	    filter: blur(5px);
	  }
	}
	.shadow:after {
	  background: linear-gradient(to left, rgba(0,0,0,1) 0%,rgba(0,0,0,0) 100%);
	  opacity: .1;
	  filter: blur(5px);
	  animation: shadowRight 2s ease-in-out alternate infinite;
	}
	@keyframes shadowRight {
	  to {
	    opacity: .4;
	    filter: blur(1px);
	  }
	}
	#reqGifBtn:focus .shadow:before,
	#reqGifBtn:focus .shadow:after {
	  transform: rotateX(180deg);
	}
	
	
	.vert {
	  transform: translateY(-20px);
	  animation: vert 1s ease-in-out alternate infinite;
	}
	@keyframes vert {
	  to {
	    transform: translateY(-25px);
	  }
	}
	.floating {
	  background-color: transparent;
	  -webkit-perspective: 800;
	  -webkit-transform-style: preserve-3d;
	  transform: rotateY(-3deg) skewY(-3deg);
	  animation: swing 2s cubic-bezier(0.420, 0.000, 0.580, 1.000) alternate infinite;
	}
	@keyframes swing {
	  to {
	    transform: rotateY(3deg) skewY(3deg);
	  }
	}
	.floating span {
	  display: block;
	  padding: 10px 0;
	  border-radius: 100px;
	  font-size: 25px;
	  background: #fff;
	  transition: all 1s cubic-bezier(0.875, -0.555, 0.190, 1.640);
	  transform: translateY(-3px) translateZ(5px) rotateX(0);
	  width: 100%;
	}
	span.back {
	  position: absolute;
	  top: 0;
	  left: 0;
	  background: #aaa;
	  transform: translateY(3px) translateZ(-5px) rotateX(-180deg);
	}
	#reqGifBtn:focus .front {
	  transform: translateY(3px) translateZ(-5px) rotateX(180deg);
	  background: #aaa;
	}
	
	#reqGifBtn:focus .back {
	  transform: translateY(-3px) translateZ(5px) rotateX(0);
	  background: #fff;
	}	
	#reqGifBtn{width: 200px; margin-left: 600px; margin-top: 35px;}	
	
	
	/* 회원 정보 영역 */
	.myprofileArea{height: 400px; border: 1px solid lightgray; margin-top: 30px; border-radius: 10px;}
	.normalInfo{border-bottom: 1px solid silver; height: 220px;}
	#userId{color: rgb(52, 152, 219); display: inline-block; font-size: 20pt; font-weight: bold; margin-top: 10px; margin-left: 10px;}
	#userId + span{font-size: 15pt; font-weight: bold; padding-left: 5px;}
	#userInfoTable{width: 80%; height:120px; margin-top: 20px;}
		
	/* 프로필 이미지 */
	.profileImage{width: 160px; height: 160px; border: 1px solid lightgray; margin: 20px; display:inline-block; border-radius: 10px; overflow: hidden; float: left;}
	.profile {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }	
	
	/* 회원정보수정버튼 */
	#profileEditBtn{
		margin-left: 150px; 
		position: absolute; 
		margin-top: 10px;
		background: rgb(243, 156, 18);
		color: white;
		border-radius: 10px;
		cursor: pointer;
		padding: 10px;
		font-family:Arial;
		font-size:15px;
		font-weight: bold;			 
	}
	
	/* 자기소개 영역 */
	.introduceInfo{height: 180px; padding-left: 20px; line-height: 30px;}
		
	/* 회원정보 수정 모달영역설정 */
	.editModalArea{
		display: none;
		position: fixed;
		z-index: 10;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		overflow: auto;
		background-color: rgb(0,0,0);
		background-color: rgba(0,0,0,0.4);
	}
	
	.page-header{border-bottom: 1px solid #888;}
	
	.user-edit-content{
		background-color: #fefefe;
		margin: 15% auto;
		padding: 20px;
		border: 1px solid #888;
		width: 45%;
		height: 1120px;
		border-radius: 10px;
	}
	
	#editCompleteBtn{
		 cursor:pointer;
		 background-color:#DDDDDD;
		 text-align: center;
		 padding-bottom: 10px;
		 padding-top: 10px;
		 width: 100px;
		 border-radius: 10px;
		 margin-left: 300px;
		 margin-top: 15px;
		 font-size: 13pt; 
		 font-weight: bold;
		 float: left;
	}
	
	#editCancelBtn{
		 cursor:pointer;
		 background-color:#DDDDDD;
		 text-align: center;
		 padding-bottom: 10px;
		 padding-top: 10px;
		 width: 100px;
		 border-radius: 10px;
		 margin-left: 20px;
		 margin-top: 15px;
		 font-size: 13pt; 
		 font-weight: bold;
		 float: left;
	}
		
	/* 회원정보 수정창 내용 */
	#basicInfoText{width: 80%; height: 60px; background: rgb(102, 102, 102); color: white; margin: 20px; margin-left: 90px; font-size: 18pt; font-weight: bold; text-align: center; line-height: 55px; border-radius: 10px;}
	
	#addInfoText{width: 80%; height: 60px; background: rgb(102, 102, 102); color: white; margin: 20px; margin-left: 90px; font-size: 18pt; font-weight: bold; text-align: center; line-height: 55px; border-radius: 10px;}	
	
	.basicInfo>table{margin: 50px; margin-left: 150px; font-size: 14pt; line-height: 30px;}
	.addInfo>table{margin: 50px; margin-left: 150px; font-size: 14pt; line-height: 30px;}
	
	input{border-radius: 5px; height: 25px;}
	textarea{border-radius: 5px; resize: none; margin-top: 30px;}
	
	/* 현재 포인트&캐쉬 */
	.point-cash-area{height: 110px; margin-top: 25px;}
	.point{width: 47%; height: 110px; border: 1px solid lightgray; display: inline-block; border-radius: 5px;}
	.cash{width: 47%; height: 110px; border: 1px solid lightgray; display: inline-block; margin-left: 30px; border-radius: 5px;}
	.point>table{
		width: 85%;
		height: 80%;
		text-align: left;
		font-size: 25pt;
		margin-left: 42px;
		font-weight: bolder;
	}
	
	.cash>table{
		width: 85%;
		height: 80%;
		text-align: left;
		font-size: 25pt;
		margin-left: 42px;
		font-weight: bolder;
	}
	
	/* 내 글 관리 부분 */
	#mypostManagement{height: 830px; margin-top: 25px;}
	.mypostText{text-indent: 10px; height: 70px; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #EAEAEA;}
	.mypostArea{height: 700px; margin-top: 30px;}
	.mypostArea>div>span{font-size: 14pt; margin-left: 20px; font-weight: bold;}
	#replyText{font-size: 14pt; margin-left: 20px; font-weight: bold;}
	.pointArea{
		float: left;
		width: 47%;
		height: 400px;
		border: 1px solid lightgray;
		display: inline-block;
		border-radius: 10px;
	}
	.cashArea{
		float: right;
		width: 47%;
		height: 400px;
		border: 1px solid lightgray;
		display: inline-block;
		border-radius: 10px;		
	}
	.replyArea{
		width: 100%;
		height: 300px;
		border: 1px solid lightgray;
		margin-top: 25px;
		border-radius: 10px;
	}
	.postList{line-height: 45px; padding: 15px; padding-left: 30px;}
	.replayList1{width: 45%; line-height: 45px; padding: 15px; padding-left: 22px; float: left; margin-right: 30px;}
	.replayList2{width: 45%; line-height: 45px; padding: 15px; padding-left: 22px; float: left;}
	
	/* 나의 의뢰/작업 현황 */
	#myReqWorkState{height: 810px; margin-top: 25px;}
	.myReqWorkStateText{text-indent: 10px; height: 70px; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #EAEAEA;}
/* 	#allReqListBtn{
		float: right; 
		background: rgb(39, 174, 96); 
		font-size: 12pt; 
		color: white; 
		margin-right: 30px; 
		margin-top: 10px;
		padding-left: 50px;
		width: 250px; 
		height: 50px; 
		border-radius: 10px;
		line-height: 50px;
		cursor: pointer;
	} */
	.myReqWorkStateArea{height: 700px; margin-top: 25px;}
	#myReqStateText{font-size: 15pt; color: white; font-weight: bolder; padding-left: 30px; margin-top: 15px; padding-top: 10px;}
	#myWorkStateText{font-size: 15pt; color: white; font-weight: bolder; padding-left: 30px; margin-top: 15px; padding-top: 10px;}
	.myReqState{height: 340px; border-radius: 15px; margin: 10px; background: rgb(52, 152, 219);}
	.myWorkState{height: 340px; margin-top:15px; border-radius: 15px; margin: 10px; background: rgb(241, 179, 80);}
	.recruit{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	.working1{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	.complete1{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	#arrow_icon_area{width: 8%; height: 260px; margin: 10px; float: left; margin-right: 18px;}
	.arrow{margin-top: 90px; margin-left: 2px;}
	.participate{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	.working2{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	.complete2{width: 24%; height: 260px; margin: 10px; float: left; background: black; color: white; font-size: 14pt; border-radius: 10px;}
	.innerArea{width: 100%; height: 140px; background: silver; margin-top: 20px; margin-bottom: 10px; z-index: 2;}
	.innerArea + span{font-size: 10pt; margin-left: 5px;}
	.stepText{margin: 15px;}
	
	/* 포트폴리오 */
	#portpolio{height: 725px; margin-top: 30px;}
	.portpolioText{text-indent: 10px; height: 70px; font-size: 18pt; font-weight: bolder; line-height: 65px; background: lightgray;}
	.portpolioArea{height: 625px; border: 1px solid lightgray; margin-top: 30px; border-radius: 10px;}
	#smallReqBtn{
		font-size: 12pt; 
		color: white; 
		background: rgb(231, 76, 60); 
		display: inline; 
		margin-left: 50px; 
		padding: 15px;
		padding-left: 40px;
		padding-right: 40px;
		border-radius: 10px; 
		height: 45px; 
		cursor: pointer;
	}
	
	.portpolioList{width: 20%; height: 200px; border: 1px solid lightgray; float: left; margin-left: 40px; margin-top: 30px;}
	
	/* 페이징 처리 css */
	.pagingCenter{
		text-align: center;
		margin-top: 30px;
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
	
	/* 포트폴리오 등록 버튼 */
	#portpolioEnrollBtn{
		display: inline-table;
		width: 20%;
		height: 60px;
		margin: 20px;
		margin-top: 10px;
		line-height: 60px;
		text-align: center;
		background-color: rgb(39, 174, 96);
		color: white;
		border-radius: 5px;
		cursor: pointer;
		float: right;
	}	
	
	/* 캐쉬변동 */
	#cashChange{height: 700px; margin-top: 30px;}
	.cashChangeText{text-indent: 10px; height: 70px; border: 1px solid lightgray; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #D5D5D5;}
	.cashChangeArea{height: 600px; border: 1px solid lightgray; margin-top: 30px; border-radius: 10px;}
	.monthArea{width: 18%; height: 65px; border: 1px solid lightgray; border-radius: 100px; margin: 15px; margin-left: 440px; text-align: center; line-height: 62px;}
	.changeList{width: 90%; height: 125px; margin-left: 60px; margin-top: 20px; border-bottom: 1px solid silver; font-size: 11pt;}
	.changeClass1{height: 65%; width: 11%; border: 1px solid red; margin: 8px; border-radius: 100px; line-height: 80px; color: red; float: left;}
	.changeClass2{height: 65%; width: 11%; border: 1px solid green; margin: 8px; border-radius: 100px; line-height: 80px; color: green; float: left;}
	.changeClass3{height: 65%; width: 11%; border: 1px solid rgb(41, 128, 185); margin: 8px; border-radius: 100px; line-height: 80px; color: rgb(41, 128, 185); float: left;}
	.chageDesc{float: right; padding: 50px;}
	
	/* 공통 플러스 아이콘 */
	.plusIcon{cursor: pointer;}
</style>
<title>마이 페이지</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
		</div>
		<div id="main">
			<div id="mypageArea">
				<div class="mypageTopArea">
					<div id="mypageText">마이페이지</div>
					<!-- <div class="requestBtn"><b>의뢰 요청</b></div> -->
					<button id="reqGifBtn">
					  <span class="shadow">
					    <span class="vert">
					      <span class="floating">
					        <span class="front">Request</span>
					        <span class="back">Request</span>
					      </span>
					    </span>
					  </span>
					</button>
					<div style="clear: both;"></div>		
				</div>
				
				<div class="myprofileArea">
					<div class="normalInfo">
						<div class="profileImage">
							<img class="profile" src="${ contextPath }/views/images/default_profile.png">
						</div>
						<button id="profileEditBtn" style="width: 120px; margin-left: 180px;">프로필 수정</button>
						<span id="userId">user01</span><span style="display: inline-block;">님</span>
						<div id="normalInfoArea">
							<table id="userInfoTable">
								<tr>
									<td>>이메일 : </td>
									<td>ngf244@naver.com(비공개)</td>
									<td>>은행명 : </td>
									<td>신한은행(비공개)</td>
								</tr>
								<tr>
									<td>>전화번호 : </td>
									<td>01088170413(비공개)</td>
									<td>>계좌번호 : </td>
									<td>737031-56-125631(비공개)</td>
								</tr>
								<tr>
									<td>>회원등급 : </td>
									<td>일반회원</td>
									<td>>예금주 : </td>
									<td>김민수(비공개)</td>
								</tr>								
							</table>
						</div>					
					</div>
					<div class="introduceInfo">
						<h3>>자기소개</h3>
						<p>완벽하게 편집해드립니다.	로고, 브릿지, OAP 까지<br>
						사용하는 프로그램은 파이널컷 프로, 모션, 애프터이펙트, 포토샵, 일러스트으로 다양합니다.<br>
						다양한 스타일의 편집이 가능합니다. 원하시는 스타일로 맞춰드릴 수 있습니다. 프로급 편집 스킬을 알바급 페이로 고용해보세요!
						</p>
					</div>
				</div>
				
				<div class="point-cash-area">
					<div class="point">
						<table id="pointStatusTable">
							<tr>
								<td>Point</td>
								<td style="text-align: right; color: rgb(52, 152, 219);">20,000</td>
							</tr>
						</table>
						<span id="pointShopMoveLink" style="float: right; margin-right: 40px;"><a href="">- 포인트샵으로 이동</a></span>
						<div style="clear: both;"></div>
					</div>
					<div class="cash" style="float: right;">
						<table id="cashStatusTable">
							<tr>
								<td>Cash</td>
								<td style="text-align: right; color: rgb(231, 76, 60);">5,000</td>
							</tr>
						</table>
						<span id="pointShopMoveLink" style="float: right; margin-right: 40px;"><a href="">- 캐쉬 충전 페이지로 이동</a></span>
						<div style="clear: both;"></div>					
					</div>
					<div style="clear:both;"></div>
				</div>
				
				<!-- 내 글 관리 -->
				<div id="mypostManagement">
					<div class="mypostText">
						내 글 관리
					</div>
					
					<div class="mypostArea">
						<div class="pointArea">
							<span style="display: inline-block;">포인트 게시글</span>
							<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png" style="display: inline-block;"/>
							<div class="postList">
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
							</div>
						</div>
						<div class="cashArea">
							<span style="display: inline-block;">캐쉬 게시글</span>
							<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png" style="display: inline-block;"/>
							<div class="postList">
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
								<div>- 게시글 제목</div>
							</div>
						</div>
						<div style="clear:both;"></div>
						<div class="replyArea">
							<div id="replyText">댓글&nbsp;<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png"/></div>
							<div class="replayList1">
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
							</div>
							<div class="replayList2">
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
								<div>- 댓글 내용</div>
							</div>
							<div style="clear: both;"></div>							
						</div>
											
					</div>
				</div>
				<!-- 내 의뢰/작업 현황 -->
				<div id="myReqWorkState">
					<div class="myReqWorkStateText">
						나의 의뢰/작업 현황
						<!-- <div id="allReqListBtn">전체 의뢰 요청 리스트 보기</div> -->
						<div style="clear: both;"></div>						
					</div>
					<div class="myReqWorkStateArea">
						<div class="myReqState">
							<div id="myReqStateText">의뢰 현황</div>
							<div class="recruit">
								<span class="stepText">STEP 1. 지원자 모집 중</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 지원자를 모집하고 있는 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon3.png" width="100" height="100"/>
							</div>
							<div class="working1">
								<span class="stepText">STEP 2. 작업 진행 중</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 매칭이 되어 작업이 진행 중인 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon3.png" width="100" height="100"/>
							</div>
							<div class="complete1">
								<span class="stepText">STEP 3. 거래 완료</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 거래가 완료 된글 개수를 나타냅니다.</span>
							</div>						
						</div>
						<div class="myWorkState">
							<div id="myWorkStateText">작업 현황</div>
							<div class="participate">
								<span class="stepText">STEP 1. 참가 지원 중</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 참여 신청한 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon3.png" width="100" height="100"/>
							</div>
							<div class="working2">
								<span class="stepText">STEP 2. 작업 진행 중</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 매칭이 되어 작업이 진행 중인 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon3.png" width="100" height="100"/>
							</div>
							<div class="complete2">
								<span class="stepText">STEP 3. 거래 완료</span>
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 작업이 끝나 거래가 완료 된 글 개수를 나타냅니다.</span>
							</div>
							<div style="clear: both;"></div>					
						</div>
					</div>
				</div>
				<!-- 포트폴리오 -->
				<div id="portpolio">
					<div class="portpolioText">
						포트폴리오
						<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png"/>
						<div id="smallReqBtn">의뢰 요청</div>
					</div>
					<div class="portpolioArea">
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div class="portpolioList"></div>
						<div style="clear: both;"></div>
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
						<div style="clear: both;"></div>						
					</div>
				</div>
				<!-- 캐쉬 변동 내역 -->
				<div id="cashChange">
					<div class="cashChangeText">
						Cash 변동내역
						<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png"/>
					</div>
					<div class="cashChangeArea">
						<div class="dateArea">
							<div class="monthArea">2020.03.</div>
							<div class="changeList">
								<div class="changeClass1">&nbsp;&nbsp;&nbsp;&nbsp;의뢰 비용</div>
								<div class="chageDesc">2020. 03.10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2,000 지출 </div>
							</div>
							<div class="changeList">
								<div class="changeClass2">&nbsp;&nbsp;&nbsp;&nbsp;의뢰 수주</div>
								<div class="chageDesc">2020. 03.05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3,000 입금 </div>
							</div>
							<div class="changeList">
								<div class="changeClass3">&nbsp;&nbsp;&nbsp;&nbsp;캐쉬 충전</div>
								<div class="chageDesc">2020. 03.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4,000 충전 </div>
							</div>														
						</div>
					</div>
				</div>
			</div>
			
			<!-- 회원 정보 수정 모달창 -->
			<div id="editModal" class="editModalArea">
				<div class="user-edit-content">
					<div class="page-header">
						<h1 style="font-size: 20pt; text-indent: 10px;">회원 정보 수정</h1>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-12">
									<form action="" name="basicInfoForm">
										<div class="basicInfo">
											<div id="basicInfoText">기본 정보</div>
											<table>
												<tr>
													<td style="width: 300px; height: 50px;">이름</td>
													<td style="height: 50px;"><input type="text" name="userName" class="userName"></td>
												</tr>
												<tr>
													<td style="height: 50px;">비밀번호</td>
													<td style="height: 50px;"><input type="password" name="userPwd" class="userPwd"></td>
												</tr>
												<tr>
													<td style="height: 50px;">비밀번호 재확인</td>
													<td style="height: 50px;"><input type="password" name="userPwd2" class="userPwd2"></td>
												</tr>
												<tr>
													<td style="height: 50px;">닉네임</td>
													<td style="height: 50px;"><input type="text" name="nickName" class="nickName"></td>
												</tr>
												<tr>
													<td style="height: 50px;">연락처</td>
													<td style="height: 50px;"><input type="text" name="phone" class="phone"></td>
												</tr>
												<tr>
													<td style="height: 50px;">이메일</td>
													<td style="height: 50px;"><input type="email" name="email" class="email"></td>
												</tr>
												<tr>
													<td style="height: 50px;">자기소개</td>
													<td style="height: 50px;"><textarea rows="8" cols="65"></textarea></td>
												</tr>																																																
											</table>
										
										
										</div>
										<div class="addInfo">
											<div id="addInfoText">추가 정보</div>
												<table>
													<tr>
														<td style="width: 300px; height: 50px;">은행명</td>
														<td style="height: 50px;"><input type="text" name="bank" class="bank"></td>
													</tr>
													<tr>
														<td style="height: 50px;">계좌번호</td>
														<td style="height: 50px;"><input type="text" name="accountNumber" class="accountNumber"></td>
													</tr>													
												</table>
										</div>
									</form>									
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div id="editCompleteBtn" onClick="closeModal();">완료</div>
					<div id="editCancelBtn" onClick="closeModal();">취소</div>
					<div style="clear: both;"></div>
				</div>
			</div>				
		</div>
		<div id="right-side">
			<div></div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	<!-- 회원정보 수정 모달 -->
	<script>
		$('#profileEditBtn').click(function(){
			$("#editModal").show();		
		});
		function closeModal(){
			$('.editModalArea').hide();
		};
	</script>
	<jsp:include page="mypageSideMenubar.jsp"/>
</body>
</html>