<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	/* 마이페이지 메인 상단 프로필 부분 */
	#mypageArea{width: 100%; height: 3900px; text-align: left;}
	.mypageTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	#mypageText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}
	.requestBtn{
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
	}
	
	/* 회원 정보 영역 */
	.myprofileArea{height: 400px; border: 1px solid black; margin-top: 30px;}
	.normalInfo{border-bottom: 1px solid silver; height: 220px;}
	#userId{color: rgb(52, 152, 219); display: inline-block; font-size: 20pt; font-weight: bold; margin-top: 10px; margin-left: 10px;}
	#userId + span{font-size: 15pt; font-weight: bold; padding-left: 5px;}
	#userInfoTable{width: 80%; height:120px; margin-top: 20px;}
		
	/* 프로필 이미지 */
	.profileImage{width: 180px; height: 180px; border: 1px solid black; margin: 20px; display:inline-block; border-radius: 10px; overflow: hidden; float: left;}
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
		width: 60%;
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
		 margin-left: 460px;
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
	#basicInfoText{width: 80%; height: 60px; background: rgb(102, 102, 102); color: white; margin: 20px; margin-left: 120px; font-size: 20pt; font-weight: bold; text-align: center; line-height: 55px; border-radius: 10px;}
	
	#addInfoText{width: 80%; height: 60px; background: rgb(102, 102, 102); color: white; margin: 20px; margin-left: 120px; font-size: 20pt; font-weight: bold; text-align: center; line-height: 55px; border-radius: 10px;}	
	
	.basicInfo>table{margin: 50px; margin-left: 200px; font-size: 15pt; line-height: 30px;}
	.addInfo>table{margin: 50px; margin-left: 200px; font-size: 15pt; line-height: 30px;}
	
	input{border-radius: 5px; height: 25px;}
	textarea{border-radius: 5px; resize: none; margin-top: 30px;}
	
	/* 현재 포인트&캐쉬 */
	.point-cash-area{height: 120px; margin-top: 30px;}
	.point{width: 47%; height: 120px; border: 1px solid black; display: inline-block;}
	.cash{width: 47%; height: 120px; border: 1px solid black; display: inline-block; margin-left: 30px;}
	.point>table{
		width: 85%;
		height: 80%;
		text-align: left;
		font-size: 30pt;
		margin-left: 48px;
		font-weight: bolder;
	}
	
	.cash>table{
		width: 85%;
		height: 80%;
		text-align: left;
		font-size: 30pt;
		margin-left: 48px;
		font-weight: bolder;
	}
	
	/* 내 글 관리 부분 */
	#mypostManagement{height: 800px; border: 1px solid black; margin-top: 30px;}
	.mypostText{height: 70px; border: 1px solid black; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #D5D5D5;}
	.mypostArea{height: 700px; border: 1px solid black; margin-top: 30px;}
	.mypostArea>div>span{font-size: 14pt; margin-left: 20px; font-weight: bold;}
	#replyText{font-size: 14pt; margin-left: 20px; font-weight: bold;}
	.pointArea{
		float: left;
		width: 47%;
		height: 400px;
		border: 1px solid black;
		display: inline-block;
	}
	.cashArea{
		float: right;
		width: 47%;
		height: 400px;
		border: 1px solid black;
		display: inline-block;		
	}
	.replyArea{
		width: 100%;
		height: 300px;
		border: 1px solid black;
	}
	.postList{line-height: 45px; padding: 15px; padding-left: 30px;}
	.replayList1{width: 45%; border: 1px solid black; line-height: 45px; padding: 15px; padding-left: 30px; float: left; margin-right: 36px;}
	.replayList2{width: 45%; border: 1px solid black; line-height: 45px; padding: 15px; padding-left: 30px; float: left;}
	
	/* 나의 의뢰/작업 현황 */
	#myReqWorkState{height: 810px; border: 1px solid black; margin-top: 30px;}
	.myReqWorkStateText{height: 70px; border: 1px solid black; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #D5D5D5;}
	#allReqListBtn{
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
	}
	.myReqWorkStateArea{height: 700px; margin-top: 30px;}
	#myReqStateText{font-size: 15pt; color: white; font-weight: bolder; padding-left: 30px; margin-top: 10px;}
	#myWorkStateText{font-size: 15pt; color: white; font-weight: bolder; padding-left: 30px; margin-top: 10px;}
	.myReqState{height: 340px; border: 1px solid black; border-radius: 15px; margin: 10px; background: rgb(52, 152, 219);}
	.myWorkState{height: 340px; border: 1px solid black; margin-top:15px; border-radius: 15px; margin: 10px; background: rgb(241, 179, 80);}
	.recruit{width: 25%; height: 280px; margin: 10px; float: left; background: black; color: white; font-size: 14pt;}
	.working1{width: 25%; height: 280px; margin: 10px; float: left; margin-left: 10px; background: black; color: white; font-size: 14pt;}
	.complete1{width: 25%; height: 280px; margin: 10px; float: left; margin-left: 10px; background: black; color: white; font-size: 14pt;}
	#arrow_icon_area{width: 8%; height: 280px; margin: 10px; float: left;}
	.arrow{margin-top: 90px; margin-left: 2px;}
	.participate{width: 25%; height: 280px; border: 1px solid black; margin: 10px; float: left; background: black; color: white; font-size: 14pt;}
	.working2{width: 25%; height: 280px; border: 1px solid black; margin: 10px; float: left; margin-left: 10px; background: black; color: white; font-size: 14pt;}
	.complete2{width: 25%; height: 280px; border: 1px solid black; margin: 10px; float: left; margin-left: 10px; background: black; color: white; font-size: 14pt;}
	.innerArea{width: 100%; height: 170px; background: silver; margin-top: 20px; margin-bottom: 10px; z-index: 2;}
	.innerArea + span{font-size: 10pt;}
	
	/* 포트폴리오 */
	#portpolio{height: 800px; border: 1px solid black; margin-top: 30px;}
	.portpolioText{height: 70px; border: 1px solid black; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #D5D5D5;}
	.portpolioArea{height: 700px; border: 1px solid black; margin-top: 30px;}
	#smallReqBtn{font-size: 14pt; color: white; background: rgb(231, 76, 60); display: inline-block; margin-left: 50px; padding-left: 30px; padding-right: 30px; padding-bottom: 20px; border-radius: 10px; height: 45px; cursor: pointer;}
	.portpolioList{width: 20%; height: 250px; border: 1px solid black; float: left; margin-left: 50px; margin-top: 30px;}
	.portpolioPagingArea{width: 50%; height: 70px; border: 1px solid black; margin-left: 325px; margin-top: 40px; float: left;}
	#portpolioEnrollBtn{margin-top: 40px; margin-left: 150px; font-size: 14pt; background: rgb(231, 76, 60); color: white; font-weight: bolder; padding: 15px; border-radius: 10px; float: left; cursor: pointer;}
	
	/* 캐쉬변동 */
	#cashChange{height: 700px; border: 1px solid black; margin-top: 30px;}
	.cashChangeText{height: 70px; border: 1px solid black; font-size: 18pt; font-weight: bolder; line-height: 65px; background: #D5D5D5;}
	.cashChangeArea{height: 600px; border: 1px solid black; margin-top: 30px;}
	.monthArea{width: 18%; height: 75px; border: 1px solid silver; border-radius: 100px; margin: 15px; margin-left: 540px; text-align: center; line-height: 70px;}
	.changeList{width: 90%; height: 155px; border: 1px solid silver; margin-left: 60px;}
	.changeClass1{height: 80%; width: 10%; border: 1px solid red; margin: 10px; border-radius: 100px; line-height: 120px; color: red; float: left;}
	.changeClass2{height: 80%; width: 10%; border: 1px solid green; margin: 10px; border-radius: 100px; line-height: 120px; color: green; float: left;}
	.changeClass3{height: 80%; width: 10%; border: 1px solid rgb(41, 128, 185); margin: 10px; border-radius: 100px; line-height: 120px; color: rgb(41, 128, 185); float: left;}
	.chageDesc{float: right; padding: 60px;}
	
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
					<div class="requestBtn"><b>의뢰 요청</b></div>
					<div style="clear: both;"></div>		
				</div>
				
				<div class="myprofileArea">
					<div class="normalInfo">
						<div class="profileImage">
							<img class="profile" src="${ contextPath }/views/images/default_profile.png">
						</div>
						<button id="profileEditBtn">프로필 수정</button>
						<div id="userId">user01</div><span>님</span>
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
							<span>포인트 게시글</span>
							<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png"/>
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
							<span>캐쉬 게시글</span>
							<img class="plusIcon" width="40" height="40" src="../images/plus_icon2.png"/>
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
						<div id="allReqListBtn">전체 의뢰 요청 리스트 보기</div>
						<div style="clear: both;"></div>						
					</div>
					<div class="myReqWorkStateArea">
						<div class="myReqState">
							<div id="myReqStateText">의뢰 현황</div>
							<div class="recruit">
								STEP 1. 지원자 모집 중
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 지원자를 모집하고 있는 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon.png" width="100" height="100" style="background: white;"/>
							</div>
							<div class="working1">
								STEP 2. 작업 진행 중
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 매칭이 되어 작업이 진행 중인 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon.png" width="100" height="100" style="background: white;"/>
							</div>
							<div class="complete1">
								STEP 3. 거래 완료
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 거래가 완료 된글 개수를 나타냅니다.</span>
							</div>						
						</div>
						<div class="myWorkState">
							<div id="myWorkStateText">작업 현황</div>
							<div class="participate">
								STEP 1. 참가 지원 중
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 참여 신청한 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon.png" width="100" height="100" style="background: white;"/>
							</div>
							<div class="working2">
								STEP 2. 작업 진행 중
								<div class="innerArea"></div>
								<span>캐쉬 게시판에 올린 글 중 매칭이 되어 작업이 진행 중인 글 개수를 나타냅니다.</span>
							</div>
							<div id="arrow_icon_area">
								<img class="arrow" src="../images/arrow_icon.png" width="100" height="100" style="background: white;"/>
							</div>
							<div class="complete2">
								STEP 3. 거래 완료
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
						<div class="portpolioPagingArea">
							페이징 영역
						</div>
						<div id="portpolioEnrollBtn">등록하기</div>						
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
						<h1 style="font-size: 25pt;">회원 정보 수정</h1>
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
					<div id="editCompleteBtn" onClick="closeModal();">수정완료</div>
					<div id="editCancelBtn" onClick="closeModal();">수정취소</div>
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