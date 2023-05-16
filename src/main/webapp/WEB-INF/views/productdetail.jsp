<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/detail.css"	type="text/css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(function() {
		//price에 000단위마다 , 넣어주기
		$(".productprice").val($(".productprice").html());
		var $price = $(".productprice").html().replace(/\B(?=(\d{3})+(?!\d))/g,
				",");
		$(".productprice").html($price);

		$('li > a').click(function() {
			$('html, body').animate({
				scrollTop : $(this.hash).offset.top
			}, 100);
		});

		$("#option1").change(function() {
			var $text = $('option:selected').val();
			$(".product_color").empty();
			$(".product_color").append($text);
		});

		$("#option2").change(function() {
			var $size = $('#option2>option:selected').val();
			$(".product_size").empty();
			$(".product_size").append($size);
		});

		$("#productCount").change(
				function() {
					var price = $('.productprice').val();
					var count = $('.productCount').val();
					console.log(count);
					$(".totalCount").text("(" + count + "개)");
					var $totalPrice = $(".productprice").val() * count;
					$(".productprice").val($totalPrice);
					console.log($totalPrice);
					var $totalComma = $(".productprice").val().toString()
							.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
					$(".total>strong>big").text($totalComma + "원");
					$totalPrice = $(".productprice").val();
					console.log($totalPrice);
					$('.productprice').val(price);
				});

		$("#menu3>a").click(function() {
			$(this).siblings().attr('class', 'unchosen');
			$(this).attr('class', 'chosen');
			$value = $(this).children().attr('id');
			console.log($value);
			console.log($(this).attr('class'));
			if ($("div").attr('id').val() == $value) {
				$("div").css("display", "");
			} else {
				$("div").css("display", "none");
			}
		});

		$(".review2").css("display", "none");
		$(".review3").css("display", "none");
		$(".best_newest_score>a").click(function() {
			$(this).attr("class", "chosen");
			$(this).siblings().attr("class", "unchosen");
			console.log($("#best").attr('class'));
			if ($("#best").attr('class') == "chosen") {
				$(".review1").css("display", "");
				$(".review2").css("display", "none");
				$(".review3").css("display", "none");
			}
			$(this).siblings().attr("class", "unchosen");
			if ($("#newest").attr('class') == "chosen") {
				$(".review1").css("display", "none");
				$(".review2").css("display", "");
				$(".review3").css("display", "none");
			}
			$(this).siblings().attr("class", "unchosen");
			if ($("#score").attr('class') == "chosen") {
				$(".review1").css("display", "none");
				$(".review2").css("display", "none");
				$(".review3").css("display", "");
			}
		});

		$(".zoayo_btns1>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count1").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count1").val(++zoayocount);
						$("#zoayo_count1").text(
								$(this).children("#zoayo_count1").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count1").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count1").val(--zoayocount);
						$("#zoayo_count1").text(
								$(this).children("#zoayo_count1").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count1")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count1").val(sireoyocount);
						$("#sireoyo_count1").text(
								$(this).children("#sireoyo_count1").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count1")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count1").val(sireoyocount);
						$("#sireoyo_count1").text(
								$(this).children("#sireoyo_count1").val());
					}
				});

		$(".zoayo_btns2>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();
					console.log(zoayocount);

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count2").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count2").val(++zoayocount);
						console.log($("#zoayo_count2").val());
						$("#zoayo_count2").text(
								$(this).children("#zoayo_count2").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count2").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count2").val(--zoayocount);
						$("#zoayo_count2").text(
								$(this).children("#zoayo_count2").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count2")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count2").val(sireoyocount);
						$("#sireoyo_count2").text(
								$(this).children("#sireoyo_count2").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count2")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count2").val(sireoyocount);
						$("#sireoyo_count2").text(
								$(this).children("#sireoyo_count2").val());
					}
				});

		$(".zoayo_btns3>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count3").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count3").val(++zoayocount);
						$("#zoayo_count3").text(
								$(this).children("#zoayo_count3").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count3").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count3").val(--zoayocount);
						$("#zoayo_count3").text(
								$(this).children("#zoayo_count3").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count3")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count3").val(sireoyocount);
						$("#sireoyo_count3").text(
								$(this).children("#sireoyo_count3").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count3")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count3").val(sireoyocount);
						$("#sireoyo_count3").text(
								$(this).children("#sireoyo_count3").val());
					}
				});
	});
