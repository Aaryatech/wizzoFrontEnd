package com.ats.wizoo.model;
 

public class GetSupportList {
	 
	private int tokenId; 
	private int userId; 
	private int assignedTo; 
	private String issueDesc; 
	private String issueRaisedDatetime; 
	private String solutionProvided; 
	private String solutionDatetime; 
	private int status; 
	private String userName; 
	private String empName;
	public int getTokenId() {
		return tokenId;
	}
	public void setTokenId(int tokenId) {
		this.tokenId = tokenId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getAssignedTo() {
		return assignedTo;
	}
	public void setAssignedTo(int assignedTo) {
		this.assignedTo = assignedTo;
	}
	public String getIssueDesc() {
		return issueDesc;
	}
	public void setIssueDesc(String issueDesc) {
		this.issueDesc = issueDesc;
	}
	public String getIssueRaisedDatetime() {
		return issueRaisedDatetime;
	}
	public void setIssueRaisedDatetime(String issueRaisedDatetime) {
		this.issueRaisedDatetime = issueRaisedDatetime;
	}
	public String getSolutionProvided() {
		return solutionProvided;
	}
	public void setSolutionProvided(String solutionProvided) {
		this.solutionProvided = solutionProvided;
	}
	public String getSolutionDatetime() {
		return solutionDatetime;
	}
	public void setSolutionDatetime(String solutionDatetime) {
		this.solutionDatetime = solutionDatetime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	@Override
	public String toString() {
		return "GetSupportList [tokenId=" + tokenId + ", userId=" + userId + ", assignedTo=" + assignedTo
				+ ", issueDesc=" + issueDesc + ", issueRaisedDatetime=" + issueRaisedDatetime + ", solutionProvided="
				+ solutionProvided + ", solutionDatetime=" + solutionDatetime + ", status=" + status + ", userName="
				+ userName + ", empName=" + empName + "]";
	}
	
	

}
