<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/qnaEdit.css"	type="text/css">
<jsp:include page="include/header2.jsp" />

<div id="content-wrap">
	<h2 id="main-title">문의사항</h2>

	<div class="middle-content">
		<form action="/mypage/qnaupdateresult">
			<input type="hidden" name="qnawriterid" value="user"> 
			<input type="hidden" name="qnanum" value="${qnadto.qnanum }">
			<div class="input-wrap" style="margin-top: 20px;">
				제목 <input type="text" value="${qnadto.qnatitle }" placeholder="제목을 입력해주세요" name="qnatitle" class="input-tit">
			</div>
			<div class="select-cate">
				<label for="category">분류</label> 
				<select id="category" name="qnacategory">
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의</option>
					<option value="교환/반품 문의">교환/반품 문의</option>
				</select>
			</div>
			<textarea name="qnacontent" id="content" cols="120" rows="15">${qnadto.qnacontent }</textarea>

			<div class="btn-wrap">
				<input type="button" class="btn" value="목록" onclick="location.href='/mypage/qnalist'">
				<div class="btn-two">
					<input type="submit" class="btn black" value="수정"> 
					<input type="button" class="btn" value="취소" onclick="location.href='/mypage/qnadetail?qnanum=${qnadto.qnanum}'">
				</div>
			</div>
		</form>
	</div>
</div>
<jsp:include page="include/footer.jsp" />