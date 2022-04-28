package com.liveTogether.app.house.vo;

public class RoomFileVO {
	// 중복시 변경된 파일 이름
	   private String roomfileName;
//방 번호
	   private int roomNumber;
// 하우스 번호
	   private int houseNumber;
//원본 파일 이름
	   private String roomfileNameOriginal;
	   
	   public RoomFileVO() {;}

	public String getRoomfileName() {
		return roomfileName;
	}

	public void setRoomfileName(String roomfileName) {
		this.roomfileName = roomfileName;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getRoomfileNameOriginal() {
		return roomfileNameOriginal;
	}

	public void setRoomfileNameOriginal(String roomfileNameOriginal) {
		this.roomfileNameOriginal = roomfileNameOriginal;
	}
	   
	   
}
