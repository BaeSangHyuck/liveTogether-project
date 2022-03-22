package com.liveTogether.app.member.vo;


/*
 * 	private int roomNumber;
//  방 이름
	private String roomName;
//  몇인실인지
	private String roomType; 
//  방 전용 성별
	private String roomGender;
//  보증금
	private int roomDeposit;
//  월세
	private int roomMonthly;
//  면적 (m2)
	private String roomArea;
//  입주가능일
	private String roomDate; 
//  어떤 하우스의 룸인지
	private int houseNumber;
	
*/

public class MyRoomGuestDTO {
	private String memberId;
	private int houseNumber;
	private int roomNumber;
	private int roomDeposit;
	private int houseMax;
	private String roomArea;
	private String roomDate; 
	private String roomName;
	private String roomType;
	private String roomGender;
	private String memberName;
	private int star;
	private String review;
	
	
	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getHouseMax() {
		return houseMax;
	}

	public void setHouseMax(int houseMax) {
		this.houseMax = houseMax;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	public String getHouseGender() {
		return houseGender;
	}

	public void setHouseGender(String houseGender) {
		this.houseGender = houseGender;
	}

	public String getHouseType() {
		return houseType;
	}

	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}

	private String memberGender;
	private String memberPhone;
	private String status;
	private String houseAddress;
	private String houseGender;
	private String houseType;
	
	
	public int getRoomDeposit() {
		return roomDeposit;
	}

	public void setRoomDeposit(int roomDeposit) {
		this.roomDeposit = roomDeposit;
	}

	public String getRoomArea() {
		return roomArea;
	}

	public void setRoomArea(String roomArea) {
		this.roomArea = roomArea;
	}

	public String getRoomDate() {
		return roomDate;
	}

	public void setRoomDate(String roomDate) {
		this.roomDate = roomDate;
	}

	public String getRoomMonthly() {
		return roomMonthly;
	}

	public void setRoomMonthly(String roomMonthly) {
		this.roomMonthly = roomMonthly;
	}

	private String roomMonthly;
	

	public MyRoomGuestDTO() {;}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getRoomGender() {
		return roomGender;
	}

	public void setRoomGender(String roomGender) {
		this.roomGender = roomGender;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}


	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
