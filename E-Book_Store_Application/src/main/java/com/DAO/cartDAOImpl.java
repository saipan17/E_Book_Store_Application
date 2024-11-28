package com.DAO;

import java.sql.PreparedStatement;
import com.entity.Cart;
import com.mysql.jdbc.Connection;

public class cartDAOImpl  implements cartDAO{

	private Connection con;
	
	public cartDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public boolean addToCart(Cart c) { 
		boolean b = false;
		
		try {
		String sql = "insert into cart(bid , uid , bookName , author , price , total_price) values(?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, c.getBid());
		ps.setInt(2, c.getUid());
		ps.setString(3, c.getBookName());
		ps.setString(4, c.getAuthor());
		ps.setString(5, c.getPrice());
		ps.setString(6, c.getTotalPrice());
		
		int i = ps.executeUpdate();
		
		if(i==1) {
			
			b = true;
		}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}

}
