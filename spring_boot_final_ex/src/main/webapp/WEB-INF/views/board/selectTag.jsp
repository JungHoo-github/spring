<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
<title>List</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function selectTag(tagName){
		/* var name = "<c:out value='${tag.tagName}' />"; */
		
		$.ajax({
	        type:"post",            
	        url:"selectTagList",
	        data:{tagName:tagName},	
	        //dataType :'text',
	        //dataType : 'json',
	        success:function (result){						
				$('#searchResultbox').html(result);
	        },
	        error:function(data, textStatus){
	           alert("전송 실패2");				
	        },
	        complete:function(data,textStatus){
	           //alert("작업을완료 했습니다");
	        }
	   });
		
		
	}
</script>
<style type="text/css">

#warp {
margin:0 auto;
position:center;
font-family: 'Do Hyeon', sans-serif;
}
#tagList {
width:70;
height:200px;
positon:center;
text-align:left;
font-size:25px;
margin-left:20%;
}
.tags{
	border-radius: 8px;
	background-color:orange;
	color:black;
	display:inline-block;
	font-family: 'Do Hyeon', sans-serif;
}
a {
text-decoration-line:none;
color: black;
}
h2{
text-align:center;
}
p{
text-align:center;}
span{
display:block;
color:black;
font-family: 'Do Hyeon', sans-serif;
margin:5px;

}
.menu{
display:inline-block;
}
</style>
</head>
<body>
	<div id="wrap">
		<h2>TAG LIST</h2>
		<p>원하는 태그를 선택해주세요!</p>
		<hr>
			<div id="tagList">
			
				<div class="menu">
				<span>대분류</span>
				<span>맛</span>
				<span>기념일</span>
				<span>재료</span>
				<span>테마</span>
				<span>식감</span>
				</div>
				<div class="menu">
				<c:forEach var="tag" items="${selectTag}" begin="0" end="1" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>

				<br>
				<c:forEach var="tag" items="${selectTag}" begin="2" end="4" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>
				<br>
				<c:forEach var="tag" items="${selectTag}" begin="5" end="8" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>
				<br>
				<c:forEach var="tag" items="${selectTag}" begin="9" end="17" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>
				<br>
				<c:forEach var="tag" items="${selectTag}" begin="18" end="21" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>
				<br>
				<c:forEach var="tag" items="${selectTag}" begin="22" end="24" step="1" varStatus="">
					<div class="tags"><a href="javascript:selectTag('${tag.tagName}');">${tag.tagName}</a></div>
				</c:forEach>
				</div>
			</div> 
	
			<div id="searchResultbox"></div>
		
	</div>
</body>
</html>