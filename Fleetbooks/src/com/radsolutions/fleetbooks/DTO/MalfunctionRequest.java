package com.radsolutions.fleetbooks.DTO;


public class MalfunctionRequest extends Notification {

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;

	private int brokenEquipmentId;
	private int requesterId;
	
	public MalfunctionRequest() {
		// TODO Auto-generated constructor stub
	}
	
	public int getBrokenEquipmentId() {
		return brokenEquipmentId;
	}

	public void setBrokenEquipmentId(int brokenEquipmentId) {
		this.brokenEquipmentId = brokenEquipmentId;
	}

	public int getRequesterId() {
		return requesterId;
	}

	public void setRequesterId(int requesterId) {
		this.requesterId = requesterId;
	}
}
