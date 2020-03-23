<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.directRequest{
		border: 1px solid black;
		height: 1000px;
	}

	.directRequestTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#directRequestText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}

	#directRequestContent{
		height: 870px;
		margin-top: 30px;
		border: 1px solid black;
	}
</style>
<title>의뢰 요청</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<left-side>
			
		</left-side>
		<main>
			<div class="directRequest">
				<div class="directRequestTopArea">
					<div id="directRequestText">의뢰 요청</div>	
				</div>
				<div id="directRequestContent">
				
				</div>
			</div>
		</main>
		<right-side>
				
		</right-side>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>