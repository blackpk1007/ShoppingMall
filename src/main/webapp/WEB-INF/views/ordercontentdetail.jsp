<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/ordercontentdetail.css" type="text/css">
<jsp:include page="include/header2.jsp" />

<div id="content-wrap">
	<h2 id="main-title">상세 내역 확인</h2>

	<div id="content-unit">
		<h4>주문자 정보</h4>
		<div class="form">
			<div class="oTitle">주문번호</div>
			<div class="content">
				<fmt:formatDate value="${orderlist.orderlistDate }"	pattern="yyyyMMddHH" />-${orderlist.orderlistNumber }
			</div>
			<div class="oTitle">주문일자</div>
			<div class="content">
				<fmt:formatDate value="${orderlist.orderlistDate }" pattern="yyyy.MM.dd" />
			</div>
		</div>
		<div class="form">
			<div class="oTitle">주문자</div>
			<div class="content">${userdto.userName }</div>
			<div class="oTitle">주문서 입금현황</div>
			<div class="content">입금완료</div>
		</div>
		<div class="form two">
			<div class="oTitle">주문 메모</div>
			<div class="content none"></div>
		</div>
	</div>

	<div id="content-unit">
		<h4>배송지 정보</h4>
		<div class="form">
			<div class="oTitle">수취인</div>
			<div class="content">${userdto.userName }</div>
			<div class="oTitle">연락처</div>
			<div class="content">${userdto.userPhone }</div>
		</div>
		<!--
            <div class="form">
                <div class="oTitle">배송번호</div>
                <div class="content">123456-789098-765432</div>
                <div class="oTitle">송장번호</div>
                <div class="content">CJ대한통운575757009187</div>
            </div>
            -->
		<div class="form two">
			<div class="oTitle">주 소</div>
			<div class="content addr">${userdto.userAddrMain } ${userdto.userAddrSub }</div>
		</div>
		<div class="form two">
			<div class="oTitle">배송메세지</div>
			<div class="content none"></div>
		</div>
	</div>

	<div id="content-unit">
		<h4>주문상품 정보</h4>
		<div class="form title">
			<div class="oInfo">주문상품번호</div>
			<div class="oNo">상품별 주문번호</div>
			<div class="oCnt">수량</div>
			<div class="oTitleOther">가격</div>
			<div class="oTitleOther">처리상태</div>
		</div>
		<c:choose>
			<c:when test="${empty orderlistdetail }">
				<p>주문내역이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:set var="sum" value="0" />
				<c:forEach items="${orderlistdetail }" var="orderdetaildto">
					<div class="form">
						<div class="oInfo unit">
							<div>
								<img src="../img/product1.jpg.png">
							</div>
							<div class="pContent">
								<p class="pName">${orderdetaildto.orderlistName }</p>
								<p class="pOption">색상: ${orderdetaildto.orderlistColor }, 사이즈: ${orderdetaildto.orderlistSize }</p>
							</div>
						</div>
						<div class="oNo unit">
							<fmt:formatDate value="${orderdetaildto.orderlistDate }" pattern="yyyyMMddHH" />-${orderdetaildto.orderlistNumber }
						</div>
						<div class="oCnt unit">${orderdetaildto.orderlistCount }</div>
						<div class="oTitleOther price">
							<fmt:formatNumber value="${orderdetaildto.orderlistPriceSum }" pattern="#,###" />원
						</div>
						<div class="oTitleOther unit">거래완료</div>
						<c:set var="sum" value="${sum + orderdetaildto.orderlistPriceSum }" />
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<div class="pSumPrice">
			<p>
				<fmt:formatNumber value="${sum}" pattern="#,###" />(상품구매금액) + 2,500(배송료) =<fmt:formatNumber value="${sum + 2500}" pattern="#,###" />
				원
			</p>
		</div>
		<input type="button" class="btn" value="확 인" onclick="location.href='/mypage/ordercontent'">
	</div>
</div>
<jsp:include page="include/footer.jsp" />