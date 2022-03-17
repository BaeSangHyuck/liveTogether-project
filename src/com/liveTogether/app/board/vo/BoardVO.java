package com.liveTogether.app.board.vo;

public class BoardVO {
	
	// 게시판 번호
	private int boardNumber;
	//게시판 제목
	private String boardTitle;
	//게시판 내용
	private String boardContent;
	//작성일
	private String boardDate;
	
	public BoardVO() {;}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

}
