package user;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	/* Auto Library : Ctrl + Shift + O */
	/* writeAction.jsp를 위한 컨트롤러 */
	
	
	/* JDBC를 통해 DB 연결 */
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
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
	
	/* 로그인 */	 
	/* login.jsp 회원가입Form 에서 선언한 name값이 여기에 들어감 */
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL); // 위에서 선언한 쿼리 삽입
			pstmt.setString(1, userID); // SQL 인젝션 방어 기법 -> ?를 default로 넣은 후 ?에 userID 값으로 덮어줌
			rs = pstmt.executeQuery(); // 실행 결과 값을 rs에 넣어줌
			
			// 결과가 있는 경우
			if (rs.next()) {
				// DB에 저장되어 있는 userPassword 값과 로그인 화면에서 입력한 비밀번호(Password)가 동일하다면
				if(rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				}
				else 
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 존재하지 않음 		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류 
	}
	
	
	/* 회원가입 */	 
	/* user > User.java의 인스턴스 대로 값을 넣어줌 */
    public int join(User user) {
    	String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		pstmt.setString(1, user.getUserID());
    		pstmt.setString(2, user.getUserPassword());
    		pstmt.setString(3, user.getUserName());
    		pstmt.setString(4, user.getUserGender());
    		pstmt.setString(5, user.getUserEmail());
    		return pstmt.executeUpdate(); // INSERT 문의 결과는 반드시 0 이상의 값 반환
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return -1; // 데이터베이스 오류 
    }
}