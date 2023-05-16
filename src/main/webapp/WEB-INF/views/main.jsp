<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
let num = 1;
let num_left = num - 1;
let num_right = num + 1;

var intervalId = setInterval(automove, 3000);

function stopInterval(intervalId) {
   clearInterval(intervalId);
}

setTimeout(stopInterval, 60000, intervalId)

function automove() {
   num++;
   num_left++;
   num_right++;
   if (num > 4) {
      num = 1;
   }
   if (num_right == 5) {
      num_right = 1;
   }
   if (num_left == 5) {
      num_left = 1;
   }
   document.getElementById("gallery_left").src = "../../resources/image/a0"
         + (num_left) + ".jpg";
   document.getElementById("gallery_center").src = "../../resources/image/a0"
         + num + ".jpg";
   document.getElementById("gallery_right").src = "../../resources/image/a0"
         + (num_right) + ".jpg";
   return false;

};

function prev() {
   num--;
   num_left--;
   num_right--;
   if (num < 1) {
      num = 4;
   } else if (num_left == 0) {
      num_left = 4;
   } else if (num_right == 0) {
      num_right = 4;
   }
   document.getElementById("gallery_left").src = "../resources/image/a0"
         + (num_left) + ".jpg";
   document.getElementById("gallery_center").src = "../resources/image/a0"
         + num + ".jpg";
   document.getElementById("gallery_right").src = "../resources/image/a0"
         + (num_right) + ".jpg";
   return false;
}
function next() {
   num++;
   num_left++;
   num_right++;
   if (num > 4) {
      num = 1;
   }
   if (num_right == 5) {
      num_right = 1;
   }
   if (num_left == 5) {
      num_left = 1;
   }
   document.getElementById("gallery_left").src = "../resources/image/a0"
         + (num_left) + ".jpg";
   document.getElementById("gallery_center").src = "../resources/image/a0"
         + num + ".jpg";
   document.getElementById("gallery_right").src = "../resources/image/a0"
         + (num_right) + ".jpg";
   return false;
}
/*    $(function() {
   $(".banner>a").hover(function() {
      $(this).parent().children("div").fadeIn('slow');
      $(this).parent().children("div").css("display", "block");
   }, function() {
      $(this).parent().children("div").fadeOut();
   });
});
$(function() {
   $(".banner2>a").hover(function() {
      $(this).parent().children("div").fadeIn('slow');
      $(this).parent().children("div").css("display", "block");
   }, function() {
      $(this).parent().children("div").fadeOut();
   });
}); */

function clickBanner(bannername) {
   let bannercategory = $(bannername).html();
   console.log(bannercategory);
   
      $.ajax({
         type : "post",
         url : "/product/changeMenu",
         data : bannercategory,
         contentType : "application/json",
         dataType : "json",

         success :function(msg) {
            console.log(msg.list);
            /* if (msg.check == true) {
               console.log(bannercategory);
               $("#main").slideUp();
               $("#banner>h3").html("주간 "+bannercategory);
               $("#banner2>h3").html("월간 "+bannercategory);
            } else {
               alert("실패");
            } */
         },
         error : function() {
            alert("통신실패");
         }
      });
   }


</script>
<jsp:include page="include/header2.jsp" />

<div id="body">
<div id="main">
   <a href="" onclick="return prev();">◀</a> <img
      src="../resources/image/a04.jpg" id="gallery_left"> <img
      src="../resources/image/a01.jpg" id="gallery_center"> <img
      src="../resources/image/a02.jpg" id="gallery_right"> <a href=""
      onclick="return next();">▶</a>
</div>

<div id="menu">
   <div id="menu1">
      <div id="banner">
         <h3>Best</h3>
         <div class="banner">
            <a href="/product/productdetail?productNumber=1&productCategory=best"><img src="../resources/image/best/b1.jpg"></a>
            <div class="name_price">
               <div>폰테 오버사이즈 크루넥 티셔츠</div>
               <div>29,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=2&prodoctCategory=best"><img src="../resources/image/best/b2.jpg"></a>
            <div class="name_price">
               <div>코튼 레이온 린넨 셔츠</div>
               <div>49,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=10&prodoctCategory=best"><img src="../resources/image/best/b10.jpg"></a>
            <div class="name_price">
               <div>클래식맨 오버사이즈 폴로 티셔츠</div>
               <div>39,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=11&prodoctCategory=best"><img src="../resources/image/best/b11.jpg"></a>
            <div class="name_price">
               <div>와이드핏 히든밴딩 슬랙스</div>
               <div>49000</div>
            </div>
         </div>
      </div>
      </div>
   <div id="menu2">
      <div id="banner2">
         <h3 style="margin-top: 50px;">New</h3>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=30&prodoctCategory=new"><img src="../resources/image/new/n1.jpg"></a>
            <div class="name_price">
               <div>베이직 버뮤다 쇼츠</div>
               <div>35,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=32&prodoctCategory=new"><img src="../resources/image/new/n3.jpg"></a>
            <div class="name_price">
               <div>코튼 테리 프린트 쇼츠</div>
               <div>35,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=34&prodoctCategory=new"><img src="../resources/image/new/n5.jpg"></a>
            <div class="name_price">
               <div>린넨코튼 이지팬츠</div>
               <div>44,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=35&prodoctCategory=new"><img src="../resources/image/new/n6.jpg"></a>
            <div class="name_price">
               <div>나일론 스판덱스 쇼츠</div>
               <div>35,800</div>
            </div>
         </div>
      </div>
   </div>
   </div>
</div>

<jsp:include page="include/footer.jsp" />