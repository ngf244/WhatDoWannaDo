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
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main" style="background: red">
		</div>
        <div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="common/footer.jsp"/>
</body>
</html>