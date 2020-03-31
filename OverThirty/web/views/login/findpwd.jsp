<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>

	
	.findpwdtitle{
	
	margin-top: 80px;
	text-align:center;
	border-bottom: 5px solid #A9BCF5;
	
	}
	
	.findPwdForm{
	margin-top: 80px;
	text-align: center;
	}
	
	.inputForm{
   	width: 29%;
   	height: 50px;
   	font-size: 20px;
	}
	
	
	.phonenum{
	margin-top: 20px;
	width: 10%;
	height: 50px;
	font-size: 20px;
	}
	}
	
	}
	
	
	.findPwdphone {
	
	margin-top: 10px;
	text-align: center;
	height: 70px; 	
	
	}
	
	.findPwdname{
	
	margin-top: 30px;
	text-align: center;
	height: 70px; 
		
	
	}
	
	#inbutton{
	width: 8%;
	height: 56.5px;
	
	}
	
	.phoneatt{
	margin-top: 10px;
	width: 27%;
   	height: 50px;
   	font-size: 20px;
	
	}
	
	
	.infoemail{
	margin-top: 50px;
	
	}
	
	.findname{
	width: 20%;
	height: 50px;
	font-size: 20px;
	
	}
	
	.findemail{
	
	margin-top: 20px;
	width: 20%;
	height: 50px;
	
		
	}


</style>
</head>
<body>

</body>

	
	
	<div class="findpwdtitle"> 휴대폰 인증으로 찾기
	
	</div>
	
	<div class="findPwdForm">
		이름<input type="text" id="loginId" name="userId" class="inputForm"><br>
			<input type="text" id="phone" name="userId" class="phonenum">
				<input type="text" id="phone" name="userId" class="phonenum">
					<input type="text" id="phone" name="userId" class="phonenum">
						<button type="button" id="inbutton">인증번호 발송</button>
	<div>
	
	<div class="findPwdphone">
		<input type="text" id="att" name="attnum" class="phoneatt">
	</div>
	
	
	<div class="infoemail"> 이메일로 찾기
	
	
	<div class="findPwdname">
		이름  <input type="text" id="email" name="username" class="findname"> <br>
		이메일 <input type="text" id="email" name="useremail" class="findemail">
			<button type="button" id="inbutton">임시번호</button>
	</div>	
	
	
	
	
	
	
	   </div>
	  </div>
	 </div>
</html>