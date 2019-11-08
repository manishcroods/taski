package com.example.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.CompanyDetails;
import com.example.demo.repository.CompanyDetailsRepo;

@Service
@Transactional
public class CompanyDetailsServiceImpl implements CompanyDetailsService 
{

	@Autowired
	CompanyDetailsRepo companyDetailsRepo;
	
	@Override
	public CompanyDetails saveCompanydetails(CompanyDetails cd) 
	{
		return companyDetailsRepo.save(cd);
	}
	
	@Override
	public CompanyDetails findById(long companyid)
	{
		return companyDetailsRepo.findById(companyid).orElse(null);
	}
}
