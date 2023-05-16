<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/mypageupdateform.css"	type="text/css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
function mypage(){
	location.href="/mypage";
}
/* function updateform(){
	var inputs = document.getElementsByClassName("inputread");
	
	if(inputs.readonly == false){
		$(".inputread").attr("readonly", true);	
	}else{
		$(".inputread").attr("readonly", false);
	}
	
} */
</script>
<jsp:include page="include/header2.jsp" />

<form action="/mypage/mypageupdate">
	<div class="mypageupdate-header">
		<h2>회원 정보 수정</h2>
	</div>
	<div>
		<div class="mypageupdate-text">
			<div class="text-left">기본정보</div>
			<div class="text-right">*필수입력사항</div>
		</div>
	</div>

	<div class="mypageupdate-id">
		<div id="myapgeupdate-id-div">
			<label id="mypageupdate-id-label">아이디</label>
		</div>
		<div id="mypageupdate-idinput-div">
			<input type="text" class="inputread" id="mypageupdate-id-input" name="userID" value="${userdto.userID }" readonly="readonly"> 
				<label id="mypageupdate-id-content">(영문소문자/숫자, 4~16자)</label>
		</div>
	</div>

	<div class="mypageupdate-pw">
		<div id="myapgeupdate-pw-div">
			<label id="mypageupdate-pw-label">비밀번호*</label>
		</div>
		<div id="mypageupdate-pwinput-div">
			<input type="password" class="inputread" id="mypageupdate-pw-input" name="userPW" value="${userdto.userPW }" > 
			<label id="mypageupdate-pw-content">(영문소문자/숫자/특수문자 중 2가지 이상 조합, 8~16자)</label>
		</div>
	</div>

	<div class="mypageupdate-pwck">
		<div id="myapgeupdate-pwck-div">
			<label id="mypageupdate-pwck-label">비밀번호 확인*</label>
		</div>
		<div id="mypageupdate-pwckinput-div">
			<input type="password" class="inputread" name="mypagepwck" id="mypageupdate-pwck-input" value="${userdto.userPW }" >
		</div>
	</div>

	<div class="mypageupdate-name">
		<div id="myapgeupdate-name-div">
			<label id="mypageupdate-name-label">이름*</label>
		</div>
		<div id="mypageupdate-nameinput-div">
			<input type="text" class="inputread" id="mypageupdate-name-input" name="userName" value="${userdto.userName }" >
		</div>
	</div>

	<div class="mypageupdate-addr">
		<div id="myapgeupdate-addr-div">
			<label id="mypageupdate-addr-label">주소*</label>
		</div>
		<div id="myapgeupdate-addrinput-div">
			<div>
				<input type="text" class="inputread" id="mypageupdate-addr-first" name="userAddrMain" value="${userdto.userAddrMain }"> 
				<label id="mypageupdate-addrfirst-content">기본 주소(도로명 주소)</label>
			</div>
			<div>
				<input type="text" class="inputread" id="mypageupdate-addr-last" name="userAddrSub" value="${userdto.userAddrSub }" > 
				<label id="mypageupdate-addrlast-content">나머지 주소</label>
			</div>
		</div>
	</div>

	<div class="mypageupdate-phone">
		<div id="myapgeupdate-phone-div">
			<label id="mypageupdate-phone-label">휴대전화*</label>
		</div>
		<div id="mypageupdate-phoneinput-div">
			<input type="text" class="inputread" id="mypageupdate-phone-input" name="userPhone" value="${userdto.userPhone }" >
		</div>
	</div>

	<div class="mypageupdate-email">
		<div id="myapgeupdate-email-div">
			<label id="mypageupdate-email-label">이메일*</label>
		</div>
		<div id="mypageupdate-emailinput-div">
			<input type="email" class="inputread" id="mypageupdate-email-input" name="userEmail" value="${userdto.userEmail }" >
		</div>
	</div>
	<div class="mypageupdate-bt">
		<input type="submit" class="updatebtn" value="회원 정보 수정" id="mypageupdate-updatebt" >
		<input type="button" value="취소" id="mypageupdate-updatecl" onclick="mypage();">
	</div>
</form>
<jsp:include page="include/footer.jsp" />