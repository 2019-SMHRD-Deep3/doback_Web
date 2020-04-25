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
	private boolean result;

	private void getConnection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean join(MemberDTO dto) {
		int cnt = 0;

		try {
			getConnection();

			String sql = "insert into member values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getPhone());
			cnt = psmt.executeUpdate();
			if (cnt > 0) {
//				System.out.println("회원가입 성공");
				result = true;
			} else {
//				System.out.println("회원가입 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return result;
	}
	
	public boolean login(MemberDTO dto) {

//		MemberDTO info = null;
//		String login_id = null;
//		String login_pw = null;

		try {
			getConnection();

			String sql = "select * from member where id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
//				login_id = rs.getString(1);
//				login_pw = rs.getString(2);
				result = true;
				
//				info = new MemberDTO(login_id, login_pw);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;

	}

//	public int update(MemberDTO dto) {
//
//		int cnt = 0;
//
//		try {
//			getConnection();
//
//			String sql = "update member set name = ?, pw = ?, tel = ? where email = ?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, dto.getName());
//			psmt.setString(4, dto.getEmail());
//			psmt.setString(2, dto.getPw());
//			psmt.setString(3, dto.getTel());
//			cnt = psmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return cnt;
//	}

}
