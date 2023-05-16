
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/id.css" type="text/css">
<script type="text/javascript"	src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<jsp:include page="include/header2.jsp" />

<div id="body">
	<h2 id="main-title">아이디 찾기</h2>
     <div>
         <form action="/login/useridfind" method="post">
             <input type="text" placeholder="이름" class="find-input" name="userName"><br>
             <input type="text" placeholder="이메일" class="find-input" name="userEmail"><br>
             <input type="submit" value="확인" id="idButton">
         </form>
     </div>
	<!-- 이름과 이메일이 일치하지 않을 때-->
	<c:if test="${check == 1}">
		<script>
			alert("입력하신 내용이 일치하지 않습니다.");
			opener.document.findform.name.value = "";
			opener.document.findform.email.value = "";
		</script>

	</c:if>
	<!-- 이름과 이메일이 일치할 때 -->
	<c:if test="${check == 0 }">
		<script>
			alert("찾으시는 아이디는 " + "${userID}" + " 입니다.");
			location.href = "/login/loginform";
		</script>
	</c:if>
</div>
<jsp:include page="include/footer.jsp" />