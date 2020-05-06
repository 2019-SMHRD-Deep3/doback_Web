package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RecordDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static RecordDAO dao;
	public static RecordDAO getDAO() {
		if(dao == null) {
			dao = new RecordDAO();
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

	public int insertRecord(RecordDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndrecord values(rec_seq.nextval,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getRecord());
			psmt.setInt(2, dto.getWordnum());
			psmt.setString(3, dto.getRecorddate());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public RecordDTO findRecord(RecordDTO dto) {
		RecordDTO info = null;
		
		String f_record;
		int f_vocanum;
		int f_recordnum;
	    int f_idnum;
	    String f_recorddate;
	    try {
	    	getConnection();
	 	    String sql = "select * from yndrecord where recordnum=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getRecordnum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				f_record = rs.getString("record");

				f_vocanum = rs.getInt("vocanum");
				f_recordnum = rs.getInt("recordnum");
				info = new RecordDTO(f_recordnum, f_vocanum,f_record);

				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
	   
	    
	    
		return info;
	}
	
	
	public int insert(String record, int vocanum, int idnum) {
		
		int cnt = 0;
		
		try {
	    	getConnection();
	 	    String sql = "insert into YNDRECORD values(REC_SEQ.nextval, ?, ?, to_char(sysdate,'yyyy.mm.dd hh24:mi'),?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,record);
			psmt.setInt(2,vocanum);
			psmt.setInt(3,idnum);
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public int select(String recode) {
		
		int recordnum = 0;
		try {
	    	getConnection();
	 	    String sql = "select recordnum from YNDRECORD where = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,recode);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				recordnum = rs.getInt(1);
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return recordnum;
	}
}
