<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/qnaboard.css"	type="text/css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">

function changeSelect() {
		let qnacategory = document.getElementById('category').value;

		console.log(qnacategory);
		if (qnacategory == "") {
			location.href = "/mypage/qnalist";
		} else {
			$.ajax({
				type : "post",
				url : "/mypage/qnaselectcategory",
				data : JSON.stringify(qnacategory),
				contentType : "application/json",
				dataType : "json",

				success : function(msg) {
					if (msg.check == true) {
						location.href = "/mypage/qnacategory?qnacategory="+ qnacategory;
						
					} else {
						alert("실패");
					}
				},
				error : function() {
					alert("통신실패");
				}
			});
		}
	}
</script>
<jsp:include page="include/header2.jsp" />

<div id="content-wrap">
	<h2 id="main-title">
		<a href="/mypage/qnalist">문의사항</a>
	</h2>

	<div class="middle-content">
		<div class="select-cate main">
			<div>
				<select id="category" name="category" onchange="changeSelect();">
					<option value="">전체 문의</option>
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의</option>
					<option value="교환/반품 문의">교환/반품 문의</option>
				</select>
			</div>


			<input type="button" class="btn" value="문의하기" onclick="location.href='/mypage/qnawriteform'">
		</div>
		<hr>
		<div>
			<div class="form">
				<div class="bNo">번 호</div>
				<div class="bCate">분 류</div>
				<div class="bTitle">제 목</div>
				<div class="bDate">등록 날짜</div>
			</div>
			<c:choose>
				<c:when test="${empty list }">
					<!-- 게시물이 없을 경우 -->
					<p>게시물이 없습니다.</p>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="qnadto">
						<c:set var="count" value="${count + 1}" />
						<div class="form2" title="${qnadto.qnacategory }">
							<div class="bNo unit">${count }</div>
							<div class="bCate unit">${qnadto.qnacategory }</div>
							<div class="bTitle unit">
								<a href="/mypage/qnadetail?qnanum=${qnadto.qnanum }" style="text-decoration: none; color: black;">${qnadto.qnatitle }</a>
							</div>
							<div class="bDate unit">
								<fmt:formatDate value="${qnadto.qnadate }" pattern="yyyy.MM.dd" />
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		<form action="/mypage/qnasearchList" method="get" class="search">
			<input type="search" name="keyword" class="input-tit" value="${qnadto.keyword }"> 
			<input type="submit" class="btn black" value="찾기">
		</form>
	</div>
</div>
<jsp:include page="include/footer.jsp" />