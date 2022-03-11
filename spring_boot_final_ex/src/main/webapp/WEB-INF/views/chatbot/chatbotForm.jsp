<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html>
	 <head>
		 <meta charset="UTF-8">
		 <title>챗봇</title>
		 <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		 <script src="<c:url value='/js/chatbot.js'/>"></script>
		 <script src="<c:url value='/js/chatform.js'/>"></script>		
		 <link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
		 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	 </head>
	 <body>			
 
		 <button class="chatform-open">
			 <i class="fa fa-comment fa-2x" aria-hidden="true"></i>
		   </button>
		 <button class="chatform-close">
			 <i class="fa fa-close fa-2x" aria-hidden="true"></i>
		   </button>
		 <section class="chatform-popup">
		   <header class="chatform-popup__header">
			 <aside style="flex:3">
			   <i class="fa fa-user-circle fa-4x chatform-popup__avatar" aria-hidden="true"></i>
			 </aside>
			 <aside style="flex:8">
			   <h1>빵굿빵굽</h1> 파티쉐 (Online)
			 </aside>
			 <aside style="flex:1">
			   <button class="chatform-maximize"><i class="fa fa-window-maximize" aria-hidden="true"></i></button>
			 </aside>
		   </header>
		   <main class="chatform-popup__main">
			 <div id="wrap">
				 <!-- 응답 메시지 출력  -->
				 <div id="chatBox"></div>
			 </div>
		   </main>
		   <footer class="chatform-popup__footer">
			 <aside style="flex:10">
				 <form id="chatForm">
					 <input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">	
					 <input type="submit" value="전송">		
				 </form>	
			 </aside>
		   </footer>
		 </section>
		 <section class="chatform-panel">
		   <header class="chatform-panel__header">
			 <aside style="flex:3">
			   <i class="fa fa-user-circle fa-3x chatform-popup__avatar" aria-hidden="true"></i>
			 </aside>
			 <aside style="flex:6">
			   <h1>빵굿빵굽</h1> 파티쉐 (Online)
			 </aside>
			 <aside style="flex:3;text-align:right;">
			   <button class="chatform-minimize"><i class="fa fa-window-restore" aria-hidden="true"></i></button>
			   <button class="chatform-panel-close"><i class="fa fa-close" aria-hidden="true"></i></button>
			 </aside>
		   </header>
		   <main class="chatform-panel__main" style="flex:1">
			<div id="wrap">
				<!-- 응답 메시지 출력  -->
				<div id="chatBox1"></div>
			</div>
		   </main>
		   <footer class="chatform-panel__footer">
			 <aside style="flex:10">
				<form id="chatForm">
					<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">	
					<input type="submit" value="전송">		
				</form>	
			 </aside>
		   </footer>
	 </body>
 </html>