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
        overflow: auto;
    }

    table{
        width: 100%;
    }

    /* tr{
        border: 1px solid black;
        color: red;
    } */

    tr:first-child{
        border: 1px solid black;
        color: red;
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
                <div class="list">
                    <table>
                        <tr>
                            <th>거래 번호</th>
                            <th>금액</th>
                            <th>사유</th>
                            <th>메세지</th>
                            <th>취소 요청자</th>
                            <th>처리 요청일</th>
                            <th>처리</th>
                        </tr>
                    </table>
                </div>
                <div class="listLetter">거래 중재 요청 리스트</div>
                <div class="list">
                    <table>
                        <tr>
                            <th>거래 번호</th>
                            <th>금액</th>
                            <th>사유</th>
                            <th>메세지</th>
                            <th>취소 요청자</th>
                            <th>처리 요청일</th>
                            <th>처리</th>
                        </tr>
                    </table>
                </div>
            </div>
		</div>
        <div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>