package com.example.demo.model;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
public class ClientInfo 
{

	private long infoID;
	
	private String referer;
	
	private String fillURL;
	
	private String clientIpAddr;
	
	private String clientOS;
	
	private String clientBrowser;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", referencedColumnName = "userId")
	private User user;
	
	
	
	
}
