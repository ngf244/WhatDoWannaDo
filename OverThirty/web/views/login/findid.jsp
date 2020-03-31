<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기</title>
<style>

	.findidtitle{
	
	margin-top: 150px;
	text-align: center;
	color: black;
	border-bottom: 4px solid #A9BCF5; 
	
	}

   .nameform{
   margin-top: 30px;
   width: 37%;
   height: 50px;
   font-size: 20px;
   }
	
	
   .emailform{
   margin-top: 10px;
   width: 37%;
   height: 50px;
   font-size: 20px;
   }	
	
   .findform{
   text-align:center;
   }	
	
	.findbutton{
	
	margin-top: 10px;
	width: 37.3%;
	height: 50px;
	
	}
	
	.findidinfo{
	
	margin-top: 20px;
	text-align:center;
	}

</style>
</head>
<body>

		<div class="findidtitle">
		<h3>아이디 찾기</h3>
		</div>
		
			<div class="findidinfo">
				<h3><li>회원가입시 입력한 이름과 이메일 정보를 입력해 주시기 바립니다.</li></h3>
				<h4><li>정보를 입력하실때 정확하게 입력해주세요</li></h4>
				<h4><li>정보가 정확하지 않으면 찾기에 어려움이 있습니다</li></h4>
					</div>
	
	
		<div class="findform">
			<input type="text" name="username" class="nameform" placeholder="이름"> <br>
         	<input type="text" name="email" class="emailform" placeholder="이메일 "><br>
			<button type="button" class="findbutton">아이디 찾기</button>
		</div>
		
		
			
		
		
				 
</body>
</html>