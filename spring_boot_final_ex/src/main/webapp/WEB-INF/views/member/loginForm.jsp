<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>  
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>
		 <script src="<c:url value='/js/index.js'/>"></script> 
		  <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>

		

		   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		
	
		<div id="wrap"> 
			<section>
			 <div class = "form1">
               
                    <h3>LOGIN</h3>
                     <div class="login-title">
                    
		        <h1 id="title">로그인</h1>
		        
		        <form name="loginForm"  id="loginForm" action="/login">
		          <table>
		            <tr><th> ID</th><td><input type="text" class="id" name="id" id="id" autofocus ></td></tr>
		            <tr><th>비밀번호</th><td><input type="password" class="pwd" name="pwd" id="pwd"  ></td></tr>
		             <tr>
		                <td colspan="2" align="center" id="button">
		                    <br>
		                    <input type="submit" value="로그인" class="sub">
		                    <input type="reset" value="취소" class="reset">
		                </td>
		            </tr>             
		            </table>
		        </form>	
		        
		        
		        </div>
		        
		        </div>		        
	        </section>
	    </div>
	
	
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		
	
	   
	</body>
</html>


