<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 마이페이지 사이드 메뉴 스크롤 */
	#scroll{
		font-size: 15pt;
		background: #003399;
		color: white;
		font-weight: bolder;
		border-radius: 5px;
	}
	#scroll>span{
		font-size: 17pt;
		padding: 20px;
		background: black;
		border-radius: 5px;
	}
	#scroll>table{
		padding: 15px;
		margin-top: 20px;
		line-height: 60px;
	}
	td>a:link { color: white; text-decoration: none;}
	td>a:visited { color: white; text-decoration: none;}
 	td>a:hover { color: white; text-decoration: underline;}

</style>
</head>
<body>
	<!-- 마이페이지 사이드 메뉴 -->
	<script> 
		function scroll_follow(id){
  			$(window).scroll(function(){  //스크롤이 움직일때마다 이벤트 발생
      			var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환
      			$(id).stop().animate({top:290+position+"px"}, 500); //해당 오브젝트 위치값 재설정
   			});
		}
 			scroll_follow("#scroll");
	</script> 
	<div id="scroll" style="position:absolute; top:290px; left: 30px;"> 
		<span>마이페이지 메뉴</span>
		<table>
			<tr><td style="border-bottom: 1px solid white; border-top: 1px solid white;"><a href="#mypageArea">최상단으로</a></td></tr> 
			<tr><td style="border-bottom: 1px solid white;"><a href="#mypostManagement">내 글 관리</a></td></tr>
			<tr><td style="border-bottom: 1px solid white;"><a href="#myReqWorkState">내 의뢰/작업 현황</a></td></tr>
			<tr><td style="border-bottom: 1px solid white;"><a href="#portpolio">포트폴리오</a></td></tr>
			<tr><td style="border-bottom: 1px solid white;"><a href="#cashChange">Cash변동내역</a></td></tr>
		</table> 
	</div>
</body>
</html>