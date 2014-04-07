package com.radsolutions.fleetbooks.DTO;


public class EquipmentRequest extends Notification {

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;

	private int requestingProjectId;
	private int requestedEquipmentId;
	private int requesterId;
	
	public EquipmentRequest() {
		// TODO Auto-generated constructor stub
	}

	public int getRequestingProjectId() {
		return requestingProjectId;
	}

	public void setRequestingProjectId(int requestingProjectId) {
		this.requestingProjectId = requestingProjectId;
	}

	public int getRequestedEquipmentId() {
		return requestedEquipmentId;
	}

	public void setRequestedEquipmentId(int requestedEquipmentId) {
		this.requestedEquipmentId = requestedEquipmentId;
	}

	public int getRequesterId() {
		return requesterId;
	}

	public void setRequesterId(int requesterId) {
		this.requesterId = requesterId;
	}
	
	
}
