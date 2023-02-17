package com.revature.dao;

import java.util.List;

import com.revature.model.Associate;

public interface AssociateDao {
	public abstract boolean addDetails(Associate associate);
	public List<Associate> getAllAssociate();
	public Associate getAssociateById(int id);
	public boolean EditAssociateDetails(Associate associate);
	public boolean deleteAssociateaDetails(int id);
    

}
