package com.liveTogether.app.board.vo;

public class BoardFileVO {
	
	//중복시 변경된 파일 이름
	private String fileName;
	//게시판 번호
	private String boardNumber;
	//원본 파일 이름
	private String fileNameOriginal;
	
	public BoardFileVO() {;}
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(String boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getFileNameOriginal() {
		return fileNameOriginal;
	}

	public void setFileNameOriginal(String fileNameOriginal) {
		this.fileNameOriginal = fileNameOriginal;
	}

}
