package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Contacts;

public interface ContactsService {
	
	public Contacts saveContacts(Contacts contacts);
	
	public List<Contacts> findAllContacts();
	
	public void deleteContacts(long contactsid);
	
	public Contacts editContacts(long contactid);

}
