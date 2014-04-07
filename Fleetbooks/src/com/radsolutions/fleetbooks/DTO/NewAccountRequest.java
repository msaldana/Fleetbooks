package com.radsolutions.fleetbooks.DTO;

import java.sql.Date;

public class NewAccountRequest implements Notification {

	public NewAccountRequest() {
		// TODO Auto-generated constructor stub
	}

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;
	private int id;
	private String type;
	private String sender;
	private Date date;
	private boolean isSolved;
	private boolean isVisible;
	private int receiverAccountId;
	
	private int newAccountId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public boolean isSolved() {
		return isSolved;
	}

	public void setSolved(boolean isSolved) {
		this.isSolved = isSolved;
	}

	public boolean isVisible() {
		return isVisible;
	}

	public void setVisible(boolean isVisible) {
		this.isVisible = isVisible;
	}

	public int getReceiverAccountId() {
		return receiverAccountId;
	}

	public void setReceiverAccountId(int receiverAccountId) {
		this.receiverAccountId = receiverAccountId;
	}

	public int getNewAccountId() {
		return newAccountId;
	}

	public void setNewAccountId(int newAccountId) {
		this.newAccountId = newAccountId;
	}
}
