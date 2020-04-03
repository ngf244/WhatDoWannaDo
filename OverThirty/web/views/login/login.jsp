<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>로그인</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
   .loginTitle{
   margin-top: 60px;
   text-align: center;
   border-bottom: 5px solid #A9BCF5;
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
   
   #kakaoBtn{
   margin-top: 10px;
   text-align: center;
   width: 37.5%;
   height: 50px;
   font-size: 20px;
   
   }
   
   #googleBtn{
   
   margin-top: 10px;
   text-align: center;
   width: 37.5%;
   height: 50px;
   font-size: 20px;
   
   }
   
   .title{
   margin-top: 10px;
   text-align: center;
   }
   
</style>
</head>
<body>
<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
   
      <div class="loginTitle">
         <img src="<%= request.getContextPath() %>/images/loginlogo.png" id="logo">
      </div>
      		
      <div class="title">		
      		<h5>회원가입시 등록한 아이디 와 비밀번호를 입력해주세요</h5>
      		<h5>회원가입시 더 다양한 커뮤니티를 즐길수 있습니다</h5>
      </div>
      
      <div class="loginform">
         <input type="text" id="loginId" name="userId" class="inputForm" placeholder="&nbsp;아이디" > <br>
         <input type="password" id="loginPw" name="password" class="inputPwForm" placeholder="&nbsp;비밀번호" ><br>
         <button type="button" id="loginBtn">로그인 </button><br>
         <button type="button" id="kakaoBtn">카카오아이디 로그인</button><br>
         <button type ="button" id="googleBtn">구글아이디 로그인</button>
      </div>
</body>
</html>