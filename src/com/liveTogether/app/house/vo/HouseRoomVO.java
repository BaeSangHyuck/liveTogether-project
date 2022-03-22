package com.liveTogether.app.house.vo;

public class HouseRoomVO {
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
	
	public HouseRoomVO() {;}



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

	public int getRoomDeposit() {
		return roomDeposit;
	}

	public void setRoomDeposit(int roomDeposit) {
		this.roomDeposit = roomDeposit;
	}

	public int getRoomMonthly() {
		return roomMonthly;
	}

	public void setRoomMonthly(int roomMonthly) {
		this.roomMonthly = roomMonthly;
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

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}
	
}
