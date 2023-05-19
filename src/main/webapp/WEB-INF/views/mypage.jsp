<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/mypage.css"	type="text/css">
<jsp:include page="include/header2.jsp" />
<div id="content-wrap">
	<!-- 마이페이지 메인 -->
	<div class="top">
		<h2>MY PAGE</h2>
		<p>마이페이지</p>
		<div class="">
			 저희 쇼핑몰을 이용해 주셔서 감사합니다.<br> 
			 <strong>${user.userName }</strong> 님은 <strong>[${user.userGrade }]</strong> 회원이십니다.<br> 
			 (최근 6개월 동안 구매금액: 0원)
		</div>
	</div>

	<!-- 주문처리현황 -->
	<div class="process">
		<div class="process-title">
			<strong>나의 주문 처리 현황</strong>
			<p class="sub">(최근 3개월 기준)</p>
		</div>
		<hr>

		<div class="ship-state">
			<div class="state-unit">
				<p>입금전</p>
				<h3>0</h3>
			</div>
			<div class="state-unit">
				<p>배송준비중</p>
				<h3>0</h3>
			</div>
			<div class="state-unit">
				<p>배송중</p>
				<h3>0</h3>
			</div>
			<div class="state-unit done">
				<p>배송완료</p>
				<h3>0</h3>
			</div>
		</div>
	</div>

	<!-- 마이페이지 상세 카테고리 -->
	<div class="mypage-cate">
      <a href="/mypage/mypageupdateform?userid=test1">
         <div>
            <p class="cate-title">👩</p>
            <strong>Profile</strong>
            <p>내 정보</p>
            <p class="cate-memo">
               고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.
            </p>
         </div>
      </a> <a href="/mypage/ordercontent?userid=test1">
         <div>
            <p class="cate-title">🛒</p>
            <strong>Profile</strong>
            <p>주문내역 조회</p>
            <p class="cate-memo">
               고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.
            </p>
         </div>
      </a> <a href="/mypage/mypagecart?userid=test1">
         <div>
            <p class="cate-title">🎁</p>
            <strong>Profile</strong>
            <p>관심 상품</p>
            <p class="cate-memo">
               고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.
            </p>
         </div>
      </a> <a href="/mypage/qnalist?userid=test1">
         <div>
            <p class="cate-title">📝</p>
            <strong>Profile</strong>
            <p>1대1 문의사항</p>
            <p class="cate-memo">
               고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.
            </p>
         </div>
      </a>
   </div>
</div>

<jsp:include page="include/footer.jsp" />