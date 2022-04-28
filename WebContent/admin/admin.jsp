<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/admin.css" />
<title>가치살자 관리자 페이지</title>
</head>
<body>
	<c:set var="houseCount" value="${houseCount}" />
	<c:set var="waitCount" value="${waitCount}" />
	<c:set var="nMemberCount" value="${nMemberCount}" />
	<c:set var="hMemberCount" value="${hMemberCount}" />
	<c:set var="tourCount" value="${tourCount}" />
	<c:set var="waitResidentCount" value="${waitResidentCount}" />
	<c:set var="residentCount" value="${residentCount}" />
	<c:set var="roomCount" value="${roomCount}" />
	<c:set var="fiveReviewCount" value="${fiveReviewCount}" />
	<c:set var="fourReviewCount" value="${fourReviewCount}" />
	<c:set var="threeReviewCount" value="${threeReviewCount}" />
	<c:set var="twoReviewCount" value="${twoReviewCount}" />
	<c:set var="oneReviewCount" value="${oneReviewCount}" />
	<c:set var="reviewCount" value="${reviewCount}" />



	<jsp:include page="../fix/header.jsp" />



	<div id="admin-whole-wrapper">
		<div id="navigation">
		<div></div><div class="ready"></div><div class="ready">준비중</div><div class="ready"></div><div></div>
		</div>
		<div id="first-wrapper">
			<div id="second-wrapper">
				<div class="two-wrapper1" id="two-wrapper-first">
					<div id="firstBox">
						<p class="header-p">하우스 관리</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span noticeCount">
											<span><a
												href="${pageContext.request.contextPath}/board/BoardListOk.bo">등록 된 공지사항</a></span>
										</div>

										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/BoardListOk.bo">${boardCount}</a></span>
											</div>
											<div id="member-first-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
										<div id="hr-tag2"></div>
									<div id="member-first-first-div">
										<div id="member-first-first-first-span notice" class="left-span">
											<span><a href="${pageContext.request.contextPath}/board/BoardWrite.bo">공지 작성하기</a></span>
										</div>
										<div class="flex write">
											<div id="member-first-first-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/BoardWrite.bo">이동</a></span>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/house/AdminStandByOk.ho">승인
													대기중인 방</a></span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/house/AdminStandByOk.ho">${waitCount}</a></span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/house/AdminDetailOk.ho">현재
													등록된 방</a></span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho">${houseCount}</a></span>
											</div>
											<div id="member-second-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div id="secondBox">
						<p class="header-p">회원 현황</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<!-- <div id="guest-host-div">
								<div id="guest-p">게스트</div>
								<div id="host-p">호스트</div>
							</div> -->
							<div id="member-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>게스트 가입자</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">${nMemberCount}</span>
											</div>
											<div id="member-first-first-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>투어 신청</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">${tourCount}</span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>입주자</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">${residentCount}</span>
											</div>
											<div id="member-first-third-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>호스트 가입자</span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data">${hMemberCount}</span>
											</div>
											<div id="member-second-first-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>입주 대기자</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">${waitResidentCount}</span>
											</div>
											<div id="member-second-second-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-third-div">
										<div id="member-second-third-first-span" class="left-span">
											<span>모든 방 수</span>
										</div>
										<div class="flex">
											<div id="member-second-third-second-span">
												<span class="data">${roomCount}</span>
											</div>
											<div id="member-second-third-third-span">
												<span>개</span><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>

				<div class="two-wrapper2">
					<div id="thirdBox">
						<p class="header-p">리뷰 현황</p>
						<div id="hr-tag"></div>
						<div class="review-whole-wrapper">
							<div class="review-wrapper1">
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>★★★★★</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${fiveReviewCount}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>★★★☆☆</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${threeReviewCount}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>★☆☆☆☆</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${oneReviewCount}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
							</div>
							<div class="review-wrapper2">

								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>★★★★☆</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${fourReviewCount}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>★★☆☆☆</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${twoReviewCount}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span><a
											href="${pageContext.request.contextPath}/house/AdminReviewList.ho">전체
												리뷰</a></span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data"><a
												href="${pageContext.request.contextPath}/house/AdminReviewList.ho">${reviewCount}</a></span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>





					<div id="fourthBox">
						<p class="header-p">스태프 관리</p>
						<div id="hr-tag"></div>
						<div class="img-wrappers">
							<div class="dummy-div"></div>
							<div class="img-container">
								<div class="img-p-wrapper">
									<img src="../images/exclamationMark.png" alt="">
									<p id="underMaintenance">스태프 모집 중입니다.</p>
								</div>
							</div>
							<div class="dummy-div"></div>
						</div>
					</div>
				</div>


				<div class="two-wrapper3">
					<div id="fifthBox">
						<p class="header-p">문의 사항</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/board/InquiryAdminOk.bo">총
													문의 수</a></span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/InquiryAdminOk.bo">${inquiryCount}</a></span>
											</div>
											<div id="member-first-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo">총
													답변 수</a></span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo">${inquiryOneCount}</a></span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo">답변
													완료</a></span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo">${inquiryOneCount}</a></span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span><a
												href="${pageContext.request.contextPath}/board/InquiryAdminZeroOk.bo">답변
													필요</a></span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data"><a
													href="${pageContext.request.contextPath}/board/InquiryAdminZeroOk.bo">${inquiryZeroCount}</a></span>
											</div>
											<div id="member-second-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>





					<div id="sixthBox">
						<div id="banner-img">
							<img src="../images/adminBanner.png" alt="">
						</div>
					</div>
				</div>
				<div id="two-wrapper-final">
					<div id="seventhBox">
						<div id="smartStore-wrapper">
							<div class="smartStore-dummy"></div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminBook.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/handShake.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminHouse.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminChart.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminTv.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminWheel.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span"></span>
								</div>
							</div>
							<div class="smartStore-dummy"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>