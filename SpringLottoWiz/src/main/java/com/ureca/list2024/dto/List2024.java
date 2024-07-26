package com.ureca.list2024.dto;

import java.time.LocalDate;

public class List2024 {
	private int drwNo;
	private LocalDate drwNoDate;
	private int drwtNo1;
	private int drwtNo2;
	private int drwtNo3;
	private int drwtNo4;
	private int drwtNo5;
	private int drwtNo6;
	private int bnusNo;
	
	public List2024() {
		
	}
	
	public List2024(int drwNo, LocalDate drwNoDate,
			int drwtNo1, int drwtNo2, int drwtNo3,
			int drwtNo4, int drwtNo5, int drwtNo6, int bnusNo) {
		super();
		this.drwNo = drwNo;
		this.drwNoDate = drwNoDate;
		this.drwtNo1 = drwtNo1;
		this.drwtNo1 = drwtNo2;
		this.drwtNo1 = drwtNo3;
		this.drwtNo1 = drwtNo4;
		this.drwtNo1 = drwtNo5;
		this.drwtNo1 = drwtNo6;
		this.bnusNo = bnusNo;
	}

	public int getDrwNo() {
		return drwNo;
	}

	public void setDrwNo(int drwNo) {
		this.drwNo = drwNo;
	}

	public LocalDate getDrwNoDate() {
		return drwNoDate;
	}

	public void setDrwNoDate(LocalDate drwNoDate) {
		this.drwNoDate = drwNoDate;
	}

	public int getDrwtNo1() {
		return drwtNo1;
	}

	public void setDrwtNo1(int drwtNo1) {
		this.drwtNo1 = drwtNo1;
	}

	public int getDrwtNo2() {
		return drwtNo2;
	}

	public void setDrwtNo2(int drwtNo2) {
		this.drwtNo2 = drwtNo2;
	}

	public int getDrwtNo3() {
		return drwtNo3;
	}

	public void setDrwtNo3(int drwtNo3) {
		this.drwtNo3 = drwtNo3;
	}

	public int getDrwtNo4() {
		return drwtNo4;
	}

	public void setDrwtNo4(int drwtNo4) {
		this.drwtNo4 = drwtNo4;
	}

	public int getDrwtNo5() {
		return drwtNo5;
	}

	public void setDrwtNo5(int drwtNo5) {
		this.drwtNo5 = drwtNo5;
	}

	public int getDrwtNo6() {
		return drwtNo6;
	}

	public void setDrwtNo6(int drwtNo6) {
		this.drwtNo6 = drwtNo6;
	}

	public int getBnusNo() {
		return bnusNo;
	}

	public void setBnusNo(int bnusNo) {
		this.bnusNo = bnusNo;
	}

	@Override
	public String toString() {
		return "List2024 [drwNo=" + drwNo + ", drwNoDate=" + drwNoDate + ", drwtNo1=" + drwtNo1 + ", drwtNo2=" + drwtNo2
				+ ", drwtNo3=" + drwtNo3 + ", drwtNo4=" + drwtNo4 + ", drwtNo5=" + drwtNo5 + ", drwtNo6=" + drwtNo6
				+ ", bnusNo=" + bnusNo + "]";
	}
	
	
	
	
	

}
