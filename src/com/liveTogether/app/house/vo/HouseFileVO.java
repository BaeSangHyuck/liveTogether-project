package com.liveTogether.app.house.vo;

public class HouseFileVO {
// 파일 번호(순서)
	private int houseFileNumber;
// 중복시 변경된 파일 이름
	private String housefileName;
// 방 번호
	private int houseNumber;
// 원본 파일 이름
	private String housefileNameOriginal;

	public HouseFileVO() {		;	}	
	

	public int getHouseFileNumber() {
		return houseFileNumber;
	}

	public void setHouseFileNumber(int houseFileNumber) {
		this.houseFileNumber = houseFileNumber;
	}


	public String getHousefileName() {
		return housefileName;
	}

	public void setHousefileName(String housefileName) {
		this.housefileName = housefileName;
	}

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getHousefileNameOriginal() {
		return housefileNameOriginal;
	}

	public void setHousefileNameOriginal(String housefileNameOriginal) {
		this.housefileNameOriginal = housefileNameOriginal;
	}

}
