<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Import Class -->
<%@ page import="user.UserDAO" %>

<!-- java Script Use -->
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- java Beans 활용 user > User.java -->
<jsp:useBean id="user" class="user.User" scope="page" />

<!-- join.jsp 에서 넘겨준 name 값들을 받아서 userID, userPassword, userName, userGender, userEmail 저장됨 -->
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 액션 페이지</title>
</head>
<body>
	<%
	   /* 이미 회원가입 페이지에서 다시 회원가입 버튼을 눌렀을 때 안되게끔 방지 */
	   String userID = null;
	   if (session.getAttribute("userID") != null) {
	   	userID = (String) session.getAttribute("UserID");
	   }
	   
	   if (userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 회원가입 페이지에 있습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	   }
	   
	    /* 회원가입 중 입력이 되지 않았을 경우 */ 
	    if(user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || 
	    user.getUserGender() == null || user.getUserEmail() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 누락된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");	    	
	    }
	    
	    /* 회원가입 입력을 다 했을 경우 */ 
	    else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user); // userDAO 선언한 join 메서드로 userID, userPassword, userName, userGender, userEmail 값이 들어감
			
			/* 회원가입 실패 - 중복된 아이디인 경우 */ 
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			
			/* 회원가입 성공 */ 
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'main.jsp'");
				script.println("</script>");
			}
	    }
	%>
</body>
</html>