package com.koreait.board;

public class BoardVO { //값 오브젝트 value object
	// 시용자 정의 객체 
	private int iboard;
	private String title;
	private String ctnt;
	
	//
	public int getIboard() {
		return iboard;
	}
	public void setIboard(int iboard) {
		this.iboard = iboard;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCtnt() {
		return ctnt;
	}
	public void setCtnt(String ctnt) {
		this.ctnt = ctnt;
	}
	
	//생성자, 메소드(setter)를 통해서 은닉화된 것에 값을 넣을 수 있다. 
	//메소드(getter)
	
	
}
