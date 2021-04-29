package com.koreait.board3;

import java.sql.Connection;
import java.sql.PreparedStatement;

//Data Access Object (DB담당)
public class BoardDAO {
	// 글등록 
	public static int insertBoard(BoardVO3 vo) {
		Connection con = null;
		PreparedStatement ps = null;
		
		String sql = "INSERT INTO t_board"
				+ "(title, ctnt)"
				+ "VALUES"
				+ "(?,?)"; //대소문자 구분 안함 -> // (1, "안녕")ps.setInt(1,1); ps.setInt(2,"안녕");
		
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getCtnt());
			//ps.setInt(1,1);
			//ps.setInt(2,"안녕");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(con, ps); //무조건 닫아줘야함
		}
		
		
		return 0;
		
	}
}
