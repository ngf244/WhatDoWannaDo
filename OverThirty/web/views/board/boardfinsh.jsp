<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>
	
	.freeboard{
	maigin-top: 100px;
	border-bottom: 3px solid #A9BCF5;
	
	}
	
	.nickname{
	
	border-bottom: 3px solid #A9BCF5;
	
	}
	
	
	.replyline{
	
	margin-top: 300px;
	border: 2px solid #A9BCF5;
	
	
	}
	
	.inputForm{
	margin-top: 10px;
	width: 20%;
	height: 108px;

	}
	
	.inputtext{
	
	margin-top: 10px;
	width: 78.4%;
	height: 108px;
	
	}
	
	.replybutton{
	
	margin-top: 10px;
	width:20%;
	height: 40px;
	background: darkblue;
	color: white;
	
	}

</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
			</div>
				<div id="main" style="background: white">
			
  				<div class="freeboard">자유갤러리			
  					</div>
  					
  						<div class="writingtitle">
  							<h3>오늘 카페에서 치킨배달 도전한썰 푼다.</h3>
	  							</div>
	  							
	  								<div class="nickname">
	  									<h3>안양그녀</h3>
	  										</div>
	  										
	  										 		<div class="writinglist">
	  										 			<h4>오늘 카페에서 치킨먹은 빌런짓 했는데 다 쳐다보더랑</h4> 
	  										 			</div>
  		
  		
  															<!-- 글쓰기 경계선 -->
  															<div class="replyline">
  																				</div>
  																				
  																				
  					<div class="textlist">
  						<input type="text"  name="replynic" class="inputForm">
  							<input type="text" name="boardtext" class="inputtext">
  							</div>
  							
  								<div class="comentbutton">
  									<button type="button" class="replybutton">댓글작성</button>
  									</div>
  																				
  																				
  		
  		
  		
  			
  		
  		
  		
  				
						
						
		</div>					
		<div id="right-side" style="background: blue">
			</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>