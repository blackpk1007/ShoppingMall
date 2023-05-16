<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/qnaEdit.css"	type="text/css">
<jsp:include page="include/header2.jsp" />

<body>
	<div id="content-wrap">
		<h2 id="main-title">문의사항</h2>

		<div id="middle-content">
			<form action="/mypage/qnaupdateform">
				<input type="hidden" name="qnawriterid" value="user"> 
				<input type="hidden" name="qnanum" value="${qnadto.qnanum }">
				<div class="input-wrap" style="margin-top: 20px;">
					제 &nbsp; 목
					<p class="text">${qnadto.qnatitle }</p>
				</div>
				<div class="select-cate">
					<label>분 &nbsp; 류</label>
					<p class="text">${qnadto.qnacategory }</p>
				</div>
				<textarea name="qnacontent" id="content" cols="120" rows="15" readonly="readonly">${qnadto.qnacontent }</textarea>

				<div class="btn-wrap">
					<input type="button" class="btn" value="목록" onclick="location.href='/mypage/qnalist'">
					<div class="btn-two">
						<input type="submit" class="btn black" value="수정"> 
						<input type="button" class="btn" value="취소" 	onclick="location.href='/mypage/qnalist'">
					</div>
				</div>
			</form>
		</div>
	</div>
<jsp:include page="include/footer.jsp" />