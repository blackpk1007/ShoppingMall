
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<!-- css,script line -->
<link rel="stylesheet" href="../resources/css/basket.css" type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
    $("input[name=selectall]").click(function(){
    	console.log()
    	if($("input[name=basket-check]").prop("checked", false)){
      		$("input[name=basket-check]").prop("checked", true)
    	}else{
    		$("input[name=basket-check]").prop("checked", false)
    	}
      })
});
function basketCheckSelectAll()  {
	  // 전체 체크박스
	  const checkboxes = document.querySelectorAll('input[name="basket-check"]');
	  // 선택된 체크박스
	  const checked = document.querySelectorAll('input[name="basket-check"]:checked');
	  // select all 체크박스
	  const basketselectAll = document.querySelector('input[name="selectall"]');
	  
	  if(checkboxes.length === checked.length)  {
		  basketselectAll.checked = true;
	  }else {
		  basketselectAll.checked = false;
	  }

	}

	function basketselectAll(basketselectAll)  {
		const checkboxes = document.querySelectorAll('input[name="basket-check"]');
	  
	  checkboxes.forEach((checkbox) => {
		    checkbox.checked = basketselectAll.checked;
	  })
	}
	
	function cartdelete() {
		let basketChk = document.getElementsByName('basket-check');
		let cnt = 0;
		let value = '';
		for (let i = 0; i < basketChk.length; i++) {
			if (basketChk[i].checked) {
				value += basketChk[i].value + ",";
				cnt++;
			} else {
				continue;
			}

		}

		if (cnt == 0) {
			alert("장바구니에서 삭제할 상품을 하나 이상 선택해 주세요");
			return;
		}
		value = value.substring(0, value.length - 1);
		let url = '/mypage/cartdelete?cartNumbers=' + value;
		//alert(url);
		location.href = url;
	}
</script>
<jsp:include page="include/header2.jsp" />

<div id="basket">
	<div id="basket-name">
		<h2>장바구니</h2>
	</div>
	<!-- 장바구니 카테고리(?) 라인 -->
	<div>
		<div id="basket-category">
			<div id="basket-check"><input type="checkbox" name="selectall" onclick='basketselectAll(this)'></div>
			<div id="basket-image">이미지</div>
			<div id="basket-productname">상품이름</div>
			<div id="basket-price">판매가</div>
			<div id="basket-color">컬러</div>
			<div id="basket-size">사이즈</div>
			<div id="basket-count">수량</div>
			<div id="basket-pricesum">가격</div>
		</div>

		<!-- 반복문 사용으로 장바구니 리스트 출력-->
		<c:choose>
			<c:when test="${empty cartlist }">
				<p>게시물이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${cartlist }" var="cartdto">
					<div id="basket-product">
						<input type="checkbox" name="basket-check" id="basket-product-check" value="${cartdto.cartNumber}" onclick='basketCheckSelectAll()'>
						<div id="basket-product-image">
							<img src="../resources/image/images.jpg" id="basket-imeageset" />
						</div>
						<div id="basket-product-productname">${cartdto.cartTitle }</div>
						<div id="basket-product-price">${cartdto.cartPrice }</div>
						<div id="basket-product-color">${cartdto.cartColor }</div>
						<div id="basket-product-size">${cartdto.cartSize }</div>
						<div id="basket-product-count">
							<input type="number" id="basket-countnum" min="1" value="${cartdto.cartCount }">
						</div>
						<div id="basket-product-pricesum">${cartdto.cartPriceSum }</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div id="basket-btline">
		<div id="selectbuybt">
			<input type="button" value="선택상품구매">
		</div>
		<div id="deletebt">
			<input type="button" value="삭제" onclick="cartdelete();">
			<!-- 1. 클릭하면 스크립트 함수 실행
   2. 실행된 함수에서 체크된 체크박의를 찾아 벨류를 꺼낸다.
   4. 컨트롤러로 요청(파라미터값으로 '2/3/4'  ex) location.href='~/delete?cartNumbers=2/3/4' 
   5. 컨트롤러에서 파라미터(cartNumbers)를 받아서 값을 split('/') -->

		</div>
	</div>
</div>

<div id="wishlist">
	<div id="wishlist-name">
		<h2>관심상품</h2>
	</div>
	<!-- 관심상풍 카테고리(?) 라인 -->
	<div>
		<div id="wishlist-category">
			<div id="wishlist-check">*</div>
			<div id="wishlist-image">이미지</div>
			<div id="wishlist-productname">상품이름</div>
			<div id="wishlist-price">판매가</div>
			<div id="wishlist-color">컬러</div>
			<div id="wishlist-size">사이즈</div>
		</div>
		<!-- 반복문 사용으로 관심상품 리스트 출력-->
		<c:choose>
			<c:when test="${empty wishlist }">
				<p>게시물이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${wishlist }" var="wishdto">
					<div id="wishlist-product">
						<input type="checkbox" name="wishlist-check" id="wishlist-product-check">
						<div id="wishlist-product-image">
							<img src="images.jpg" id="wishlist-imeageset" />
						</div>
						<div id="wishlist-product-productname">${wishdto.wishName }</div>
						<div id="wishlist-product-price">${wishdto.wishPrice }</div>
						<div id="wishlist-product-color">${wishdto.wishColor }</div>
						<div id="wishlist-product-size">${wishdto.wishSize }</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div id="basket-btline">
		<div id="selectallbt">
			<input type="button" value="전체선택" name="selectall"  onclick="selectall();">
		</div>
		<div id="deletebt">
			<input type="button" value="삭제">
		</div>
	</div>
</div>
<jsp:include page="include/footer.jsp" />