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
		<c:choose>
			<c:when test="${memberType eq 'h'}">
				<div id="hosting">
					<a href="${pageContext.request.contextPath}/house/HouseRegister.ho"></a>
				</div>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${memberType eq 'h'}">
				<div id="inquiry">
					<a href="${pageContext.request.contextPath}/board/InquiryOk.bo"></a>
				</div>
			</c:when>
			<c:when test="${memberType eq 'n'}">
				<div id="inquiry">
					<a href="${pageContext.request.contextPath}/board/InquiryOk.bo"></a>
				</div>
			</c:when>
		</c:choose>
		<div id="top">
			<a href="#"></a>
		</div>
	</aside>
</body>
</html>