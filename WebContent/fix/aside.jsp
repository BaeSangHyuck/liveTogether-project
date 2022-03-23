<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aside</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/aside.css" />
</head>
<body>
	<aside id="aside">
		<div id="room">
			<a href="${pageContext.request.contextPath}/house/FindRoom.ho"></a>
		</div>
		<div id="hosting">
			<c:choose>
				<c:when test="${memberType eq 'h'}">
					<a href="${pageContext.request.contextPath}/house/HouseRegister.ho"></a>
				</c:when>
				<c:otherwise>
					<a onclick="a()"></a>
				</c:otherwise>
			</c:choose>
		</div>
		<div id="inquiry">
		<c:choose>
				<c:when test="${memberType eq 'h'}">
					<a href="${pageContext.request.contextPath}/board/InquiryOk.bo"></a>
				</c:when>
				<c:when test="${memberType eq 'n'}">
					<a href="${pageContext.request.contextPath}/board/InquiryOk.bo"></a>
				</c:when>
				<c:otherwise>
					<a onclick="b()"></a>
				</c:otherwise>
			</c:choose>
		</div>
		<div id="top">
			<a href="#"></a>
		</div>
	</aside>
</body>
</html>