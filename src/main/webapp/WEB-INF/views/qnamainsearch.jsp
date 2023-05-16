<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/qnaboard.css"	type="text/css">
<jsp:include page="include/header2.jsp" />

<div id="content-wrap">
	<h2 id="main-title">문의사항</h2>

	<div class="middle-content">
		<div class="select-cate main">
			<div>
				<select id="category">
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
				<c:when test="${empty slist }">
					<!-- 게시물이 없을 경우 -->
					<p>검색한 게시물이 없습니다.</p>
				</c:when>
				<c:otherwise>
					<c:forEach items="${slist }" var="qnadto">
					<c:set var="count" value="${count + 1}" />
						<div class="form">
							<div class="bNo unit">${count}</div>
							<div class="bCate unit">${qnadto.qnacategory }</div>
							<div class="bTitle unit">
								<a href="/mypage/detail?qnanum=${qnadto.qnanum }" style="text-decoration: none; color: black;">${qnadto.qnatitle }</a>
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
			<input type="search" name="keyword" class="input-tit"> 
			<input type="submit" class="btn black" value="찾기">
		</form>
	</div>
</div>
<jsp:include page="include/footer.jsp" />