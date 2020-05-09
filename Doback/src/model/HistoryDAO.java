package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class HistoryDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static HistoryDAO dao;
	
	public static HistoryDAO getDAO() {
		if(dao == null) {
			dao = new HistoryDAO();
		}
		return dao;
	}
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
	public ArrayList<HIstoryDTO> selectHisto(int f_idnum) {
		ArrayList<HIstoryDTO> hdto = new ArrayList<HIstoryDTO>();
		try {
			getConnection();
			String sql ="select recorddate, word1, word2, word3, sentence1, sentence2, allsim, uk, us from yndeducation join yndrecord on yndrecord.recordnum = yndeducation.recordnum where yndeducation.idnum = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, f_idnum);
			rs= psmt.executeQuery();
			while(rs.next()) {
				HIstoryDTO info = new HIstoryDTO(rs.getString(1), rs.getInt(2), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8));
				hdto.add(info);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return hdto;
	}
	
	
	
}
