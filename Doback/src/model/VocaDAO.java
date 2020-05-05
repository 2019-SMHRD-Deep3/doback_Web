package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VocaDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static VocaDAO dao;
	private VocaDAO() {
		
	}
	
	public static VocaDAO getDAO() {
		if(dao == null) {
			dao = new VocaDAO();
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

	public int insertVoca(VocaDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndVoca values(wor_seq.nextval,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getVoca());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public VocaDTO findVoca(VocaDTO dto) {
		VocaDTO info = null;
		
		String f_Voca;
	   
	    try {
	    	getConnection();
	 	    String sql = "select * from yndVoca where Vocanum=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getVocanum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				f_Voca = rs.getString("Voca");
				
				
				info = new VocaDTO(dto.getVocanum(), f_Voca);
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	   
	    
	    
		return info;
	}

}
