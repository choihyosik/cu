package com.gd25.dto;

import java.sql.Date;

public class ProductsVO {
	private String pbcode;
	private String category;
	private String classes;
	private String pname;
	private String pinfo;
	private int pcost;
	private int pprice;
	private String pimg;
	private Character pagelimit;
	private StockVO stockvo;
	
	public ProductsVO(String pbcode, String category, String classes, String pname, String pinfo, int pcost, int pprice,
			String pimg, Character pagelimit) {
		
		this.pbcode = pbcode;
		this.category = category;
		this.classes = classes;
		this.pname = pname;
		this.pinfo = pinfo;
		this.pcost = pcost;
		this.pprice = pprice;
		this.pimg = pimg;
		this.pagelimit = pagelimit;
	}
	
	
	//재고 조회를 위한 생성자
	public ProductsVO(String category, String classes, String pname, String pbcode, StockVO stockVO) {
		this.category = category;
		this.classes = classes;
		this.pname = pname;
		this.pbcode = pbcode;
		this.stockvo = stockVO;
		
	}



	


	public StockVO getStockvo() {
		return stockvo;
	}


	public void setStockvo(StockVO stockvo) {
		this.stockvo = stockvo;
	}


	public String getPbcode() {
		return pbcode;
	}

	public void setPbcode(String pbcode) {
		this.pbcode = pbcode;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public int getPcost() {
		return pcost;
	}

	public void setPcost(int pcost) {
		this.pcost = pcost;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public Character getPagelimit() {
		return pagelimit;
	}

	public void setPagelimit(Character pagelimit) {
		this.pagelimit = pagelimit;
	}

	@Override
	public String toString() {
		return "ProductsVO [pbcode=" + pbcode + ", category=" + category + ", classes=" + classes + ", pname=" + pname
				+ ", pinfo=" + pinfo + ", pcost=" + pcost + ", pprice=" + pprice + ", pimg=" + pimg + ", pagelimit="
				+ pagelimit + ", stockvo=" + stockvo + "]";
	}
	
	
	
	
	
}
