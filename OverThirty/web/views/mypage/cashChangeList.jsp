<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.cashChangeList{
		border: 1px solid lightgray;
		height: 1000px;
		width: 80%;
		margin: auto;
	}

	.cashChangeListTopArea{height: 60px; background: #3DB7CC; color: white; font-size: 18pt; box-shadow: 2px 2px 5px black;}
	
	#cashChangeListText{font-weight: bolder; margin-top: 12px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#cashChangeListContent{
		height: 870px;
		margin-top: 30px;
	}
	
	/* 현재 캐쉬 현황 */
	#nowCash{
		margin: 30px;
		margin-left: 400px;
		margin-top: 40px;
		border: 1px solid black;
		width: 35%;
		height: 120px;
		box-shadow: 2px 2px 5px black;
		border-radius: 5px;
	}
	
	#nowCashText{
		font-size: 30pt;
		display: inline-block;
		margin: 35px;
		font-weight: bold;
	}

	#nowCashAmount{
		font-size: 30pt;
		display: inline-block;
		float: right;
		margin: 35px;
		margin-right: 50px;
		color: rgb(231, 76, 60);
		font-weight: bold;
	}	
	
	/* 캐쉬 변동 내역 게시판 */
	.cashChangeBoard{
		/* height: 850px;
		border: 1px solid black;
		margin: 30px;
		margin-top: 30px; */
		min-height:50px; padding-bottom: 50px;
		margin-left:auto; margin:auto; margin-top:50px;			
	}
	
/* 	.cashChangeListPaging{
		width: 500px;
		height: 120px;
		border: 1px solid black;
		margin: 20px;
	} */
	
	/* 게시판 테이블 css */
	#boardTable{text-align:center; margin: auto; width: 1100px;}
	#boardTable th{border-bottom: 3px solid lightgray; background: #ececec; height: 50px; font-size: 15pt; border-bottom: 3px solid #036;}
	#boardTable td{border-bottom: 1px solid lightgray; height: 40px; font-size: 12pt;}	
	
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
</style>
<title>Cash 내역</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="cashChangeList">
				<div class="cashChangeListTopArea">
					<div id="cashChangeListText">Cash 변동내역</div>	
				</div>
				<div id="cashChangeListContent">
					<div id="nowCash">
						<div id="nowCashText">Cash</div>
						<div id="nowCashAmount">5,000</div>
					</div>
					<div class="cashChangeBoard">
						<table id="boardTable">
							<tr>
								<th style="width: 40%;">변동 유형</th>
								<th style="width: 25%">금액</th>
								<th style="width: 30%">날짜</th>
							</tr>
							<tr>
								<td>의뢰 비용</td>
								<td><span class="amount">-2,000</span></td>
								<td>2020.03.25.</td>							
							</tr>
							<tr>
								<td>의뢰 수주</td>
								<td><span class="amount">+3,000</span></td>
								<td>2020.03.12.</td>							
							</tr>
							<tr>
								<td>충전</td>
								<td><span class="amount">+4,000</span></td>
								<td>2020.03.01.</td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
							<tr>
								<td></td>
								<td><span class="amount"></span></td>
								<td></td>							
							</tr>
						</table>						
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
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>