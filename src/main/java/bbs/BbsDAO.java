package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/* writeAction.jsp에서 글쓴 데이터들을 DB에 넣어주기 위한 용도 */
public class BbsDAO {

	/* JDBC를 통해 DB 연결 */	 
	private Connection conn;
	private ResultSet rs;
	
	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBS";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword); 

		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/* 게시판 글쓰기 위한 함수들 */
	/* 게시글 작성 시 현재 시간을 가져와서 넣기 위한 기능 */
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery(); // 쿼리 수행 후 결과를 넣어줌
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
		    e.printStackTrace();	
		}
		return ""; // 데이터베이스 오류
	}
	
	/* 게시판 정렬 기능 */
	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery(); // 쿼리 수행 후 결과를 넣어줌
			if (rs.next()) {
				return rs.getInt(1) + 1; 
			}
			return 1; // 첫 번째 게시글인 경우
			
		} catch (Exception e) {
		    e.printStackTrace();	
		}
		return -1; // 데이터베이스 오류
	}
	
	/* 게시판 작성 기능 */
	public int write(String bbsTitle, String userID, String bbsContent) {
    	String SQL = "INSERT INTO BBS (bbsID,  bbsTitle,  userID,  bbsDate,  bbsContent,  bbsAvailable) VALUES(?,  ?,  ?,  ?,  ?,  ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext());
			pstmt.setString(2,  bbsTitle);
			pstmt.setString(3,  userID);
			pstmt.setString(4,  getDate());
			pstmt.setString(5,  bbsContent);
			pstmt.setInt(6,  1); // bbsAvailable : 1 (게시판 삭제 안 된 경우), 0 (게시판 삭제 된 경우)
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
		    e.printStackTrace();	
		}
		return -1; // 데이터베이스 오류
	}
}
