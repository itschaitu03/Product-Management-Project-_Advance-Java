package com.chaitu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.chaitu.bean.ProductBean;
import com.chaitu.db.DBConnection;

public class ViewAllProductDAO {

	ProductBean pb = null;
	ArrayList<ProductBean> al = new ArrayList<ProductBean>();

	public ArrayList<ProductBean> viewAllProduct() {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from product69");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				pb = new ProductBean();
				pb.setProductID(rs.getString(1));
				pb.setProductName(rs.getString(2));
				pb.setProductPrice(rs.getFloat(3));
				pb.setProductQuantity(rs.getInt(4));
				al.add(pb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return al;
	}
}
