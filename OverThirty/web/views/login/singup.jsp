<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>


	.singuptitle{
	
	margin-top: 60px;
	text-align: center;
	}
	
	.singup{
	
	}
		
	.titletext{
	margin-top: 50px;
	text-align: center;
    
    }
    
    .inputForm{
   width: 37%;
   height: 50px;
   font-size: 20px;
   }
   
   .birthform{
   width: 10.5%;
   height: 40px;
   font-size: 15px;
   
   }
   
   .select{
   width: 15%;
   height: 45.2px;
   font-size: 15px;
   }
   
   .selfintro{
   width : 37%;
   height : 300px;
   
   }
   
   .signbutton{
   text-align:center;
   
   }
   
   #signbutton{
   margin-top: 10px;
   text-align: center;
   height : 45px;
   width : 37.3%;
   
   }
   

</style>
</head>
<body>
	<div class="singuptitle">
      <img src="<%= request.getContextPath() %>/sources/image/logintitle.png" id="logo">
    </div>			
			
		<div class="titletext"><h4>아이디</h4>
			<input type="text" id="singId" name="singinId" class="inputForm">
		</div>
				
		<div class="titletext"><h4>비밀번호</h4>
			<input type="text" id="singPwd" name="singinPwd" class="inputForm">
		</div>
		
		
		<div class="titletext"><h4>비밀번호 재확인</h4>
			<input type="text" id="singId" name="singreinPwd" class="inputForm">
		</div>
		
		
		<div class="titletext"><h4>이름</h4>
			<input type="text" id="singname" name="singinname" class="inputForm">
		</div>
		
		<div class="titletext"><h4>생년월일</h4>
			<input type="text" id="singId" name="singyyyy" class="birthform" placeholder="&nbsp;년(4자)입력" maxlength="4">	
	      		<select id="mm" class="select">
				<option value="">월</option>
				<option value="01">1</option>
				<option value="02">2</option>
				<option value="03">3</option>
            	<option value="04">4</option>
				<option value="05">5</option>
		    	<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
		</select>
			<input type="text" id="singId" name="singmm" class="birthform" placeholder="일" maxlength="2">	
		</div>	
		
		
		<div class="titletext"><h4>자기소개</h4>
			<input type="text" id="intro" class="selfintro">
		</div>
			
		<div class="signbutton">
			<button type="button" id="signbutton">가입하기</button>
		</div>	
</body>
</html>