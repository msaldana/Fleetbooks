package com.radsolutions.fleetbooks.DTO;


public class EquipmentCheckout extends Notification {

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;
	
	private int equipmentId;
	private int requesterId;
	
	public EquipmentCheckout(){
		
	}

	public int getEquipmentId() {
		return equipmentId;
	}

	public void setEquipmentId(int equipmentId) {
		this.equipmentId = equipmentId;
	}

	public int getRequesterId() {
		return requesterId;
	}

	public void setRequesterId(int requesterId) {
		this.requesterId = requesterId;
	}
	
	
}
