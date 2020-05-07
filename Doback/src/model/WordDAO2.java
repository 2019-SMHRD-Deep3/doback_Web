package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class WordDAO2 {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private static WordDAO2 dao;
	private WordDAO2() {
		
	}
	public static WordDAO2 getDAO2() {
		if(dao == null) {
			dao = new WordDAO2();
		}
		return dao;
	}
	
}
