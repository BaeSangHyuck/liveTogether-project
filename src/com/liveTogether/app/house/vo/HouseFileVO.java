package com.liveTogether.app.house.vo;

public class HouseFileVO {
// 중복시 변경된 파일 이름
	   private String fileName;
// 방 번호
	   private int houseNumber;
// 원본 파일 이름
	   private String fileNameOriginal;
// 방 번호 fk로 설정
	   
	   public HouseFileVO() {;}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getFileNameOriginal() {
		return fileNameOriginal;
	}

	public void setFileNameOriginal(String fileNameOriginal) {
		this.fileNameOriginal = fileNameOriginal;
	}
	   
	   
}
