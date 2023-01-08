<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판 페이지</title>
</head>
<body>

    <!-- 로그인이 되었을 경우 -->
    <%
        String userID = null;
        if (session.getAttribute("userID") != null) {
        	userID = (String) session.getAttribute("userID");
        }
    %>
    
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expended="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		    <ul class="nav navbar-nav">
		        <li><a href="main.jsp">메인</a><li>
		        <li class="active"><a href="bbs.jsp">게시판</a><li>
		    </ul>
		    
		    <!-- 로그인이 안 됐을 경우 -->
		    <%
		        if(userID == null) {
        	%>
			    <!-- 오른쪽에 넣기 위한 리스트  -->
			    <ul class="nav navbar-nav navbar-right">
			        <li class="dropdown">
			            <a href="#" class="dropdown-toggle"
			            data-toggle="dropdown" role="button" aria-haspopup="true"
			            aria-expanded="false">접속하기<span class="caret"></span></a>
			            <ul class="dropdown-menu">
			                <li><a href="login.jsp">로그인</a><li> <!-- active : 하나의 페이지만 존재하며 파란색 표시 -->
			                <li><a href="join.jsp">회원가입</a><li>
			            </ul>
			        </li>
		        </ul>
		    <%   
		    
		        } 
		    
		        else {
	        %>	
			    <!-- 오른쪽에 넣기 위한 리스트  -->
			    <ul class="nav navbar-nav navbar-right">
			        <li class="dropdown">
			            <a href="#" class="dropdown-toggle"
			            data-toggle="dropdown" role="button" aria-haspopup="true"
			            aria-expanded="false">회원관리<span class="caret"></span></a>
			            <ul class="dropdown-menu">
			                <li><a href="logoutAction.jsp">로그아웃</a><li> <!-- active : 하나의 페이지만 존재하며 파란색 표시 -->
			            </ul>
			        </li>
		        </ul>        
	        <%
		        }
		    %>
	    </div>
    </nav>	
    
    <!-- 해당 부분만 코드 수정 -->
    <div class="container">
        <div class="row">
          <form method="post" action="writeAction.jsp">
             <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd"> <!-- 테이블 짝수,홀수 번갈아가면서 저장 -->
       			  <thead>
         		    <tr>
           		      <th colspan=2 style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>                   
         		   </tr>
       			  </thead>
         
       			  <!-- tbody : 더미데이터로 표의 결과를 볼 수 있음 -->
       			  <!-- textarea : 장문으로 무언갈 쓰기 위한 타입 -->                
     		     <tbody>
        	    	 <tr>
               			  <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
           			 </tr>
           			 
           			 <tr>
              			  <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height : 350px"></textarea></td>
          			 </tr>
        		</tbody>
     		</table>
  		        <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
     		
       	  </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>