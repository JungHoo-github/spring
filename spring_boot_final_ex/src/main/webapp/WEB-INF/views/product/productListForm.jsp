<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="<c:url value='/css/product.css'/>" rel="stylesheet"
	type="text/css">
</head>

<body>
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	<br>
	<br>
	
	
	
	<div class="container d-flex justify-content-center " id="box">

		<aside id="sideBar">
			<div>
				<a href="/product/listAllProduct/1"><button>전체 보기</button></a>
			</div>
			<br>
			<div>
				<a href="/prdTagSelect/${'밀가루'}"><button>밀가루</button></a>
			</div>
			<div>
				<a href="/prdTagSelect/${'설탕'}"><button>설탕</button></a>
			</div>
			<div>
				<a href="/prdTagSelect/${'버터'}"><button>버터</button></a>
			</div>
			<div>
				<a href="/prdTagSelect/${'이스트'}"><button>이스트</button></a>
			</div>
			<div>
				<a href="/prdTagSelect/${'소금'}"><button>소금</button></a>
			</div>
		</aside>
		<section>
			<div class="d-flex container justify-content-start flex-wrap"
				id="contentBox">
				<c:forEach var="prd" items="${prdList}">
					<div class="card" id="prdImgCard">
						<ul class="list-group">
							<li class="list-group-item list-group-item-action"><a
								href="<c:url value='/product/productbuy/${prd.prdNo}'/>"><img
									src="/images/${prd.prdImg}" class="img-thumbnail"
									id="prdListImg"></a></li>
							<li>제품명 : ${prd.prdName}</li>
							<li>가 격 : ${prd.prdPrice} 원</li>
							<li>재 고 : ${prd.prdStock} 개</li>
							<li>제조사 : ${prd.prdCompany}</li>
						</ul>

					</div>
				</c:forEach>
			</div>
		</section>
	</div>
	<br>
	<br>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>
</html>