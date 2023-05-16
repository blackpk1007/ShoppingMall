<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/ordercontent.css"	type="text/css">
<jsp:include page="include/header2.jsp" />

<input type="hidden" name="userID" value="test1">
<div id="content-wrap">
	<h2 id="main-title">주문 내역</h2>

	<div class="form">
		<div class="bNo">번 호</div>
		<div class="bDate">주문일자</div>
		<div class="bTitle">상품명</div>
		<div class="bSum">결제 금액</div>
		<div class="bSub">주문 상세</div>
		<div class="bSub">배송 현황</div>
	</div>
	<c:choose>
		<c:when test="${empty orderlist }">
			<p>주문내역이 없습니다.</p>
		</c:when>
		<c:otherwise>
			<c:forEach items="${orderlist }" var="orderdto">
				<input type="hidden" name="orderlistNumber"	value="${orderdto.orderlistNumber }">
				<c:set var="count" value="${count + 1}" />
				<div class="form">
					<div class="bNo unit">${count }</div>
					<div class="bDate unit">
						<fmt:formatDate value="${orderdto.orderlistDate }" pattern="yyyy.MM.dd" />
					</div>
					<div class="bTitle unit">${orderdto.orderlistName }</div>
					<div class="bSum unit">
						﻿
						<fmt:formatNumber value="${orderdto.orderlistPriceSum }"
							pattern="#,###" />
						원
					</div>
					<div class="bSub unit">
						<input type="button" value="조 회" onclick="location.href='/mypage/orderdetail?orderlistID=test1&orderlistNumber=${orderdto.orderlistNumber }'">
					</div>
					<div class="bSub unit">
						<input type="button" value="조 회" onclick="location.href=''">
					</div>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="include/footer.jsp" />