</script>
<jsp:include page="include/header2.jsp" />

<div id="wrapper">
	<div id="body">
		<div id="content">
			<div class="detail">
				<div class="img01">
					<img src="../resources/image/best/b${productdto.productNumber}.jpg"	class="img01">
				</div>
				<div class="title" name="title">
					<h3 class="productName" id="productName"
						style="position: relative; left: 18px;">${productdto.productName }</h3>
				</div>
				<div class="info" style="border-top: 0.5px solid gray;">
					<form action="buy.do" method="post">
						<dl>
							<dt>가격</dt>
							<dd class="productprice" id="productprice" name="productprice"
								value="${productdto.productPrice }">${productdto.productPrice }</dd>
						</dl>
						<dl>
							<dt>상품간략설명</dt>
							<dd>상품 간략 설명 예시</dd>
						</dl>
						<dl>
							<dt>색상</dt>
							<dd>
								<select class="option1" name="option1" id="option1">
									<option value='' selected>----선택해주세요-----</option>
									<option value="베이지">베이지색</option>
									<option value="블랙">블랙</option>
									<option value="화이트">화이트</option>
								</select>
							</dd>
						</dl>
						<dl>
							<dt>사이즈</dt>
							<dd>
								<select class="option2" name="option2" id="option2">
									<option value='' selected>----선택해주세요-----</option>
									<option value="S">S</option>
									<option value="M">M</option>
									<option value="L">L</option>
									<option value="XL">XL</option>
								</select>
							</dd>
							<dl class="dl_line1">
								<dl>
									<dt>상품명</dt>
									<dd>
										<b>상품 수</b>
									</dd>
									<dd>
										<b>가격</b>
									</dd>
								</dl>
								<dl>
									<dt>
										<input type="hidden" class="product_name_color_size">
										<p class="product" style="float: left;">상품명
										<p class="product_color"
											style="float: left; margin-right: 10px; font-size: small; position: relative; bottom: 6px; left: 13px;">색상</p>
										<p class="product_size"
											style="float: left; font-size: small; position: relative; bottom: 6px; left: 13px; font-weight: normal;">크기</p>
										</p>
									</dt>
								</dl>
								<dd>
									<span> <input
										style="width: 30px; position: relative; left: 8px;"
										id="productCount" class="productCount" type="number" min="0"
										value="0">
									</span>
								</dd>
								<dd>
									<span class="dl_line1_span"> <input type="hidden"
										class="price" id="price"> <b class="productprice"
										name="productprice" value="productprice">${dto.productprice }</b>
										<b>원</b>
									</span>
								</dd>
							</dl>
						</dl>
						<dl class="dl_line2">
							<div id="totalPrice" class="totalPrice"
								style="padding-top: 15px; padding-left: 0px; position: relative; top: 10px;">
								<b>총 상품금액</b> <small>(갯수)</small> <b>:</b> <span class="total">
									<strong> <big>총 금액</big>
								</strong>
									<div class="totalCount"
										style="width: 80px; display: inline-block;">(갯수)</div>
								</span>
							</div>
					</form>
					<br>

					<div class="buttons01">
						<a href="../buy/buy.html" class="buttonSubmit"
							onclick="product_submit(1,'',this)"> <span id="btnBuy"
							style="font-size: 15px;">구매하기</span></a> <a href=""
							class="buttonBasket" onclick="product_submit(2,'',this)">장바구니</a>
						<a href="" class="button_wish_list"
							onclick="product_submit(3,'',this)">찜하기</a>
					</div>
				</div>
				<div class="moreinfo">
					<ul class="menu">
						<li class="selected"><a href="#menu1">세부 사항</a></li>
						<li><a href="#menu2">추가 설명</a></li>
						<li><a href="#menu3">리뷰</a></li>
					</ul>
					<br>
					<div class="morecontent">
						<h4 id="menu1">상품 상세 정보</h4>
						<img class="morecontent_img"
							src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
						</img> <br>
						<div class="morecontent_detail">
							<ul>
								<li><img class="size" src="./size_img.png"></img></li>
								<li><img class="washing"
									src="./washing/poly_acryl_chiffon.png"></img></li>
						</div>
					</div>
					<img class="morecontent_img2"
						src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
					</img>
					<ul class="menu">
						<li><a href="#menu1">세부 사항</a></li>
						<li class="selected"><a href="#menu2">추가 설명</a></li>
						<li><a href="#menu3">리뷰</a></li>
					</ul>
					<br>
					<div class="menu_more_info">
						<br>
						<h3 id="menu2">상품결제정보</h3>
						<br>고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다 <br> 확인과정에서
						도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수
						있습니다. <br> 무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접
						입금하시면 됩니다. <br> 주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로
						입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다. <br> 배송정보 배송 방법 : 택배 배송 <br>
						지역 : 전국지역 배송 비용 : 2,500원 <br> 배송 기간 : 3일 ~ 7일 <br> 배송 안내
						: - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다. <br> 고객님께서 주문하신
						상품은 입금 확인후 배송해 드립니다. <br> 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수
						있습니다. <br> 교환 및 반품정보 교환 및 반품이 가능한 경우 <br> - 상품을 공급 받으신
						날로부터 7일이내 단, 가전제품의 경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이
						불가능합니다. <br> - 공급받으신 상품 및 용역의 내용이 표시. <br>광고 내용과 다르거나
						다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내 교환 및 반품이 불가능한 경우
						<br> - 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. <br>단, 상품의 내용을
						확인하기 위하여 포장 등을 훼손한 경우는 제외 <br> - 포장을 개봉하였거나 포장이 훼손되어 상품가치가
						상실된 경우 (예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의
						불량화소에 따른 반품/교환은 제조사 기준에 따릅니다.) <br> - 고객님의 사용 또는 일부 소비에 의하여
						상품의 가치가 현저히 감소한 경우 <br>단, 화장품등의 경우 시용제품을 제공한 경우에 한 합니다. <br>
						- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우 <br> - 복제가 가능한
						상품등의 포장을 훼손한 경우 (자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.) <br>

						※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다. (색상 교환, 사이즈
						교환 등 포함) <br> <br>
					</div>
					<br>
					<ul class="menu">
						<li><a href="#menu1">세부 사항</a></li>
						<li><a href="#menu2">추가 설명</a></li>
						<li class="selected"><a href="#menu3">리뷰</a></li>
					</ul>
					<br>
					<br>
					<br>
					<div class="best_newest_score">
						<a id="best"><span>인기순</span></a> <a id="newest"><span>최신순</span></a>
						<a id="score"><span>별점순</span></a>
					</div>

					<div class="review1">
						<div class="review01" id="1">
							<img class="review01_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer01">작성자1</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns1">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count1">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count1">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>

						<div class="review02">
							<img class="review02_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer02">작성자2</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns2">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count2">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count2">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>

						<div class="review03">
							<img class="review03_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer03">작성자3</div>
							<div class="review03_content">리뷰 내용</div>
							<div class="zoayo_btns3">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count3">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count3">0</span>
								</a>
							</div>
						</div>

					</div>
					<div class="review2">

						<div class="review02">
							<img class="review02_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer02">작성자2</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns2">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count1">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count1">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>

						<div class="review01">
							<img class="review01_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer01">작성자1</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns1">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count2">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count2">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>
						<div class="review03">
							<img class="review03_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer03">작성자3</div>
							<div class="review03_content">리뷰 내용</div>
							<div class="zoayo_btns3">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count3">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count3">0</span>
								</a>
							</div>
						</div>

					</div>
					<div class="review3">
						<div class="review01">
							<img class="review01_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer01">작성자1</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns1">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count1">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count1">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>

						<div class="review03">
							<img class="review03_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer03">작성자3</div>
							<div class="review03_content">리뷰 내용</div>
							<div class="zoayo_btns3">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count2">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count2">0</span>
								</a>
							</div>
						</div>
						<div style="border-top: 0.5px solid gray; width: 880px;"></div>

						<div class="review02">
							<img class="review02_img"
								src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg">
							<div class="reviewer02">작성자2</div>
							<div class="review01_content">리뷰 내용</div>
							<div class="zoayo_btns2">
								<a class="zoayo"> <img class="zoayo_icon"
									src="../icon/icons8-thumbs-up-64.png"> <span
									id="zoayo_count3">0</span>
								</a> <a class="sireoyo"> <img class="sireoyo_icon"
									src="../icon/icons8-thumbs-down-64.png"> <span
									id="sireoyo_count3">0</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<jsp:include page="include/footer.jsp" />
