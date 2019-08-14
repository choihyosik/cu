package com.gd25.dto;

import java.sql.Date;

public class StockVO {
	private int stockCode;
	private Date sDate;
	private int sCnt;
	private String sBCode;
	
	
	
	public StockVO(int stockCode, Date sDate, int sCnt, String sBCode) {
		
		this.stockCode = stockCode;
		this.sDate = sDate;
		this.sCnt = sCnt;
		this.sBCode = sBCode;
	}


	//재고 조회를 위한 생성자
	public StockVO(Date sDate, int sCnt) {
		this.sDate = sDate;
		this.sCnt = sCnt;
	}



	public int getStockCode() {
		return stockCode;
	}



	public void setStockCode(int stockCode) {
		this.stockCode = stockCode;
	}



	public Date getsDate() {
		return sDate;
	}



	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}



	public int getsCnt() {
		return sCnt;
	}



	public void setsCnt(int sCnt) {
		this.sCnt = sCnt;
	}



	public String getsBCode() {
		return sBCode;
	}



	public void setsBCode(String sBCode) {
		this.sBCode = sBCode;
	}



	@Override
	public String toString() {
		return "Stock [stockCode=" + stockCode + ", sDate=" + sDate + ", sCnt=" + sCnt + ", sBCode=" + sBCode + "]";
	}
	
	
	
	
	
}
