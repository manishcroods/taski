package com.example.demo.service;

import com.example.demo.model.CompanyDetails;

public interface CompanyDetailsService 
{
	public CompanyDetails saveCompanydetails(CompanyDetails cd) ;
	
	public CompanyDetails findById(long companyid);

}
