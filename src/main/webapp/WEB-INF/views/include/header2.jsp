<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
<input type="hidden" name="userid" value="${login.userID }">
<input type="hidden" name="kind" id="kind" />
   <Header>
      <!-- Header -->
      <div id="header-wrap">
         <div class="state-loginOff">            
         	<c:if test="${login.userID == null}">
            	<a href="/login/loginform" class="topbtn">로그인</a> 
            	<a href="/login/registerform" class="topbtn">회원가입</a> 
            	<a href="/mypage/mypagecart" class="topbtn">장바구니</a> 
            	<a href="/mypage" class="topbtn">마이페이지</a>
            </c:if>
               
            <c:if test="${login.userID != null}">
               <a class="topbtn">${login.userName }님</a> 
               <a href="javascript:void(0);" class="topbtn" onclick="logout();">로그아웃</a> 
               <a href="/mypage/mypagecart?userid=${login.userID }" class="topbtn">장바구니</a> 
               <a href="/mypage?userID=${login.userID }"class="topbtn">마이페이지</a>
            </c:if>
               <script type="text/javascript">
                  function logout(){
                     if(confirm("로그아웃 하시겠습니까?")){
                        location.href="/login/logout";
                     }
                  }
               </script>
            
               
         </div>
         <h1 class="mainLogo">
            <a href="/main"> Shopping Mall <!-- <img src="logo.png" alt="Shopping Mall"> -->
            </a>
         </h1>
      </div>

      <!--  내비게이션 바 -->
      <div class="nav-wrap">
			<a href="#" class="nav-cate" onclick="test(this)">BEST</a> <a href="#" class="nav-cate" onclick="test(this)">NEW</a>
			<a href="#" class="nav-cate" onclick="test(this)">OUTER</a> <a href="" class="nav-cate" onclick="test(this)">TOP</a>
			<a href="#" class="nav-cate" onclick="test(this)">PANTS</a> <a href="#" class="nav-cate" onclick="test(this)">ACC</a>
      </div>
   </Header>