package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EducationDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static EducationDAO dao;
	
	public static EducationDAO getDAO() {
		if(dao == null) {
			dao = new EducationDAO();
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

	public int insertEducation(EducationDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndeducation values(edu_seq.nextval,?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getWord1());
			psmt.setInt(2, dto.getWord2());
			psmt.setInt(3, dto.getWord3());
			psmt.setInt(4, dto.getSentence1());
			psmt.setInt(5, dto.getSentence2());
			psmt.setInt(6, dto.getAllsim());
			psmt.setInt(7, dto.getUk());
			psmt.setInt(8, dto.getUs());
			psmt.setInt(9, dto.getRecordnum());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public EducationDTO findEducation(EducationDTO dto) {
		EducationDTO info = null;
		
		int f_word1;
		int f_word2;
		int f_word3;
		int f_sentence1;
		int f_sentence2;
		int f_allsim;
		int f_uk;
		int f_us;

		int f_recordnum;
	   
	    try {
	    	getConnection();
	 	    String sql = "select * from yndeducation where edunum=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,dto.getEdunum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				f_word1 = rs.getInt("word1");
				f_word2 = rs.getInt("word2");
				f_word3 = rs.getInt("word3");
				f_sentence1 = rs.getInt("sentence1");
				f_sentence2 = rs.getInt("sentence2");
				f_allsim = rs.getInt("allsim");
				f_uk = rs.getInt("uk");
				f_us = rs.getInt("us");

				f_recordnum = rs.getInt("recordnum");
				
				
				info = new EducationDTO(f_word1, f_word2, f_word3, f_sentence1, f_sentence2,
						f_allsim, f_uk, f_us, f_recordnum);
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return info;
	}

	public int insertdata(int word1, int word2, int word3, int sentence1, int sentence2, int allstm, int uk, int us, int recordnum) {
		
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into yndeducation values(edu_seq.nextval,?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, word1);
			psmt.setInt(2, word2);
			psmt.setInt(3, word3);
			psmt.setInt(4, sentence1);
			psmt.setInt(5, sentence2);
			psmt.setInt(6, allstm);
			psmt.setInt(7, uk);
			psmt.setInt(8, us);
			psmt.setInt(9, recordnum);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
		
		
	}

}
