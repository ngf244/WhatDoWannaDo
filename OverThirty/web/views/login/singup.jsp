<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>


	.singuptitle{
	
	margin-top: 100px;
	text-align: center;
	border-bottom: 5px solid #A9BCF5;
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
   margin-top: 20px;
   text-align: center;
   height: 70px;
   width: 20%;
   background: skyblue;
   color:white;
   
   }
   
   #cancellbutton{
   margin-top: 20px;
   text-align: center;
   height: 70px;
   width: 20%;
   background: gray;
   color:white;
   }
   
   
   .consent{
   margin-top:30px;
   text-align: center;
   }
   
   .conditions{
   margin-top: 10px;
   overflow:scroll;
   height: 300px; 
   width: 30%; 
   border: 1px solid gray;
   text-align: center;
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
		
				<div class="consent">
					<input type="checkbox" name="chk_con" value="chk_">왔두 워너두 이용약관 동의	
				    	</div>
		
						<div class="conditions"><h5>왔두워너두에 오신걸 환영합니다.
							왔두 워너두는 자유로운 커뮤니티와 서로간의 존중등을 위한 디자인 커뮤니티 사이트입니다.</h5>
							 </div>
							
								<div class="consent">
									<input type="checkbox" name="chk_con" value="chk_">개인 정보 및 이용에 대한 안내	
		    							</div>
		
												<div class="conditions"><h5>정보통신망법 규정에 따라 왓두워너두 회원가입및 등등</h5>
							 						</div>
							 						
							 								<div class="consent">
																<input type="checkbox" name="chk_con" value="chk_">위치 정보 이용약관 동의	
		    														</div>
		    																
		    																<div class="conditions"><h5>정보통신망법 규정에 따라 왓두워너두 회원가입및 등등</h5>
							 													</div>
							 						
			
		    		<div class="signbutton">
		    			<button type="button" id="cancellbutton">취소</button>
						<button type="button" id="signbutton" name="singin">가입하기</button>
					</div>	
</body>
</html>