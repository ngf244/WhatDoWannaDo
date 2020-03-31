<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#slideBar {
		margin-top: 70px;
		width: 100%;
		height: 200px;
		
		border: 1px solid black;
	}
	
	#slideImg {
		margin-top: 70px;
		width: 100%;
		height: 200px;
		
		border: 1px solid black;
	}
	
	#rankView {
		display: inline-table;
		margin-top: 70px;
		width: 700px;
		min-height: 600px;
		float: left;
	}
	.catalog {
		margin-top: 10px;
		display: inline-table;
		width: 130px;
		height: 20px;
		padding: 20px;
		font-size: 20px;
		background-color: rgb(224, 224, 224);
		cursor: pointer;
		border-bottom: 2px solid black;
	}
	.catalog.select {
		border: 2px solid black;
		border-bottom: none;
		background-color: rgb(52, 152, 219);
		color: white;
	}
	#catalogContent {
		margin-top: 20px;
		width: 100%;
		min-height: 200px;
		
		border: 1px solid black;
	}
	.catalogView {
		
	}
	
	#gg {
		display: inline-table;
		margin-top: 70px;
		width: 200px;
		height: 600px;
		float: right;
		
		border: 1px solid black;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
		</div>
		<div id="main">
			<div id="slideImg">
				슬라이드 이미지
			</div>
			
			<div id="rankView">
				<div class="catalog">카타로그1</div>
				<div class="catalog">카타로그2</div>
				<div class="catalog">카타로그3</div>
				<div class="catalog">카타로그4</div>
				<br>
				<script>
					var $select = $('.catalog').eq(0);
					$select.addClass("select");
					
					$('.catalog').hover(function(){
						$('.catalog').removeClass("select");
						$(this).addClass("select");
					}, function() {
						$('.catalog').removeClass("select");
						$select.addClass("select");
					});
				</script>
				
				<div id="catalogContent">
					<div class="catalogView">
						
					</div>
				</div>
			</div>
			
			<div id="gg">
				광고
			</div>
		</div>
        <div id="right-side">
            
		</div>
	</section>
	<jsp:include page="common/footer.jsp"/>
</body>
</html>