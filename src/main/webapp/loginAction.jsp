<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Import Class -->
<%@ page import="user.UserDAO" %>

<!-- java Script Use -->
<%@ page import="java.io.PrintWriter" %> 
<% request.setCharacterEncoding("UTF-8"); %>

<!-- java Beans 활용 user > User.java -->
<!-- scope:"page" 를 통해 현재 페이지 내에서만 java Beans 활용 user > User.java -->
<jsp:useBean id="user" class="user.User" scope="page" />

<!-- login.jsp 에서 넘겨준 name 값들을 받아서 userID, userPassword가 저장됨 -->
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 액션 페이지</title>
</head>
<body>
	<%
	    /* 세션을 통해 userID를 확인 */
        String userID = null;
	    if (session.getAttribute("userID") != null) {
	    	userID = (String) session.getAttribute("UserID"); // userID에 세션 UserID 값을 넣어줌
	    }
	    
	    if (userID != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
	    }
	    
	    // login.jsp 에서 입력한 ID, PWD값을 가져와서 로그인 
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		
		/* 로그인 성공 - 페이지 이동*/ 
		if (result == 1) {
			session.setAttribute("userID", user.getUserID()); // 해당 회원의 userID를 세션값에 넣어줌
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		
		/* 로그인 실패 - 비밀번호 오류 */
		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		/* 로그인 실패 - 아이디 오류 */
		else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		/* 로그인 실패 - 데이터베이스 오류 */
		else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>