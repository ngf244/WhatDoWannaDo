<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유갤러리</title>
<style>
	
	.boardtitle{
	margin-top: 20px;
	border-bottom-style: solid;
	border-bottom-color: rgb(52, 152, 219);
	text-align: left;
	height: 20px;
	color: black;
	padding-bottom: 10px;	
	}
	
	.nick{
	margin-top: 20px;
	}
	
	.titleform{
	margin-top: 10px;
    width: 60%;
    height: 50px;
    font-size: 15px;
	}
	
	.catecory{
	margin-top: 15px;
	width: 30%;
	height: 55.5px;
	font-size: 15px;
	}
	
	.boardnotice{
	margin-top: 10px;
	}
	
	.writingform{
	margin-top: 10px;	
	width: 99%;
	height: 300px;
	}
	
	.fileupload{
	margin-top: 10px;
	text-align: left;
	height: 30px; 	
	}
	
	.filenameform{
	width: 99%;
	height: 20px;
	}
	
	
	.writingbutton{
	margin-top: 10px;
	}
	
	.writing{
	width: 7%;
	height: 40.5px;
	}
	
	.cancell{
	width: 7%;
	height: 40.5px;
	}
	
	.slide *{margin-top:10px;
	   padding:10px; 
	   margin-bottom:10px;
	   width:97.0%;
	   }
	   
    ul,li{list-style:none;}
    .slide{height:100px;overflow:hidden;}
    .slide ul{position:relative;height:100%;}
    .slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;}
    .slide li:nth-child(1){background:white;animation-delay:0s}
    .slide li:nth-child(2){background:#faa;animation-delay:2s}
    .slide li:nth-child(3){background:#afa;animation-delay:4s}
    .slide li:nth-child(4){background:#aaf;animation-delay:6s}
     /* 100 / 8 = 12.5 */
    
    @keyframes fade {
      0% {opacity:0;}
      5% {opacity:1;}
      25% {opacity:1;}
      30% {opacity:0;}
      100% {opacity:0;}
		}
		
	.slidelogo{
	height: 30px;
	}	
</style>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side" style="background-color: yellow;">
		</div>
		<div id="main">
			<div class ="boardtitle">
				자유갤러리	
			</div>
			<div class="nick">
				아이디(닉네임)getuserId
			</div>	 
			<div class="writingtitle">
				<select class="catecory">
					<option value="choese">게시글 선택</option>
					<option value="information">정보</option>
					<option value="jjalbbang">짤방</option>
					<option value="conceptual">개념글</option>
					<option value="anyting">아무말</option>
				</select>
					
				<input type="text" class="titleform" placeholder="제목을 입력해주세요">
			</div>
			<div class="boardnotice">
			 	※ 음란물, 차별, 비하, 혐오 및 초상권, 저작권 침해 게시물은 민, 형사상의 책임을 질 수 있습니다.<br>
				※ 커뮤니티도 하나의 인격입니다. 글 등록전 서로 존중하는 글을 씁시다. 
			</div>
				
			<div class="slide">
				<ul>
					<li><img src="${ contextPath }/views/images/slide.png" class="slidelogo"></li>
					<li> </li>
					<li> </li>
					<li> </li>
				</ul>
			</div>
							 	
			<div class="writingboard">
			<input type="text" class="writingform" placeholder="내용을 입력해주세요">					
				
				<div class="fileupload">
					<input type="text" class="filenameform">
					
					<div class="writingbutton">
						<button type="button" class="cancell">취소</button>
						<button type="button" class="writing">등록</button>
					</div>	
			 	</div>	
			</div>
		</div>
		<div id="right-side" style="background: blue">
            
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>