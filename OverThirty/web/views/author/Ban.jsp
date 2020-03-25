<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    #banMain{
        width: 100%;
        position: relative;
    }

    /* #unbanMain>div{
        position: absolute;
    } */

    .reportLetter{
        width: 100%;
        height: 40px;
        text-align: center;
        padding-top: 15px;
        margin: 0 auto;
        margin-top: 10px;
        font-size: larger;
        background-color: rgb(52, 152, 219);
    }

    .reportList{
        width: 95%;
        min-height: 600px;
        margin-top: 30px;
        margin-left: auto;
        margin-right: auto;
		margin-bottom: 30px;
    }

	.userListLetter{
		width: 48%;
		float: left;
		margin-left: 2.5%;
		margin-right: 1%;
		margin-bottom: 30px;
		height: 40px;
        background-color: rgb(52, 152, 219);
        text-align: center;
        font-size: large;
        padding-top: 15px;
	}

	.userList{
		width: 48%;
		float: left;
		margin-left: 2.5%;
		margin-right: 1%;
		margin-bottom: 30px;
		height: 400px;
	}

	.banWord{
		width: 45%;
		float: left;
		margin: auto;
		height: 500px;
		margin-bottom: 30px;
	}

    table{
        width: 100%;
    }

    table tr>th{
        border: 1px solid black;
        color: red;
    }

    /* tr{
        border: 1px solid black;
        color: blue;
    } */
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
			<div id="banMain" style="background-color: white;">
                <div class="reportLetter">신고 리스트</div>
                <div class="reportList">
                    <table>
                        <tr>
                            <th>게시판 번호</th>
                            <th>피신고자 아이디</th>
                            <th>신고자 아이디</th>
                            <th>사유</th>
                            <th>메세지</th>
                            <th>신고일</th>
                            <th>처리</th>
                        </tr>
                    </table>
                </div>
				<div class="userListLetter">유저 리스트</div>
				<div class="banWord" style="background-color: darkgreen;"></div>
				<div class="userList" style="background-color: blueviolet;"></div>
				<div class="sectionafter" style="background-color: darkgreen;"></div>
            </div>
			왓더
		</div>
        <div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>