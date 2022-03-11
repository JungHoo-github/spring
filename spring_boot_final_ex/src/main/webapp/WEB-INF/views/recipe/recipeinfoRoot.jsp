<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<c:url value='/recipe/recipeinfo/${1 }'/>">소금빵</a>
<a href="<c:url value='/recipe/recipeinfo/${2 }'/>">크루아상</a>
<a href="<c:url value='/recipe/recipeinfo/${3 }'/>">크리스피 밤 식빵</a>
</body>
</html>