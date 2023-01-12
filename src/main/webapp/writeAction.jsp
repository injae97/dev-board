<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<!-- Import Class -->
<%@ page import="bbs.BbsDAO" %>

<!-- java Script Use -->
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- java Beans 활용 user > User.java -->
<!-- scope:"page" 를 통해 현재 페이지 내에서만 java Beans 활용 user > User.java -->
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />

<!-- write.jsp 에서 넘겨준 name 값들을 받아서 userID, userPassword가 저장됨 -->
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 작성 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 
		
		/* 로그인이 되었을 경우 */
		else{
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 누락된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");

				} 
			/* 데이터베이스에 게시글 데이터 저장 */
			else{
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
					
					/* 글쓰기 실패 - 데이터베이스 오류인 경우 */ 
					if(result == -1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다.')");
						script.println("history.back()");
						script.println("</script>");
					}
					
					/* 글쓰기 성공 */ 
					else {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href='bbs.jsp'");
						script.println("</script>");
					}	
				}
		}
	%>
</body>
</html>