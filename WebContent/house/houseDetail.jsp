<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta charset="UTF-8">
<title>가치 살자</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/roomDetail.css" />
</head>
<body>
	<c:set var="member" value="${member}" />
	<c:set var="house" value="${house}" />
	<c:set var="room" value="${room}" />
	<c:set var="roomguest" value="${roomguest}" />
	<c:set var="houseRoomImg" value="${houseRoomImg}" />
	<c:set var="houseMapImg" value="${houseMapImg}" />

	<!-- Header -->
	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article>
		<div id="second-wrap">
			<section id="zero">
				<div>
					<div>
						<p class="first-ptag">가치하우스 ${house.getHouseNumber()}호점</p>
						<div class="gradation-div"></div>
					</div>
					<div class="go-tour">
						<a href="#table-wrap" class="goingtour">+ 투어신청</a>
					</div>
					<img src="${pageContext.request.contextPath}/images/i.jpg"
						class="tour-img">
					<div class="tour-guide">희망지점을 방문해보고 간단한 인터뷰를 진행해보세요!</div>
				</div>
			</section>
			<section id="one">
				<div id="img-total">
					<div id="main-img">
						<c:forEach var="house" items="${houseRoomImg}">
							<div class="main-wrapper">
								<div class="main-image"
									style='background-image:url("${pageContext.request.contextPath}/upload/${house.getHousefileName()}")'>
								</div>
							</div>
						</c:forEach>
					</div>
					<div id="sub-img">
						<c:forEach var="house" items="${houseRoomImg}" varStatus="status">
							<c:choose>
								<c:when test="${status.index eq 0}">
									<div class="sub-wrapper active">
										<div class="sub-image"
											style='background-image:url("${pageContext.request.contextPath}/upload/${house.getHousefileName()}")'></div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="sub-wrapper">
										<div class="sub-image"
											style='background-image:url("${pageContext.request.contextPath}/upload/${house.getHousefileName()}")'></div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
				<div class="slider prev-btn"></div>
				<div class="slider next-btn"></div>
			</section>

			<section id="two">
				<div>
					<div class="intro">
						<a href="#review-ex" class="button primary click active">입주자
							리뷰</a> <a href="#two-ex" class="button primary click">상세 설명</a> <a
							href="#three-ex" class="button primary click">방 정보</a> <a
							href="#four-ex" class="button primary click">세부 정보</a> <a
							href="#five-ex" class="button primary click">FAQ</a>
					</div>
					<div class="review">
						<fieldset id="review-ex" class="height-fix">
							<legend>입주자 리뷰</legend>
						</fieldset>
						<div class="guest-review">입주자 리뷰</div>
						<div class="review-wrap">
							<c:choose>
								<c:when test="${roomguest != null and fn:length(roomguest) > 0}">
									<c:forEach var="roomguest" items="${roomguest}">
										<div class="review-wrapper">
											<div class="review-flex">
												<label class="guestinfo"><b class="showProfile">${roomguest.getMemberNickname()}</b>
													<span class="bar">|</span>
												<c:choose>
														<c:when test="${roomguest.getMemberGender() eq 'm'}"> (남자)</c:when>
														<c:otherwise> (여자)</c:otherwise>
													</c:choose>
												</label>
												<div class="star-wrap">
													<c:choose>
														<c:when test="${roomguest.getStar() eq '5'}">
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
														</c:when>
														<c:when test="${roomguest.getStar() eq '4'}">
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star">★</label>
														</c:when>
														<c:when test="${roomguest.getStar() eq '3'}">
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
														</c:when>
														<c:when test="${roomguest.getStar() eq '2'}">
															<label class="star active">★</label>
															<label class="star active">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
														</c:when>
														<c:otherwise>
															<label class="star active">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
															<label class="star">★</label>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<p class="real-review">${roomguest.getReview()}</p>
											<div class="profiles-wrap">
												<p class="guest-profile">${roomguest.getMemberProfile()}</p>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="noProfile">아직 입주한 사람이 없습니다</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>

					<div class="tab">
						<fieldset id="two-ex" class="height-fix">
							<legend>상세 설명</legend>
						</fieldset>
						<div class="option-wrap">
							<div>
								<p>공용 옵션</p>
								<div id="option-wrap">
									<div class="option-wrap-wrap">

										<table id="option-table">
											<tbody>
												<tr>
													<th>냉·난방시설</th>
													<td>
														<div class="flex">
															<c:if test="${house.getOpAircon() eq '1'}">
																<div>에어컨</div>
															</c:if>
															<c:if test="${house.getOpCentralHeat() eq '1'}">
																<div>중앙난방</div>
															</c:if>
															<c:if test="${house.getOpLocalHeat() eq '1'}">
																<div>지역난방</div>
															</c:if>
														</div>

													</td>
												</tr>
												<tr>
													<th>생활시설</th>
													<td>
														<div class="flex">
															<c:if test="${house.getOpRefrigerator() eq '1'}">
																<div>냉장고</div>
															</c:if>
															<c:if test="${house.getOpWasher() eq '1'}">
																<div>세탁기</div>
															</c:if>
															<c:if test="${house.getOpGasrange() eq '1'}">
																<div>가스레인지</div>
															</c:if>
															<c:if test="${house.getOpInduction() eq '1'}">
																<div>인덕션</div>
															</c:if>


															<c:if test="${house.getOpMicrowave() eq '1'}">
																<div>전자레인지</div>
															</c:if>

															<c:if test="${house.getOpDesk() eq '1'}">
																<div>책상</div>
															</c:if>
															<c:if test="${house.getOpDoorlock() eq '1'}">
																<div>도어락</div>
															</c:if>
															<c:if test="${house.getOpBed() eq '1'}">
																<div>침대</div>
															</c:if>

															<c:if test="${house.getOpCloset() eq '1'}">
																<div>옷장</div>
															</c:if>
															<c:if test="${house.getOpShoes() eq '1'}">
																<div>신발장</div>
															</c:if>
															<c:if test="${house.getOpSink() eq '1'}">
																<div>싱크대</div>
															</c:if>
														</div>
													</td>
												</tr>
												<tr>
													<th>보안시설</th>
													<td>
														<div class="flex">
															<c:if test="${house.getOpInterphone() eq '1'}">
																<div>인터폰</div>
															</c:if>
															<c:if test="${house.getOpWindow() eq '1'}">
																<div>방범창</div>
															</c:if>
															<c:if test="${house.getOpCctv() eq '1'}">
																<div>CCTV</div>
															</c:if>
														</div>
													</td>
												</tr>
												<tr>
													<th>기타시설</th>
													<td>
														<div class="flex">
															<c:if test="${house.getOpVeranda() eq '1'}">
																<div>베란다</div>
															</c:if>
															<c:if test="${house.getOpDelivery() eq '1'}">
																<div>무인택배함</div>
															</c:if>
															<c:if test="${house.getOpFirealarm() eq '1'}">
																<div>화재경보기</div>
															</c:if>
														</div>
													</td>
												</tr>
												<tr>
													<th>추가옵션</th>
													<td>
														<div class="flex">
															<c:if test="${house.getHouseParking() eq '1'}">
																<div>주차가능</div>
															</c:if>
															<c:if test="${house.getHouseElevator() eq '1'}">
																<div>엘리베이터</div>
															</c:if>
															<c:if test="${house.getHousePet() eq '1'}">
																<div>반려동물</div>
															</c:if>
														</div>
													</td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="explain">
							<pre>${house.getHouseMessage()}</pre>

						</div>
						<div class="column-wrap">
							<div class="column">
								<div class="column-title">주소</div>
								<div class="column-value">${house.getHouseAddress()}</div>
							</div>
							<div class="column">
								<div class="column-title">성별</div>
								<div class="column-value">
									<c:choose>
										<c:when test="${house.getHouseGender() eq 'm' }">남성 전용</c:when>
										<c:when test="${house.getHouseGender() eq 'w'}">여성 전용</c:when>
										<c:otherwise>
                        남녀 공용
                        </c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="column">
								<div class="column-title">최대거주인원</div>
								<div class="column-value">${house.getHouseMax()}</div>
							</div>
							<div class="column">
								<div class="column-title">주택유형</div>
								<div class="column-value">
									<c:choose>
										<c:when test="${house.getHouseType() eq 'a' }">아파트</c:when>
										<c:when test="${house.getHouseType() eq 'v'}">빌라</c:when>
										<c:when test="${house.getHouseType() eq 'd'}">단독 주택</c:when>
										<c:when test="${house.getHouseType() eq 'o'}">기타</c:when>
									</c:choose>
								</div>
							</div>

						</div>
					</div>
				</div>
			</section>
			<section id="three" class="tab">
				<fieldset id="three-ex" class="height-fix">
					<legend>방 정보</legend>
				</fieldset>
				<div>
					<div class="roomImg">
						<img
							src="${pageContext.request.contextPath}/upload/${houseMapImg}">
					</div>
				</div>
				<div id="table-wrap" class="table-wrap">
					<table>
						<thead>
							<tr>
								<th>이름</th>
								<th>성별</th>
								<th>타입</th>
								<th class="delete">면적</th>
								<th>보증금</th>
								<th>월세</th>
								<th>입주가능일</th>
								<th>투어신청</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${room != null and fn:length(room) > 0}">
									<c:forEach var="room" items="${room}">
										<tr>
											<td>${room.getRoomName()}</td>
											<td><c:choose>
													<c:when test="${room.getRoomGender() eq 'm'}">남성전용</c:when>
													<c:when test="${room.getRoomGender() eq 'w'}">여성전용</c:when>
												</c:choose></td>
											<td>${room.getRoomType()}인실</td>
											<td class="delete">${room.getRoomArea()}m²</td>
											<td>${room.getRoomDeposit()}만원</td>
											<td>${room.getRoomMonthly()}만원</td>
											<td>${room.getRoomDate()}</td>
											<td><button class="button-tour">투어신청</button></td>
										</tr>
									</c:forEach>
								</c:when>
							</c:choose>


						</tbody>
					</table>

				</div>
				<div class="pre-wrap">
					<pre>
