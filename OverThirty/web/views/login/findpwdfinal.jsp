<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<style>

	.idtitle{
	margin-top: 100px;
	text-align: center;
	height: 70px; 	
	border-bottom: 5px solid #A9BCF5;
	
	}
	
	.title{
	
	text-align:center;
	
	}
	
	.finalPwd{
	
	margin-top: 50px;
	text-align: center;
	
	}
	
	.inputForm{
	
	margin-top: 10px;
    width: 37%;
  	height: 50px;
   	font-size: 20px;
	
	}

	.finalPwdbutton{
	margin-top: 30px;
	text-align: center;
	}
	
	#changebutton{
	width: 37%;
  	height: 50px;
   	font-size: 20px;
   	background: skyblue;
   	color: white;
	
	}

</style>
</head>
<body>
	<div class="idtitle">
		<h1>현재 아이디 : HellowWorld <%  %> </h1>
		</div>
	
	
		<div class="title">
			<h5>변경할 새로운 비밀번호를 설정해주세요</h5>
			<h5>변경후 변경된 비밀번호로 로그인 가능합니다</h5>
		</div>
		
		
		
		
		
		
		<div class="finalPwd">
			 <input type="text" id="" name="changepwd" class="inputForm" placeholder="새 비밀번호 입력" > <br>
		 		 <input type="text" id="" name="changepwd" class="inputForm" placeholder="비밀번호 확인" >
					</div>
	
	
						<div class="finalPwdbutton">
							<button type="button" id="changebutton">확인</button>
								</div>
	
	
</body>
</html>