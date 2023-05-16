<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	
</script>
<jsp:include page="include/header2.jsp" />
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${empty productlist }">
			<p>게시물이 없습니다.</p>
		</c:when>
		<c:otherwise>
			<c:forEach items="${productlist }" var="productdto">
   				<div id="menu1">
					<div id="banner">
						<h3>Best</h3>
						<div class="banner">
							<a href="/product/productdetail?productNumber=1&productCategory=best">
							<img src="../resources/image/best/b1.jpg"></a>
							<div class="name_price">
								<div>폰테 오버사이즈 크루넥 티셔츠</div>
								<div>29,800</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	<jsp:include page="include/footer.jsp" />