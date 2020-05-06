package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private static MemberDAO dao;
	private MemberDAO() {
		
	}
	
	public static MemberDAO getDAO() {
		if(dao == null) {
			dao = new MemberDAO();
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

	public int join(MemberDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into member values(id_seq.nextval,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getGender());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return cnt;

	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		
		String l_id = null;
		String l_pw = null;
		String l_email = null;
		String l_tel = null;
	    String l_gender = null;
	    
	   
	    try {
	    	getConnection();
	 	    String sql = "select * from member where id=? and pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				l_id = rs.getString("id");
				l_pw = rs.getString("pw");
				l_email = rs.getString("email");
				l_tel = rs.getString("tel");
				l_gender = rs.getString("gender");
				
				info = new MemberDTO(l_id,l_pw,l_email,l_tel,l_gender);

				
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
	   
	    
	    
		return info;
	}

}
