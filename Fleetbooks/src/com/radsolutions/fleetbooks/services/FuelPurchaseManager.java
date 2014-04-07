package com.radsolutions.fleetbooks.services;

public class FuelPurchaseManager {

	private static final String ADD_FUEL_PURCHASE = "INSERT INTO account(firstname, lastname, email, password, phone, type, approved) VALUES (?, ?, ?, ?, ?, ?, ?)";
	
	private static final FuelPurchaseManager singleton = new FuelPurchaseManager();
	
	private FuelPurchaseManager(){

	}

	public static final FuelPurchaseManager getInstance(){
		return singleton;
	}

}
