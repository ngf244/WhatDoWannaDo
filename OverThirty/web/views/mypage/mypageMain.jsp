<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	/* 마이페이지 메인 상단 프로필 부분 */
	.mypageArea{width: 100%; height: 4100px; text-align: left;}
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
	.normalInfo{border: 1px solid black; height: 220px;}
	#userId{color: rgb(52, 152, 219); display: inline-block; font-size: 20pt; font-weight: bold; margin-top: 10px; margin-left: 10px;}
	#userId + span{font-size: 15pt; font-weight: bold; padding-left: 5px;}
	#userInfoTable{width: 70%; height:120px; margin-top: 20px;}
		
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
	.introduceInfo{border: 1px solid black; height: 180px; padding-left: 20px;}
		
	/* 회원정보 수정 모달창 */
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
		height: 1000px;
		border-radius: 10px;
	}
	
	#editCancelBtn{
		 cursor:pointer;
		 background-color:#DDDDDD;
		 text-align: center;
		 padding-bottom: 10px;
		 padding-top: 10px;
	}
		
	/* 현재 포인트&캐쉬 */
	.point-cash-area{height: 160px; border: 1px solid black; margin-top: 30px;}
	.point{width: 47%; height: 160px; border: 1px solid black; display: inline-block;}
	.cash{width: 47%; height: 160px; border: 1px solid black; display: inline-block; margin-left: 30px;}
	
	/* 내 글 관리 부분 */
	.mypostManagement{height: 600px; border: 1px solid black; margin-top: 30px;}
	.mypostText{height: 70px; border: 1px solid black;}
	.mypostArea{height: 500px; border: 1px solid black; margin-top: 30px;}
	
	/* 나의 의뢰/작업 현황 */
	.myReqWorkState{height: 800px; border: 1px solid black; margin-top: 30px;}
	.myReqWorkStateText{height: 70px; border: 1px solid black;}
	.myReqWorkStateArea{height: 700px; border: 1px solid black; margin-top: 30px;}
	.myReqState{height: 340px; border: 1px solid black;}
	.myWorkState{height: 340px; border: 1px solid black; margin-top:15px;}
	
	/* 포트폴리오 */
	.portfolio{height: 700px; border: 1px solid black; margin-top: 30px;}
	.portfolioText{height: 70px; border: 1px solid black;}
	.portfolioArea{height: 600px; border: 1px solid black; margin-top: 30px;}
	
	/* 신고내역 */
	.report{height: 500px; border: 1px solid black; margin-top: 30px;}
	.reportText{height: 70px; border: 1px solid black;}
	.reportArea{height: 400px; border: 1px solid black; margin-top: 30px;}
	
	/* 캐쉬변동 */
	.cashChange{height: 600px; border: 1px solid black; margin-top: 30px;}
	.cashChangeText{height: 70px; border: 1px solid black;}
	.cashChangeArea{height: 500px; border: 1px solid black; margin-top: 30px;}
</style>
<title>마이 페이지</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
		</div>
		<div id="main">
			<div class="mypageArea">
				<div class="mypageTopArea">
					<div id="mypageText">마이페이지</div>
					<div class="requestBtn"><b>의뢰 요청</b></div>
					<div style="clear: both;"></div>		
				</div>
				
				<div class="myprofileArea">
					<div class="normalInfo">
						<div class="profileImage">
							<img class="profile" src="${ contextPath }/resources/image/default_profile_male.png">
						</div>
						<button id="profileEditBtn">프로필 수정</button>
						<div id="userId">user01</div><span>님</span>
						<div id="normalInfoArea">
							<table id="userInfoTable" border="1">
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
					</div>
				</div>
				
				<div class="point-cash-area">
					<div class="point">
					
					</div>
					<div class="cash" style="float: right;">
					
					</div>
					<div style="clear:both;"></div>
				</div>
				
				<div class="mypostManagement">
					<div class="mypostText">
						내 글 관리
					</div>
					<div class="mypostArea">
						<div class="pointArea">
							포인트 게시글
							<div class="postList">
								
							</div>
						</div>
						<div class="cashArea">
							캐쉬 게시글
							<div class="postList">
								
							</div>
						</div>					
						
					</div>
				</div>
				<div class="myReqWorkState">
					<div class="myReqWorkStateText">나의 의뢰/작업 현황</div>
					<div class="myReqWorkStateArea">
						<div class="myReqState">
							<div class="recruit">
								
							</div>
							<div class="working">
							
							</div>
							<div class="complete">
							
							</div>						
						</div>
						<div class="myWorkState">
							<div class="participate">
								
							</div>
							<div class="working">
							
							</div>
							<div class="complete">
							
							</div>					
						</div>
					</div>
				</div>
				<div class="portfolio">
					<div class="portfolioText">포트폴리오</div>
					<div class="portfolioArea">
						
					</div>
				</div>
				<div class="report">
					<div class="reportText">신고 내역</div>
					<div class="reportArea">
						
					</div>
				</div>
				<div class="cashChange">
					<div class="cashChangeText">Cash 변동내역</div>
					<div class="cashChangeArea">
					
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
									<h3>회원 정보 수정 모달창입니다.</h3>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div id="editCancelBtn" onClick="closeModal();" style="font-size: 13pt;">수정완료</div>
				</div>
			</div>				
		</div>
		<div id="right-side">
			<div></div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	<script>
		$('#profileEditBtn').click(function(){
			$("#editModal").show();		
		});
		function closeModal(){
			$('.editModalArea').hide();
		};
	</script>
</body>
</html>