package com.radsolutions.fleetbooks.DTO;


public class MaintenanceNotification extends Notification {

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;

	private int partId;
	
	public MaintenanceNotification(){
		
	}
	
	public int getPartId() {
		return partId;
	}

	public void setPartId(int partId) {
		this.partId = partId;
	}	
}
