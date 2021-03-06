package com.ats.wizoo.model;

public class DeviceByUserId {

	private int devId;

	private String devMac;
	private int devType;
	private String devIp;

	public int getDevId() {
		return devId;
	}

	public void setDevId(int devId) {
		this.devId = devId;
	}

	public String getDevMac() {
		return devMac;
	}

	public void setDevMac(String devMac) {
		this.devMac = devMac;
	}

	public int getDevType() {
		return devType;
	}

	public void setDevType(int devType) {
		this.devType = devType;
	}

	public String getDevIp() {
		return devIp;
	}

	public void setDevIp(String devIp) {
		this.devIp = devIp;
	}

	@Override
	public String toString() {
		return "DeviceByUserId [devId=" + devId + ", devMac=" + devMac + ", devType=" + devType + ", devIp=" + devIp
				+ "]";
	}

}
