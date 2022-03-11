<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="<c:url value='/css/buy.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/review.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/reviewpopup.js'/>"></script>
		<script type="text/javascript">
			var qty = 1;
			
			function qtyChange(num) {
				qty = qty + num;
				if(qty < 1) qty = 1;
				else if(qty > ${prd.prdStock}) qty=${prd.prdStock}
				calAmount();
			}
			
			// 주문액 계산
			function calAmount(){
				var cartQty = document.getElementById('cartQty');	// 주문수량 값 읽어오기
				var amount = document.getElementById('amount');	// 주문액 출력
				
				// 주문액 계산 = 주문수량 * 상품가격
				var total = qty * ${prd.prdPrice};
				
				cartQty.value = qty;	// 변경된 주문수량 출력
				// 계산액 출력
				amount.innerHTML = total.toLocaleString();
			}
		</script>
		
		
		
</head>
<body>
		<!-- TOP  -->
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' /> 
<div id="wrap3">
<div id="main_menu2">
	<div class="container1">
	<form method="post" action="<c:url value=" /productInfo/insertCart" />">
		<div id="productinfo1"><h1 class="page-header">${prd.prdName }</h1>
		</div>
		<div id="productinfo2">
			<img alt="이미지" src="<c:url value='/images/${prd.prdImg }' />" width="150%">
		</div>
		
		<div id="productinfo3" class="rowproductInfo">
		<hr>
			<div class="form-group">
				<h3 class="page-header"><span>${prd.prdName }</span><br><small>${prd.prdDescript }</small></h3>
			</div>
			
			<div class="form-group">
				<label>가격 : </label><span>${prd.prdPrice }원</span>
				<input type="hidden" value="가격" pattern="#,###" id="price">
			</div>
			<div class="form-group">
				<label>제조회사 : </label><span>${prd.prdCompany }</span>
			</div>
			<div class="form-group">
				<label>남은재고 : </label><span>${prd.prdStock }</span>
			</div>
			<div class="form-group">
				<label>평점 : </label><span>${prd.ratingAvg }</span>
			</div>
			<div class="form-group">
				<label>구매수량</label>
				<input type="button" value="-" onClick="qtyChange(-1)">
					<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
					<input type="button" value="+" onClick="qtyChange(1)"> 개
					<input type="hidden" name="prdNo" value="${prd.prdNo }">
			</div>
			<div class="form-group2">
				<label>총 금액</label>
				<span id="amount"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /></span>원
			</div>
			<br><br>
			<hr>
			<div id="btn-box">
				<div style="text-align:center;">
					<input type="submit" id="insertCart" value="장바구니">
					<button class="btn-buy">구매하기</button>
				</div>
			</div>
			
		</div>
		</form>
	</div>
		
	<nav id="topmenu">
		<ul>
			<li><a class="move1" name="jungbo" href="#jungbo">상품정보</a></li>
			<li><a class="move" href="#review">상품리뷰</a></li>
			<li><a class="move" href="#productqna">상품문의</a></li>
			<li><a class="move" href="#chuchun">추천상품</a></li>
		</ul>
	</nav>
	<div class="container2">
		<div id="underproductinfo1">
			<table id="infortable">
			<tr><td class="table1">식품의 유형</td><td class="table3">${prd.prdtype }</td></tr>
			<tr><td class="table1">생산자 및 소재지</td><td class="table3">${prd.prdsite }</td></tr>
			<tr><td class="table2">포장단위별 내용물의  용량(중량), 수량</td><td class="table4">${prd.prdamount }</td></tr>
			<tr><td class="table1">원재료명 및 함량</td><td class="table3">${prd.prdcontent }</td></tr>
			<tr><td class="table1">소비자상담 관련 전화번호</td><td class="table3">070-1111-1111</td></tr>
			</table>
		</div>
	</div>
	<nav id="topmenu">
		<ul>
			<li><a class="move" href="#jungbo">상품정보</a></li>
			<li><a class="move2" name="review" href="#review">상품리뷰</a></li>
			<li><a class="move" href="#productqna">상품문의</a></li>
			<li><a class="move" href="#chuchun">추천상품</a></li>
		</ul>
	</nav>
	<div class="container4">
		<div id="underproductinfo2">
				<div class="review_button_wrap">
					<button>리뷰 쓰기</button>
				</div>
				<div class="review_not_div">
				
				</div>
				<ul class="review_content_ul">

				</ul>
				<div class="review_pageInfo_div">
					<ul class="pageMaker">
					
					</ul>

				</div>
		</div>
			
	</div>
	<nav id="topmenu">
		<ul>
			<li><a class="move" href="#jungbo">상품정보</a></li>
			<li><a class="move" href="#review">상품리뷰</a></li>
			<li><a class="move3" name="productqna" href="#productqna">상품문의</a></li>
			<li><a class="move" href="#chuchun">추천상품</a></li>
		</ul>
	</nav>
	<div class="container2">
		<div id="underproductinfo1">
			<h1>Hello world4</h1>
			<small>상품 문의 페이지입니다.</small>
		</div>
	</div>
		<nav id="topmenu">
			<ul>
				<li><a class="move" href="#jungbo">상품정보</a></li>
				<li><a class="move" href="#review">상품리뷰</a></li>
				<li><a class="move" href="#productqna">상품문의</a></li>
				<li><a class="move4" name="chuchun" href="#chuchun">추천상품</a></li>
			</ul>
		</nav>
	<article class="container3">
		<h3>추천상품</h3>
	</article>
	</div>
	<div id="sub_menu2"><iframe width="380" height="315" src="https://www.youtube.com/embed/kev30RMy3Xc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	
	</div>
				<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	<script>
		$(document).ready(function(){
			/* 리뷰 리스트 출력 */
			const prdNo = '${prd.prdNo}';
			$.getJSON("/review/list", {prdNo : prdNo}, function(obj){
				
				makeReviewContent(obj);
				
			});
		});	// $(document).ready(function(){
		
			/* 리뷰쓰기 */
			 $(".review_button_wrap").on("click", function(e){
				e.preventDefault();

				
				const memNo = "${sno}";
				const prdNo = "${prd.prdNo}";
				$.ajax({
					data : {
						prdNo : prdNo,
						memNo : memNo
					},
					url : '/review/check',
					type : 'POST',
					dataType : 'text',
					success : function(result){
						
						if(result ==='1'){
							alert("이미 등록된 리뷰가 존재합니다.")
						} else if(result ==='0'){
							let popUrl = "/reviewEnroll/" + memNo + "?prdNo=" + prdNo;
							console.log(popUrl);
							let popOption = "width=490px, height=490px. top=300px, left=300px, scrollbars=yes";
							
							window.open(popUrl, "리뷰 쓰기",popOption);
						}
					}
				});
			 });
		
			 /* 댓글 페이지 정보 */
			 const cri = {
				prdNo : '${prd.prdNo}',
				pageNum : 1,
				amount : 5
				
			}
			 /* 댓글 페이지 이동 버튼 동작 */
				$(document).on('click', '.pageMaker_btn a', function(e){
					e.preventDefault();
					
					let page = $(this).attr("href");	
					cri.pageNum = page;		
					
					reviewListInit();
						
				 });
		
		 /* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
			let reviewListInit = function(){
				 $.getJSON("/review/list", cri , function(obj){
						
						makeReviewContent(obj);
						
					});
			}
		 
		 /* 리뷰 수정 버튼 */
		 $(document).on('click', '.update_review_btn', function(e){
			e.preventDefault();
			let revNo = $(this).attr("href");		 
			let popUrl = "/reviewUpdate?revNo=" + revNo + "&prdNo=" + '${prd.prdNo}' + "&memNo=" + '${sno}';	
			let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"	
			
			window.open(popUrl,"리뷰 수정",popOption);
		 });
		 
		 /* 리뷰 삭제 버튼 */
		 $(document).on('click', '.delete_review_btn', function(e){
			 e.preventDefault();
			 let revNo = $(this).attr("href");
			 
			 $.ajax({
				 data : {
					 revNo : revNo,
					 prdNo : '${prd.prdNo}'
				 },
				 url : '/review/delete',
				 type:'POST',
				 success : function(result){
					 reviewListInit();
					 alert('삭제가 완료되었습니다.');
				 }
			 });
		 });
			
		/* 댓글(리뷰) 동적 생성 메서드 */
		function makeReviewContent(obj){
			if(obj.list.length === 0){
				$(".review_not_div").html('<span>리뷰가 없습니다.</span>');
				$(".review_content_ul").html('');
				$(".pageMaker").html('');
			} else{
				$(".review_not_div").html('');
				
				const list = obj.list;
				const pf = obj.pageInfo;
				const userId = '${sno}';
				//alert(obj.pageInfo.next);
				/* list */
				let review_list ='';
				
				$(list).each(function(i,obj){
					review_list += '<li>';
					review_list += '<div class="comment_wrap">';
					review_list += '<div class="review_top">';
					/* 아이디 */
					review_list += '<span class="id_span">'+ obj.memId+'</span>';
					/* 날짜 */
					review_list += '<span class="date_span">'+ obj.revDate +'</span>';
					/* 평점 */
					review_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.rating +'</span>점</span>';

					if(obj.memNo === Number(userId)){ 
						review_list += '<a class="update_review_btn" href="'+ obj.revNo +'">수정</a><a class="delete_review_btn" href="'+ obj.revNo +'">삭제</a>';
						//console.log(typeof obj.memNo);
						//console.log(typeof Number(userId));
					} 
					review_list += '</div>'; //<div class="review_top">
					review_list += '<div class="review_bottom">';
					review_list += '<div class="review_bottom_txt">'+ obj.revCon +'</div>';
					review_list += '</div>';//<div class="review_bottom">
					review_list += '</div>';//<div class="comment_wrap">
					review_list += '</li>';
					
				});
				
				$(".review_content_ul").html(review_list);
				
				/* 페이지 버튼 */
				
				let review_pageMaker = '';
				//alert(pf.prev);
				//alert(pf.next);
				/* prev */
				if(pf.prev){
					let prev_num = pf.pageStart -1;
					review_pageMaker += '<li class="pageMaker_btn prev">';
					review_pageMaker += '<a href="'+ prev_num +'">이전</a>';
					review_pageMaker += '</li>';	
				}
				/* number btn */
				for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
					review_pageMaker += '<li class="pageMaker_btn ';
					if(pf.cri.pageNum === i){
						review_pageMaker += 'active';
					}
					review_pageMaker += '">';
					review_pageMaker += '<a href="'+i+'">'+i+'</a>';
					review_pageMaker += '</li>';
				}
				/* next */
				if(pf.next){
					let next_num = pf.pageEnd +1;
					review_pageMaker += '<li class="pageMaker_btn next">';
					review_pageMaker += '<a href="'+ next_num +'">다음</a>';
					review_pageMaker += '</li>';	
				}
				
				$(".pageMaker").html(review_pageMaker);

			}
		}
		</script>
	
</body>
</html>