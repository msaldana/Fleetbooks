package com.radsolutions.fleetbooks.DTO;


public class NewAccountRequest extends Notification {

	public NewAccountRequest() {
		// TODO Auto-generated constructor stub
	}

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;

	private int newAccountId;

	public int getNewAccountId() {
		return newAccountId;
	}

	public void setNewAccountId(int newAccountId) {
		this.newAccountId = newAccountId;
	}
}
