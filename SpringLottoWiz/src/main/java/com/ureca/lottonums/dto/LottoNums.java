package com.ureca.lottonums.dto;

public class LottoNums {
	private int no;
	private int num1;
	private int num2;
	private int num3;
	private int num4;
	private int num5;
	private int num6;
	
	public LottoNums() {
		
	}
	
	public LottoNums(int no, int num1, int num2, 
			int num3, int num4, int num5, int num6) {
		super();
		this.no = no;
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
		this.num4 = num4;
		this.num5 = num5;
		this.num6 = num6;
	}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no=no;
	}
	
	public int getNum1() {
		return num1;
	}
	
	public void setNum1(int num1) {
		this.num1=num1;
	}
	public int getNum2() {
		return num2;
	}
	
	public void setNum2(int num2) {
		this.num2=num2;
	}
	public int getNum3() {
		return num3;
	}
	
	public void setNum3(int num3) {
		this.num3=num3;
	}
	public int getNum4() {
		return num4;
	}
	
	public void setNum4(int num4) {
		this.num4=num4;
	}
	public int getNum5() {
		return num5;
	}
	
	public void setNum5(int num5) {
		this.num5=num5;
	}
	public int getNum6() {
		return num6;
	}
	
	public void setNum6(int num6) {
		this.num6=num6;
	}

	@Override
	public String toString() {
		return "LottoNums [no=" + no + ", num1=" + num1 + ", num2=" + num2 + ", num3=" + num3 + ", num4=" + num4
				+ ", num5=" + num5 + ", num6=" + num6 + "]";
	}
	
	
	
}
