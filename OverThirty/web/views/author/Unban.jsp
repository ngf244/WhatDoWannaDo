<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    #unbanMain{
        width: 100%;
        position: relative;
    }

    /* #unbanMain>div{
        position: absolute;
    } */

    .banListLetter{
        width: 100%;
        height: 40px;
        text-align: center;
        padding-top: 15px;
        margin: 0 auto;
        margin-top: 10px;
        font-size: larger;
        background-color: rgb(52, 152, 219);
    }

    .banList{
        width: 95%;
        min-height: 600px;
        margin-top: 30px;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: 30px;
    }
    
    table{
        width: 100%;
    }

    table>tr{
        border: 1px solid black;
        color: red;
    }

    /* tr:first-child{
        border: 1px solid black;
        color: red;
    } */
    
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
        <h2 style="text-align: center;">관리자 모드</h2>
        <hr>
        <div id="left-side" style="background-color: yellow;">
            <jsp:include page="menubar/leftmenu.jsp"/>
		</div>
        <div id="main" style="background: red">
            <div id="unbanMain" style="background-color: white;">
                <div class="banListLetter">제재 리스트</div>
                <div class="banList">
                    <table>
                        <tr>
                            <th>유저 아이디</th>
                            <th>사유</th>
                            <th>상세 내역</th>
                            <th>제재 등록일</th>
                            <th>제재 해제일</th>
                            <th>해제</th>
                        </tr>
                    </table>
                </div>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>ddf
		</div>
        <div id="right-side" style="background: blue">
            
		</div>
    </section>
    <!-- <div class="sectionafter"></div> -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>