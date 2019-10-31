package com.example.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Contacts;
import com.example.demo.repository.ContactsRepo;

@Service
@Transactional
public class ContactsServiceImpl implements ContactsService {

	@Autowired
	ContactsRepo contactsrepo;
	
	@Override
	public Contacts saveContacts(Contacts contacts)
	{
		return contactsrepo.save(contacts);
	}
	
	@Override
	public List<Contacts> findAllContacts()

	{
		return contactsrepo.findAll();
	}
	
	@Override
	public void deleteContacts(long contactsid) 
	{
		contactsrepo.deleteById(contactsid);
	}
	
	@Override
	public Contacts editContacts(long contactid)
	{
		return contactsrepo.findById(contactid).orElse(null);
	}
}

