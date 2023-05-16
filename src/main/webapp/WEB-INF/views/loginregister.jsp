<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/membership.css"	type="text/css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	function register() {
		let userID = $("#userID").val();//.trim();
		let userPW = $("#userPW").val();//.trim();
		let userPWck = $("#userPWck").val();//.trim();
		let userName = $("#userName").val();//.trim();
		let userPhone = $("#userPhone").val();//.trim();
		let userEmail = $("#userEmail").val();//.trim();

		console.log(userID);
		console.log(userPWck);
		console.log(userPW);
		console.log(userName);
		console.log(userPhone);
		console.log(userEmail);

		if (userPW != userPWck) {
			alert("비밀번호가 다릅니다.");
		} else {
			let loginVal = {
				"userID" : userID,
				"userPW" : userPW,
				"userName" : userName,
				"userPhone" : userPhone,
				"userEmail" : userEmail
			};

			if (userID == null || userID == "" || userPW == null
					|| userPW == "" || userPWck == null || userPWck == ""
					|| userName == null || userName == "" || userPhone == null
					|| userPhone == "" || userEmail == null || userEmail == "") {
				alert("ID 및 PW를 확인해 주세요");

			} else {
				$.ajax({
					type : "post",
					url : "/login/register",
					data : JSON.stringify(loginVal),
					contentType : "application/json",
					dataType : "json",
					success : function(msg) {
						if (msg.check == true) {
							location.href = "/login/loginform";
						} else {
							alert("회원가입 실패");
						}
					},
					error : function() {
						alert("통신 실패");
					}
				});
			}
		}
	}
</script>
<jsp:include page="include/header2.jsp" />

<div id="body">
	<div id="info">
		<h1 id="memLogo">회원가입</h1>
		<div>
			<h4 class="tag">아이디</h4>
			<input type="text" placeholder="name" class="tag2" id="userID"><br>
			<h4 class="tag">패스워드</h4>
			<input type="password" placeholder="password" id="userPW"
				class="tag2"><br>
			<h4 class="tag">패스워드 확인</h4>
			<input type="password" placeholder="password" id="userPWck"
				class="tag2"><br>
			<h4 class="tag">이름</h4>
			<input type="text" placeholder="name" class="tag2" id="userName"><br>
			<h4 class="tag">핸드폰 번호</h4>
			<input type="text" placeholder="010-0000-0000" class="tag2"
				id="userPhone"><br>
			<h4 class="tag">이메일</h4>
			<input type="text" placeholder="email@email.com" class="tag2"
				id="userEmail"><br> <input type="submit" value="회원가입"
				id="memButton" onclick="register();">
		</div>
	</div>
</div>
<jsp:include page="include/footer.jsp" />