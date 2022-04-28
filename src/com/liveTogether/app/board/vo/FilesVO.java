package com.liveTogether.app.board.vo;

public class FilesVO {
	private String fileName;
	private int boardNumber;
	private String fileNameOriginal;
	
	public FilesVO() {;}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getFileNameOriginal() {
		return fileNameOriginal;
	}

	public void setFileNameOriginal(String fileNameOriginal) {
		this.fileNameOriginal = fileNameOriginal;
	}
}