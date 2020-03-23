<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    #tradeCareMain{
        width: 100%;
        position: relative;
    }

    /* #unbanMain>div{
        position: absolute;
    } */

    .listLetter{
        width: 100%;
        height: 40px;
        text-align: center;
        padding-top: 15px;
        margin: 0 auto;
        margin-top: 10px;
        font-size: larger;
        background-color: rgb(52, 152, 219);
    }

    .list{
        width: 95%;
        min-height: 600px;
        margin-top: 30px;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: 30px;
    }
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
        <div id="left-side" style="background-color: yellow;">
            <jsp:include page="menubar/leftmenu.jsp"/>
		</div>
        <div id="main" style="background: red">
            <div id="unbanMain" style="background-color: white;">
                <div class="listLetter">거래 취소 리스트</div>
                <div class="list" style="background-color: brown;">text</div>
                <div class="listLetter">거래 중재 요청 리스트</div>
                <div class="list" style="background-color: brown;">text</div>
            </div>
		</div>
        <div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>