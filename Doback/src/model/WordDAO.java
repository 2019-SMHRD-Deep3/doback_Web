package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class WordDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static WordDAO dao;
	private WordDAO() {
		
	}
	
	public static WordDAO getDAO() {
		if(dao == null) {
			dao = new WordDAO();
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

	public int insertWord(WordDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndword values(wor_seq.nextval,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getWord());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public WordDTO findWord(WordDTO dto) {
		WordDTO info = null;
		
		String f_word;
	   
	    try {
	    	getConnection();
	 	    String sql = "select * from yndword where wordnum=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getWordnum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				f_word = rs.getString("word");
				
				
				info = new WordDTO(dto.getWordnum(), f_word);
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
	   
	    
	    
		return info;
	}

}
