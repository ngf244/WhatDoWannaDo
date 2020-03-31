<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.portpolioEnroll{
		border: 1px solid black;
	}

	.portpolioEnrollTopArea{height: 100px; background: #4374D9; color: white; font-size: 25pt; box-shadow: 2px 2px 5px black;}
	
	#portpolioEnrollText{font-weight: bolder; margin-top: 25px; padding-left: 40px; padding-right: 30px; display:inline-block;}
	
	#porThumbnail{
		width: 30%;
		height: 320px;
		border: 1px solid black;
		margin: 40px;
		padding: 20px;
		float: left;
		text-align: center;
		font-weight: bolder;
	}
	
	#porFormArea{
		width: 50%;
		min-height: 320px;
		margin: 40px;
		border: 1px solid black;
		padding: 20px;
		float: left;
		font-size: 14pt;
	}
	
	#portEnrollTable{
		line-height: 40px;
	}
	
	.inputText{
		
	}
	
	.btnArea{
		text-align: center;
		font-weight: bold;		
	}
	
    #portCompleteBtn{
		display: inline-table;
		width: 20%;
		height: 60px;
		margin: 20px;
		line-height: 60px;
		text-align: center;
		background-color: rgb(52, 152, 219);
		color: white;
		border-radius: 5px;
		cursor: pointer;    
    }
    
    #portCancelBtn{
		display: inline-table;
		width: 20%;
		height: 60px;
		margin: 20px;
		line-height: 60px;
		text-align: center;
		background-color: rgb(52, 152, 219);
		color: white;
		border-radius: 5px;
		cursor: pointer;    
    }
</style>
<title>포트폴리오</title>
</head>
<body>
	<jsp:include page="../common/mainHeader.jsp"/>
	<section>
		<div id="left-side">
			
		</div>
		<div id="main">
			<div class="portpolioEnroll">
				<div class="portpolioEnrollTopArea">
					<div id="portpolioEnrollText">포트폴리오 등록</div>
				</div>
				<div id="portpolioEnrollContent">
					<form action="">
						<div id="porThumbnail">
							썸네일 이미지 등록
						</div>
						<div id="porFormArea">
							<table id="portEnrollTable">
								<tr>
									<td style="width: 35%;">포트폴리오 제목</td>
									<td style="width: 45%;"><input type="text" name="portpolioName" class="inputText" size="60"></td>
								</tr>
								<tr>
									<td>포트폴리오 유형</td>
									<td>
										<select>
											<option>이미지 편집</option>
											<option>이미지 제작</option>
											<option>동영상 편집</option>
											<option>동영상 제작</option>											
										</select>
									</td>
								</tr>
								<tr>
									<td>본 사이트 이용 여부</td>
									<td>
										<input type="radio" id="usingSiteY" name="usingSite" value="Y"><label for="usingSiteY">Yes</label>
										<input type="radio" id="usingSiteN" name="usingSite" value="N"><label for="usingSiteN">No</label>
									</td>
								</tr>
								<tr>
									<td>포트폴리오 설명</td>
									<td>
										<textarea name="portDesc" id="portDesc" rows="7" cols="65" style="resize: none;"></textarea>
									</td>
								</tr>
								<tr>
									<td>파일 첨부</td>
									<td>
										<input type="file" name="portpolioFile">
										<input type="file" name="portpolioFile">
										<input type="file" name="portpolioFile">
										<input type="file" name="portpolioFile">
										<input type="file" name="portpolioFile">
									</td>
								</tr>
							</table>
						</div>
						<div style="clear: both;"></div>
					</form>
				</div>
				<div class="btnArea">
					<div id="portCompleteBtn">완료</div>
					<div id="portCancelBtn">취소</div>
				</div>
			</div>
		</div>
		<div id="right-side">
				
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>