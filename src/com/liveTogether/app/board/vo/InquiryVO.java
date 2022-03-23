package com.liveTogether.app.board.vo;

public class InquiryVO {
	private int inquiryNumber;
	private String memberId;
	private String memberPhone;
	private String houseNumber;
	private String houseType;
	private String typeOption;
	private String inquiryContent;
	private String inquiryResponse;
	private String memberType;
	private int status;
	
	public InquiryVO() {;}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}



	public String getInquiryResponse() {
		return inquiryResponse;
	}



	public void setInquiryResponse(String inquiryResponse) {
		this.inquiryResponse = inquiryResponse;
	}



	public String getMemberType() {
		return memberType;
	}



	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}



	public int getInquiryNumber() {
		return inquiryNumber;
	}

	public void setInquiryNumber(int inquiryNumber) {
		this.inquiryNumber = inquiryNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getHouseType() {
		return houseType;
	}

	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}

	public String getTypeOption() {
		return typeOption;
	}

	public void setTypeOption(String typeOption) {
		this.typeOption = typeOption;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}
	
	
}
