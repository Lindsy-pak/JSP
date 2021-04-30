package com.koreait.board3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//Data Access Object (DB담당)
public class BoardDAO {
	// 글등록 역할 메서드 (db)와 연결 
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
			
			System.out.println(ps.toString());
			//ps.setInt(1,1);
			//ps.setInt(2,"안녕");
			
			return ps.executeUpdate(); //insert update, delete 때 사용, database에서 영향받은 행 1~n: 1이면 한줄 영향받았다는 뜻 
			// executeUpdate의 타입은 int형이다 내가 영향을 준 레코드의 갯수가 나타난다. 
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(con, ps); //무조건 닫아줘야함
		}
		return 0;
		
	}
	public static List<BoardVO3> selBoardList() {
		//레코드 수만큼 반복문이 4번돌아가도록 
//		BoardVO3 vo = new BoardVO3(); //레코드하나를 만들기 위한 방법
//		vo.setIboard(1);
//		vo.setTitle("안녕");
//		vo.setRegdt("2021-10-10");
//		list.add(vo);
//		
//		BoardVO3 vo2 = new BoardVO3();//객체를 레코트 수만큼 만드는 이유는
//		//하나로 객체를 돌려쓰면 결국 마지막 vo3의 내용으로 덮어씌어져서 다 같은 내용이 나온다. 
//		vo2.setIboard(2);
//		vo2.setTitle("Hello");
//		vo2.setRegdt("2021-04-30");
//		list.add(vo2);
//		
//		BoardVO3 vo3 = new BoardVO3();
//		vo3.setIboard(3);
//		vo3.setTitle("반가워");
//		vo3.setRegdt("2021-02-20");
//		list.add(vo3);
		
		List<BoardVO3> list = new ArrayList();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "Select iboard, title, regdt From t_board";
		//sql문에는 세미콜론이 있으면 안된다 !! 
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery(); //select문에서 사용하는 실행문 
			
			
			while(rs.next()) {//next 다음 한줄을 가르키는 메서드 한줄있으면 true가 된다 그러면 while문 실행 next가 커서캐념으로 가르카는 메서드 
				BoardVO3 vo = new BoardVO3();
				list.add(vo); //레코드 하나를 차례대로 반복하면서 호출
				//레코드 수만큼 반복이 되고 마지막 값이 없을 때 false가 되면서 while문을 빠져나온다.
				
				int iboard = rs.getInt("iboard");
				String title = rs.getString("title"); //getString은 레코드 그 행에서 컬럼명이 title인 값을 받아옴 
				String regdt = rs.getString("regdt");
				
				vo.setIboard(iboard);
				vo.setTitle(title);
				vo.setRegdt(regdt);	
//				vo.setIboard(rs.getInt("iboard")); -> 짧은 식 
			}
			
		//rs는 Select iboard, title, regdt From t_board의 결과물을 담고있다. 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(con, ps, rs);
		}
		//getCon()에 throws가 있기 때문에 try catch로 사용해줘야한다. 
		return list;
	}
	public static BoardVO3 selBoard(int iboard) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM t_board WHERE iboard = ?";
				
		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setInt(1,  iboard);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				BoardVO3 vo = new BoardVO3();
				
				String title = rs.getString("title");
				String ctnt = rs.getString("ctnt");
				String regdt = rs.getString("regdt");
				
				vo.setIboard(iboard);
				vo.setTitle(title);
				vo.setCtnt(ctnt);
				vo.setRegdt(regdt);
				
				return vo;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(con, ps, rs);
		}
		return null;
	}
}
