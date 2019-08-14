package com.gd25.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.gd25.dto.ProductsVO;
import com.gd25.dto.StockVO;
import com.gd25.util.DBCon;

public class GDDao {
	private static GDDao instance = null;

	private GDDao() {

	}

	public static GDDao getInstance() {

		if (instance == null) {

			instance = new GDDao();

		}

		return instance;

	}

	// 재고에서 카테고리별 재고 조회 하는 메서드
	public List<ProductsVO> getStockList(String[] categories) throws NamingException, SQLException {

		List<ProductsVO> lst = new ArrayList<ProductsVO>();

		Connection con = DBCon.getConnection();

		for(String s : categories) {

			if (s.contains("간편식사")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '간편식사'";

				PreparedStatement pstmt = con.prepareStatement(query);
				
				
				ResultSet rt = pstmt.executeQuery();

					
				
				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);
					System.out.println(lst);
				}

			}
			
			if (s.contains("즉석조리")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '즉석조리'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}
			if (s.contains("과자류")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '과자류'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}
			if (s.contains("아이스크림")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '아이스크림'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}
			if (s.contains("식품")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '식품'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}
			if (s.contains("음료")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '음료'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}
			if (s.contains("생활용품")) {

				String query = "select p.*, s.sCnt, s.sDate from products p inner join stock s on p.pbcode = s.sBCode where category = '생활용품'";

				PreparedStatement pstmt = con.prepareStatement(query);

				ResultSet rt = pstmt.executeQuery();

				while (rt.next()) {

					ProductsVO p = new ProductsVO(rt.getString("category"), rt.getString("class"),
							rt.getString("pname"), rt.getString("pbcode"),
							new StockVO(rt.getDate("sDate"), rt.getInt("sCnt")));
					lst.add(p);

				}

			}

		}

		return lst;
	}

}
