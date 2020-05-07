package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EduHistoryDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static EduHistoryDAO dao;
	
	public static EduHistoryDAO getDAO() {
		if(dao == null) {
			dao = new EduHistoryDAO();
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

	public int insertEduHistory(EduHistoryDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndeduhistory values(his_seq.nextval,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getEdunum());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public EduHistoryDTO findEduHistory(EduHistoryDTO dto) {
		EduHistoryDTO info = null;
		
		int f_edunum;
	   
	    try {
	    	getConnection();
	 	    String sql = "select * from yndeduhistory where historynum=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getHistorynum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				f_edunum = rs.getInt("edunum");
				
				
				info = new EduHistoryDTO(dto.getHistorynum(), f_edunum);
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
	   
	    
	    
		return info;
	}
	
}