- <b>미성년자</b> 또는 <b><span class="red">41세 이상</span></b>, 회원 가입시 <b>개인정보</b>가 계약자와 <b>다를 경우 <span
							class="red">입주 불가능</span></b> 
- <b>운영관리비</b>와 <b>선불공과금</b>은 <b><span class="red">매월 별도 납부 함</span> [자세히 알아보기]</b>
- '투어신청'은 두 지점까지 가능
- '투어신청'은 입주가능일 45일 전부터 가능
- '투어가능알림' 신청 후 투어가 가능해질 때 '투어신청가능'으로 SMS 자동문자 발송
- 가치살다의 하우스는 <b><span class="red">반전세 적용이 가능</span></b>합니다.
(보증금 1,000만원 상향 시 월세 5만원 할인)
- 경우에 따라 반전세 적용이 불가한 하우스도 있으니 반드시 확인 부탁드립니다.</pre>
					<div>
						서울시 서초구 서초동 기준 <span class="span">(예시)</span>
					</div>
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>가치하우스</th>
								<th>쉐어하우스 원룸</th>
								<th>오피스텔</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>보증금</td>
								<td>95만원</td>
								<td>1000만원</td>
								<td>1000만원</td>
							</tr>
							<tr>
								<td>임대료</td>
								<td>39만5천원</td>
								<td>59만원</td>
								<td>65만원</td>
							</tr>
							<tr>
								<td>운영관리비</td>
								<td>3만원</td>
								<td>5만원</td>
								<td>11만원</td>
							</tr>
							<tr>
								<td>공과금</td>
								<td>입주자간의 1/N 납부</td>
								<td>개인 사용량에 따라 상이</td>
								<td>개인 사용량에 따라 상이</td>
							</tr>
							<tr>
								<td>중개수수료</td>
								<td>없음</td>
								<td>27.6만원 이상</td>
								<td>30만원 이상</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
			<section id="four" class="tab">
				<fieldset id="four-ex" class="height-fix">
					<legend>세부 정보</legend>
				</fieldset>
				<div id="map" style="width: 100%; height: 350px;"></div>
				<div class="move-wrapper">
					<a href="https://map.kakao.com/?q=${house.getHouseAddress()}"
						class="move" target="_blank">${house.getHouseAddress()}
						${house.getHouseAddressDetail()}</a>
				</div>
			</section>
			<section id="five" class="tab">
				<fieldset id="five-ex" class="height-fix">
					<legend>FAQ</legend>
				</fieldset>
				<div id="wrap-tab">
					<a id="live-wrap" class="button primary fit active">입주관련</a> <a
						id="contract-wrap" class="button primary fit">계약관련</a>
				</div>
				<div id="live">
					<input type="radio" name="live" id="faq-question1"> <label
						for="faq-question1">1. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
					<div>
						<p>
							입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 가치 하우스 투어 하루
							전 날 확인 전화를 드리며,<br> 기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가
							가치 하우스 투어 일정 조율을 위해 전화를 드립니다.<br> 가치 하우스 투어 일정이 확정되면 해당 일시에
							희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
						</p>
					</div>
					<input type="radio" name="live" id="faq-question2"> <label
						for="faq-question2">2. 보증금과 월세 외에 다른 비용에는 무엇이 있나요?</label>
					<div>
						<p>
							지점 운영 관리비와 선불 공과금(전기, 가스, 수도요금, 건물관리비)을 별도로 납부 해주셔야 합니다.
							[선불공과금이란?]<br> 계약기간 내 납부해주신 선불 공과금은 퇴실 시 정산하고 정산후 생긴 차액은 반환
							되거나 혹은 보증금에서 차감됩니다.<br> 공과금의 경우, 정산 방식은 1(쉐어하우스 인원수)/
							N(실제공과금)로 사용하시는만큼 청구가 됩니다.<br> 청구된 공과금은 입주자 분들의 납부 및 정산 편의를
							위해 매달 임대료(월세)와 별도로 받고 있습니다.<br> 일반적으로, 운영관리비는 3만원, 선불공과금은
							5만원이지만 해당 금액은 지점별로 상이할 수 있으니 이 점 꼭 참고해주세요!
						</p>
					</div>
					<input type="radio" name="live" id="faq-question3"> <label
						for="faq-question3">3. 공과금은 어떻게 처리하나요?</label>
					<div>
						<p>계약 시 안내 된 선불 공과금을 매월 납부하고 퇴실 시에 실제 사용금액과 비교해 정산하게 됩니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question4"> <label
						for="faq-question4">4. 공과금을 왜 '선불 공과금'이라고 부르나요? 이게 왜 필요하죠?</label>
					<div>
						<p>선불 공과금이란 입주 계약기간 동안 일정 금액으로 정해진 예상 공과금을 선불로 납부하는 것을 말합니다.
							사용량만큼 후불로 청구되는 공과금 특성 상, 매월 다른 금액이 청구되어 정기 요금 납부 때마다 일일이 액수를 신경
							써야 한다는 불편이 있습니다. 가치살자는 이 점을 개선하고자 가치인이 미리 지정된 고정 금액을 매달 선불로 납부하는
							방식으로 공과금 제도를 운영하고 있습니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question5"> <label
						for="faq-question5">5. 선불 공과금과 실제 사용금액에 차이가 나면 어떻게 하나요?</label>
					<div>
						<p>납부한 선불 공과금은 퇴실 시 실제 사용금액과 비교되어 정산됩니다. 계약기간 동안 납부한 선불 공과금보다
							실제 사용금액이 적은 경우, 퇴실 후 보증금 반환시 차액만큼 더 반환됩니다. 반대로 실제 사용금액이 더 많은 경우,
							보증금이 차액만큼 차감되어 반환됩니다</p>
					</div>
					<input type="radio" name="live" id="faq-question6"> <label
						for="faq-question6">6. 공과금은 어떤 절차로 납부하나요?</label>
					<div>
						<p>임대료와 동일하게 같이살자가 안내하는 대로 납부하시면 됩니다. 단, 실제로 거주했는지 여부와 관계 없이
							계약기간을 기준으로 부담하는 것이 원칙입니다. 즉, 계약기간 중 개인사정으로 집을 비우는 기간이 발생하더라도
							해당기간이 공과금 산정기간에서 제외되지 않습니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question7"> <label
						for="faq-question7">7. 보증금은 언제 반환되나요?</label>
					<div>
						<p>
							보증금은 퇴실 시 시행하는 하우스 매니저의 시설 점검 후 5일 내에 반환해드립니다. 다만 보증금은 다음의 두 가지
							사유로 차감될 수 있으며 다음에 해당하는 사례의 경우 잔여 액만 반환 가능합니다.<br> ① 임대료가1개월
							이상 체납되는 경우 변제<br> ② 입주자 과실로 시설/기물이 파손되는 경우 배상
						</p>
					</div>
					<input type="radio" name="live" id="faq-question8"> <label
						for="faq-question8">8. 퇴실 절차는 어떻게 되나요?</label>
					<div>
						<p>
							<b>가치살자</b>는 현재 입주자 분께 계약 종료일로부터 2개월 전에 재계약 의사를 문의 드리며, 재계약 의사가
							없으실 경우, 계약종료일에 하우스 매니저의 시설 점검을 후 시설에 이상이 없을 시 퇴실 하게 됩니다. 퇴실 시 열쇠는
							반납하셔야 하며, 보증금은 계약종료일로부터 3 일 이내에 돌려드립니다.
						</p>
					</div>
					<input type="radio" name="live" id="faq-question9"> <label
						for="faq-question9">9. 입주 시 지켜야 할 규정이 있나요?</label>
					<div>
						<p>계약사항에 위배되지 않는한 가치하우스는 입주자분들의 개인생활에 관여하지 않습니다. 다만, 같은 지점에
							거주하는가치인들은 입주 후 협의 하에 ‘주거규칙 가이드라인’을 만들어 원활한 셰어 라이프를 지켜나갑니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question10"> <label
						for="faq-question10">10. 입주 후 추가 수납공간 및 기타 시설이 필요할 경우 어떻게
						하나요?</label>
					<div>
						<p>
							계약 전 가치 하우스 투어를 통해 수납공간과 시설에 대한 충분한 숙지 후 계약을 진행하므로 <b>가치살자</b>는
							입주 후 추가 시설 또는 기타 물품 (수납장, 정수기 등) 에 대한 지원을 진행하지 않습니다. 이 점 양해 부탁
							드립니다!
						</p>
					</div>
					<input type="radio" name="live" id="faq-question11"> <label
						for="faq-question11">11. 입주 시 꼭 챙겨야 하는 물건이 있나요?</label>
					<div>
						<p>
							기본적인 가전제품과 가구만 준비되어 있으므로 그 외의 물품은 모두 개인적으로 준비하셔야 합니다.<br> <br>
							개인식기 (수저, 그릇, 조리기구)<br> 침구 (매트리스 커버, 이불, 베개)<br> 개인
							스탠드, 멀티탭<br> 빨래건조대는 공용으로 2~4개가 준비되어 있습니다.
						</p>
					</div>
					<input type="radio" name="live" id="faq-question12"> <label
						for="faq-question12">12. 반려동물/애완동물을 키울 수 있나요?</label>
					<div>
						<p>크기와 종류에 관계 없이 모든 반려/애완동물을 키울 수 없으며, 이를 위반할 경우 계약 내용에 따라
							퇴거요청을 받을 수 있습니다. 이는 룸메이트나 해당 집의 입주자 전원이 동의하더라도 마찬가지입니다.</p>
					</div>
				</div>
				<div id="contract" style="display: none;">
					<input type="radio" name="live" id="faq-question13"> <label
						for="faq-question13">1. 계약기간은 어떻게 되나요?</label>
					<div>
						<p>입주 계약은 6개월 단위로 체결 가능합니다. 가치 하우스는 거주자 커뮤니티 형성과 셰어하우스 문화정착을
							위해 6개월 단위로 거주 계약을 진행하고 있습니다. 다만 프로모션 정책에 따라 지점별로 최소 계약기간이 상이하니(최소
							2개월) '지점소개' 란을 참고해 주세요.</p>
					</div>
					<input type="radio" name="live" id="faq-question14"> <label
						for="faq-question14">2. 입주일은 어떻게 정해지나요?</label>
					<div>
						<p>입주일은 하우스 매니저와의 일정 조율을 통해 정해지나, 통상 입주 가능일로부터 7일 이내에 입주 가능하신
							분이 희망 지점 입주에 유리합니다. 계약서를 작성 하고 나면 2일 이내에 보증금을 납부하셔야 하며, 월세는 입주 2일
							전까지 납부해야 합니다. 위 사항을 지키지 못 하실 경우 계약은 통보 없이 자동으로 취소되오니, 이 점 양해 부탁
							드립니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question15"> <label
						for="faq-question15">3. 입주기간을 연장할 수 있나요?</label>
					<div>
						<p>입주기간은 초기 계약과 마찬가지로 6개월 단위로 연장하게 됩니다. 재계약을 원하실 경우, 계약 종료일로부터
							두 달 전에 하우스 매니저께 재계약 의사를 밝혀주셔야 하며, 재계약은 입주자 간 상호 만족도 조사와 담당자 소견을
							바탕으로 결정됩니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question16"> <label
						for="faq-question16">4. 보증금은 납부하였으나 아직 입주 전 입니다. 만약 현 상황에서
						계약 취소 시 어떻게 되나요?</label>
					<div>
						<p>입주 전 계약을 해지하는 경우, 계약시작일까지 남은 기간에 따라 다른 액수의 보증금이 차감됩니다. 자세한
							사항은 계약서를 참조하시기 바랍니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question17"> <label
						for="faq-question17">5. 보증금과 월세는 얼마인가요?</label>
					<div>
						<p>임대료는 집에 따라 다르기 때문에, 입주를 희망하시는 집의 상세 소개페이지에서 확인해주시는 것이 가장
							정확합니다. 마찬가지로 보증금도 집에 따라 달라지며, 입주를 희망하시는 방 월세의 2개월 분 금액입니다. (예를 들어
							월세가 40만원인 방에 입주 하시면, 보증금은 80만원입니다.)</p>
					</div>
					<input type="radio" name="live" id="faq-question18"> <label
						for="faq-question18">6. 단기 입주가 가능한가요?</label>
					<div>
						<p>2개월 부터 가능합니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question19"> <label
						for="faq-question19">7. 입주할 수 있는 나이 제한이 있나요?</label>
					<div>
						<p>보다 빠르고 친밀한 커뮤니티 형성을 위해, 입주하시는 분들의 연령은 20세부터 41세까지로 정하고
							있습니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question20"> <label
						for="faq-question20">8. 입주 및 계약 문의는 어디로 해야하나요?</label>
					<div>
						<p>입주/계약문의는 전화(02-2018-3718) 및 이메일(eiziong1@gmail.com) 로
							영업시간(평일 10:00 ~ 18:00, 점심시간 12:30 ~ 13:30)내에 문의하실 수 있습니다. 입주/계약에
							대한 궁금하신 점은 홈페이지의 FAQ를 통해 확인 하실 수 있으니 문의하시기 전에 FAQ를 확인해주세요! 카카오톡
							혹은 라인 메신저로는 상담 진행해드리지 않고 있으니 이 점 참고 부탁드립니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question21"> <label
						for="faq-question21">9. 2인실 가격 기준은 어떻게 되나요?</label>
					<div>
						<p>홈페이지에 안내 되어있는 2인실 가격은 1인 가격 기준입니다. 예를 들어 2인실인데 보증금 96만원/임대료
							41만원/관리비3만원/공과금 5만원이라고 명시되어있는 자리는해당 금액 모두 1인이 부담하는 비용입니다.</p>
					</div>
					<input type="radio" name="live" id="faq-question22"> <label
						for="faq-question22">10. 지점 내 관리 직원이 상주하나요?</label>
					<div>
						<p>아니오. 지점 내에서는 가치살자 직원이 상주하고 있지 않습니다.</p>
					</div>
				</div>


			</section>

		</div>
	</article>
	<div>
		<jsp:include page="../fix/footer.jsp" />
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
	var houseNumber = "${house.getHouseNumber()}";
	var room = "${room}";
	var memberId = "${memberId}";
	var memberGender = "${member.getMemberGender()}";
	var memberType = "${memberType}";
</script>
<script src="${pageContext.request.contextPath}/assets/js/roomDetail.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e9a68c5f5c2321311332ee213eaf6e"></script>
<script>
	var latitude = "<c:out value='${house.getLatitude()}'/>";
	var longitude = "<c:out value='${house.getLongitude()}'/>";

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
		level : 5
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	/* var markerPosition = new kakao.maps.LatLng(37.530547, 126.940617);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	   position : markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map); */

	var circle = new kakao.maps.Circle({
		center : new kakao.maps.LatLng(latitude, longitude), // 원의 중심좌표 입니다 
		radius : 300, // 미터 단위의 원의 반지름입니다 
		strokeWeight : 5, // 선의 두께입니다 
		strokeColor : '#013DC4', // 선의 색깔입니다
		strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		strokeStyle : 'solid', // 선의 스타일 입니다
		fillColor : '#CFE7FF', // 채우기 색깔입니다
		fillOpacity : 0.9
	// 채우기 불투명도 입니다   
	});

	circle.setMap(map);
</script>
</html>