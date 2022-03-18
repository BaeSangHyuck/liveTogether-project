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
	<jsp:include page="../fix/header.jsp" />
	<div id="admin-whole-wrapper">
		<div id="navigation">
			<div id="padding-div">
				<div id="first-a-wrapper">
					<div class="a-wrapper">
						<a href="" class="admin-a">구매자 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">판매자 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">전체 방 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">매물 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">문의/후기 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">공지 사항</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="" class="admin-a">통계</a>
					</div>
				</div>
				<div id="second-a-wrapper">
					<div class="no-navigation1">
						<div class="a-wrapper2">
							<a href="">교육 프로그램 바로가기</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">온라인 교육</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">방 계약 라이브 교육</a>
						</div>
					</div>
					<div class="no-navigation2">
						<div class="a-wrapper2">
							<a href="">판매자 금융지원</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">빠른정산</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">사업자 대출</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">사업자 보험</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">정책지원금</a>
						</div>
					</div>
					<div class="no-navigation1">
						<div class="a-wrapper2">
							<a href="">공식 블로그 바로가기</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">네이버쇼핑 파트너</a>
						</div>
						<div class="a-wrapper3">
							<a href="" class="admin-a">쇼핑윈도</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="first-wrapper">
			<div id="second-wrapper">
				<div class="two-wrapper1" id="two-wrapper-first">
					<div id="firstBox">
						<p class="header-p">방관리</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>글자만</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>바꿔</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>주시면</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-third-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>승인 대기중인 방</span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data"><a href="#">${waitCount}</a></span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>현재 등록된 방</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data"><a href="${pageContext.request.contextPath}/house/AdminDetailOk.ho">0</a></span>
											</div>
											<div id="member-second-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>화이팅</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">0</span>
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
						<p class="header-p">회원관리</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="guest-host-div">
								<div id="guest-p">게스트</div>
								<div id="host-p">호스트</div>
							</div>
							<div id="member-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>예정된 계약 수</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>예정된 해지 수</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>답변대기 문의 수</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-third-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>계약 예정 방 수</span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>계약 해지 예정 방 수</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-second-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-third-div">
										<div id="member-second-third-first-span" class="left-span">
											<span>답변대기 문의 수</span>
										</div>
										<div class="flex">
											<div id="member-second-third-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-second-third-third-span">
												<span>건</span><br>
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
						<p class="header-p">리뷰 관리</p>
						<div id="hr-tag"></div>
						<div class="review-whole-wrapper">
							<div class="review-wrapper1">
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>새로 작성된 리뷰</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">0</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>평점 낮은 리뷰</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">0</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>리뷰 이벤트</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">0</span>
										</div>
										<div id="review-first-first-third-span">
											<span>건</span><br>
										</div>
									</div>
								</div>
							</div>
							<div class="review-wrapper2">
								<div class="review-half-right">
									<div class="img">
										<div class="img-wrap">
											<img src="../images/exclamationMark.png" alt="">
											<p id="underMaintenance">리뷰가 없습니다.</p>
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
						<p class="header-p">누적 통계</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>총 가입 수</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>총 계약 수</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>총 셰어하우스 수</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-third-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>총 문의 수</span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>총 후기 수</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">0</span>
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
							<img src="../images/slogun.png" alt="">
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
									<span class="smartStore-span">가치살자 메뉴얼</span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/handShake.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span">가치살자 파트너</span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminHouse.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span">톡톡 파트너센터</span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminChart.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span">D-커머스 프로그램</span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminTv.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span">가치살자 애널리틱스</span>
								</div>
							</div>
							<div class="smartStore">
								<div class="smartStore-img">
									<img src="../images/adminWheel.png" alt="">
								</div>
								<div class="smartStore-span-wrapper">
									<span class="smartStore-span">SME 풀케어 시스템</span>
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