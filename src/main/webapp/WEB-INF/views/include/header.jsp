<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/header.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
function test(this){
    var category = $(this).text();
    $('#kind').val(category);
    
    console.log(category);
    console.log(typeof category);
    
    $.ajax({
		type : "post",
		url : "/category",
		data : JSON.stringify(category),
		contentType : "application/json",
		dataType : "json",

		success : function(msg) {
			if (msg.check == true) {
				location.href = "/maincategory?maincategory="+category;
		
			} else {
				alert("실패");
			}
		},
		error : function() {
		alert("통신실패");
		}
    });
}
/* $(function(){
var maincategoey = document.getElementById("nav-cate").attr("data-value");
var hello = $(ths).text();
$('#kind').val(hello);
	console.log(maincategory);
		$.ajax({
			type : "post",
			url : "/"+maincategory,
			data : JSON.stringify(qnacategory),
			contentType : "application/json",
			dataType : "json",
	
			success : function(msg) {
				if (msg.check == true) {
					location.href = "/mypage/qnacategory?qnacategory="+ qnacategory;
				

				} else {
					alert("실패");
				}
			},
			error : function() {
			alert("통신실패");
		}
		
	});
}); */
</script>
