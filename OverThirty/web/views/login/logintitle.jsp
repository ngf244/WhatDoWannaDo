<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
   .loginTitle{
   margin-top: 60px;
   text-align: center;
   border-bottom: 4px solid #A9BCF5;
   }
   
   #logo{
   /* margin-top: -20px; */
   height: 100px;
   width: auto;
   padding-bottom: 20px;
   }
   .loginform {
         text-align: center;
   }
   
   .inputForm{
   margin-top: 40px;
   width: 37%;
   height: 50px;
   font-size: 20px;
   }
   
    .inputPwForm{
    margin-top: 1px;
    width: 37%;
   	height: 50px;
  	font-size: 20px;
    }
    
   
    
   
   
   #loginBtn{
   margin-top: 30px;
   text-align: center;
   width: 37.5%;
   height: 50px;
   font-size: 20px;
   
   }
   
   .kakaobutton{
   
   margin-top: 90px;
   text-align: center;
   height: auto; width: 100%; border: 1px solid black;
   height: 70px;    
   }
   
   .apilogin{
   
   margin-top: 50px;
   text-align: center;
   height: auto; width: 100%; border: 1px solid blue;
   height: 70px;    
   }
   
   }
</style>
</head>
<body>
   
      <div class="loginTitle">
         <img src="<%= request.getContextPath() %>/sources/image/logintitle.png" id="logo">
      </div>
      
      <div class="loginform">
         <input type="text" id="loginId" name="userId" class="inputForm" placeholder="&nbsp;아이디" > <br>
         <input type="password" id="loginPw" name="password" class="inputPwForm" placeholder="&nbsp;비밀번호" ><br>
            
         <button type="button" id="loginBtn">로그인 </button>
      </div>
      
      <div class="kakaobutton">kakao login button 영역</div>
      
      <div class="conditions"> 이용약관 등 영역</div>
               
</body>
</html>