<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" type="text/css" href="../resources/css/buy.css">
<jsp:include page="include/header2.jsp" />

<div id ="wrapper">
  <div id="header">
  </div>
  <div id="body">
    <div>
      <dl class="basket">
        <dt><b>상 품</b></dt>
        <dd><b>상품 이름</b></dd>
        <dd><b>색상</b></dd>
        <dd><b>사이즈</b></dd>
        <dd><b>갯수</b></dd>
        <dd><b>가격</b></dd>
      </dl>
      <br>
      <dl class="basket_detail">
        <dt><img src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg"></dt>
        <dd>상품 이름</dd>
        <dd>색상</dd>
        <dd>사이즈</dd>
        <dd>갯수</dd>
        <dd>가격</dd>
      </dl>
      <br>
      <dl class="basket_detail">
        <dt><img src="https://maninstore.co.kr/web/product/big/202010/195007a2e2b86ac797f59323012ab124.jpg"></dt>
        <dd>상품 이름</dd>
        <dd>색상</dd>
        <dd>사이즈</dd>
        <dd>갯수</dd>
        <dd>가격</dd>
      </dl>
    </div>
    
    <br>
    <div class="total_price">
        <b>총 상품금액</b>
          <small>(갯수)</small>:
          <span class="total">
            <strong>
              <big>총 금액</big>
            </strong>
            (갯수)
          </span>
    </div>
    <div class="address">
      <h3 style="margin-bottom: 0;">배송지</h3>

      <div class="send_to">
        <dl>
          <dt>받는사람</dt>
          <dd><input type="text" value="홍길동"></dd>
        </dl>
        <br>
        <dl>
          <dt>전화번호</dt>
          <dd><input type="text" value="010-1234-5678"></dd>
        </dl>
        <br>
        <dl>
          <dt>주소</dt>
          <dd> <input class="addr" type="text" value="(12345)경기도 안산시 안산드레아스 111">
          </dd>
        </dl>
        <br>
        <br>
        <dl>
          <dt>상세 주소</dt>
          <dd><input class="addr" type="text" value="안산아파트 1102호">
            </dd>
        </dl>
        <br >
        <br>
        <br>
        <div class="payment">
          <h3>결제 방법</h3>
          <br>
        <div class="payment_btns">
          <a href="">신용카드</a>
          <a href="">카카오페이</a>
          <a href="">토스페이</a>
          <a href="">무통장 입금</a></div>
          <br>
          <br>
          <button  class="pay" type="submit">결제하기</button>
          </div>
          </div>
        </div>
      </div>
    </div>

<jsp:include page="include/footer.jsp" />
