<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/login.css" type="text/css">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript"   src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
   function login() {
      let userID = $("#userID").val();//.trim();
      let userPW = $("#userPW").val();//.trim();

      console.log(userID);
      console.log(userPW);
      let loginVal = {
         "userID" : userID,
         "userPW" : userPW
      };

      if (userID == null || userID == "" || userPW == null || userPW == "") {
         alert("ID 및 PW를 확인해 주세요");
      } else {
         $.ajax({
            type : "post",
            url : "/login/login",
            data : JSON.stringify(loginVal),
            contentType : "application/json",
            dataType : "json",
            success : function(msg) {
               if (msg.check == true) {
                  location.href = "/main";
               } else {
                  alert("ID 혹은 PW가 잘못되었습니다.");
               }
            },
            error : function() {
               alert("통신 실패");
            }
         });
      }
   }
   
   //카카오 로그인
   Kakao.init('0ea4eedc792fefad1434b6d3cc03b3fe');
   
   function loginKakao() {
        Kakao.Auth.login({
        success: function(authObj) {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(response) {
                    console.log("success: ");
                    console.log(response);
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        },
        fail: function(err) {
            alert(JSON.stringify(err))
        },
        })
    }
</script>
<jsp:include page="include/header2.jsp" />

<div class="login" id="body">
   <h2 id="main-title">LOGIN</h2>
      <div class="loginform">
         <div>
            <input type="text" placeholder="Id" class="userID" id="userID"><br>
            <input type="password" placeholder="Password" class="userID" id="userPW">
         </div>
         <input type="button" value="로그인" id="button" onclick="login();">
      </div>
   <div class="img">
      <a href=""><img src="../resources/image/google.png" class="img-logo"></a>
      <a href=""><img src="../resources/image/naver.png" class="img-logo"></a>
      <a id="kakao-login" onclick="loginKakao();"><img src="../resources/image/kakao.png" class="img-logo"></a> <br>
   </div>
   
   <form id="form-kakao-login" method="post" action="/loginkakao">
      <input type="hidden" name="email"/>
      <input type="hidden" name="name"/>
   </form>
   
   <div class="find">
      <span><a href="/login/useridfindform" id="fin">아이디 찾기</a></span> 
      <span>|</span>
      <span><a href="/login/userpwfindform" id="fin">비밀번호 찾기</a></span> 
      <span>|</span> 
      <span><a href="/login/registerform" id="fin">회원가입</a></span>
   </div>
</div>
<jsp:include page="include/footer.jsp" />