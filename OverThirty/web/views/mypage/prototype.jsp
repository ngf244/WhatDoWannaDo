<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	}
	.myprofileArea{height: 400px; border: 1px solid black; margin-top: 30px;}
	.normalInfo{border: 1px solid black; height: 220px;}
	.profileImage{width: 180px; height: 180px; border: 1px solid black; margin: 20px; display:inline-block; border-radius: 10px;}
	#profileEdit{margin-left: 100px;}
	.introduceInfo{border: 1px solid black; height: 180px;}
	.point-cash-area{height: 150px; border: 1px solid black; margin-top: 30px;}
	.point{width: 475px; height: 150px; border: 1px solid black; display: inline-block;}
	.cash{width: 475px; height: 150px; border: 1px solid black; display: inline-block; margin-left: 30px;}
	
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
</head>
<body>
	<%@ include file="../common/mainHeader.jsp" %>
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
						<img src="">
					</div>
					<button id="profileEdit">프로필 수정</button>					
				</div>
				<div class="introduceInfo">
				
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
	</div>

</body>
</html>