package com.revature.dao.impl;
import com.revature.service.*;
import static java.lang.System.out;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.log4j.Logger;

import com.revature.app.Application;
import com.revature.constant.Constant;
import com.revature.dao.AssociateDao;
import com.revature.jdbc.util.ConnectionFactory;
import com.revature.jdbc.util.DbUtil;
import com.revature.jdbc.util.QueryConstants;
import com.revature.model.Associate;
import com.revature.model.AssociateTrack;
import com.revature.model.Menu;

public class AssociateDaoImp extends Associate implements AssociateDao{
	
	private static final Logger logger= Logger.getLogger(AssociateDaoImp.class);
	private Connection conn;
	
	public AssociateDaoImp(Connection conn) {
		super();
		this.conn=conn;
	}
	@Override
	public boolean addDetails(Associate associate) {
		boolean f= false;
		try {
			String sql="insert into associate(Associate_id,Associate_name,Associate_track,Associate_qualification,Associate_experience) values(?,?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setString(1, associate.getAssociateId() );
			ps.setString(2, associate.getAssociateName() );
			ps.setString(3, associate.getAssociateTrack() );
        	ps.setString(4, associate.getAssociateQualification() );
			ps.setString(5, associate.getAssociateExperience() );

			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch( Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public List<Associate> getAllAssociate() {
		List<Associate> list=new ArrayList<Associate>();
		 Associate a=null;
		try {
			String sql="select * from associate";
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				
				a=new Associate();
				a.setAssociateId(rs.getString(1));
				a.setAssociateName(rs.getString(2));
				a.setAssociateTrack(rs.getString(3));
				a.setAssociateQualification(rs.getString(4));
				a.setAssociateExperience(rs.getString(5));
                
				list.add(a);
				 
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return list;
	}


	@Override
	public Associate getAssociateById(int id) {
		Associate a=null;
		try {
			String sql="select * from associate where Associate_id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				
				a=new Associate();
				a.setAssociateId(rs.getString(1));
				a.setAssociateName(rs.getString(2));
				a.setAssociateTrack(rs.getString(3));
				a.setAssociateQualification(rs.getString(4));
				a.setAssociateExperience(rs.getString(5));
                 
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return a;
		
		
	}

	public boolean EditAssociateDetails(Associate associate) {
		boolean f= false;
		try {
			String sql="update associate set Associate_id=?,Associate_name=?,Associate_track=?,Associate_qualification=?,Associate_experience=? where Associate_id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setString(1, associate.getAssociateId() );
			ps.setString(2, associate.getAssociateName() );
			ps.setString(3, associate.getAssociateTrack() );
        	ps.setString(4, associate.getAssociateQualification() );
			ps.setString(5, associate.getAssociateExperience() );
			ps.setString(6, associate.getAssociateId() );

			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch( Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	@Override
	public boolean deleteAssociateaDetails(int id) {
		boolean f=false;
		
		try {
			String sql="delete from Associate where Associate_id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		return f;
		
		
	}


	}



	
	


