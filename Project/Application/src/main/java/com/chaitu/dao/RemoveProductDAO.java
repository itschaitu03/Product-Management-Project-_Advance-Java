package com.chaitu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.chaitu.db.DBConnection;

public class RemoveProductDAO {

	public int k = 0;

	public int removeProduct(String productID) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Delete  from product69 where productID=?");
			ps.setString(1, productID);
			k = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;

	}
}
