<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 로그인 웹 사이트</title>
</head>
<body>
    <!-- 우측 네비게이션 바(2개면 =) -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expended="false">			    
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- 왼쪽 11시 방향 TEXT -->
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		
		
		<!-- 왼쪽 11시 방향 메인, 게시판 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		    <ul class="nav navbar-nav">
		        <li><a href="main.jsp">메인</a><li>
		        <li><a href="bbs.jsp">게시판</a><li>
		    </ul>
		    
		    <!-- 오른쪽에 넣기 위한 리스트  -->
		    <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle"
		            data-toggle="dropdown" role="button" aria-haspopup="true"
		            aria-expanded="false">접속하기<span class="caret"></span></a>
		            
		         <!-- 오른쪽 드랍다운 클릭시 로그인, 회원가입 -->    
		        <ul class="dropdown-menu">
		            <li class="active"><a href="login.jsp">로그인</a><li> <!-- active : 하나의 페이지만 존재하며 파란색 표시 -->
		            <li><a href="join.jsp">회원가입</a><li>
		    </ul>
	    </div>
    </nav>	
    
    <!-- 회원가입 Form  -->
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="jumbotron" style="padding-top: 20px">
                   
                <!-- 회원가입 Form method: post (주소창에 나오는 쿼리값을 숨김)-->
                <!-- loginAction.jsp 으로 아이디와 비밀번호 값을 보냄 -->
                <form method="post" action="loginAction.jsp">
                    <h3 style="text-align: center;">로그인 화면</h3>
                    
                    <!-- ★매우 중요★ name은 DB 컬럼명 -->       
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                    </div>                  
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                    </div>
                    <input type="submit" class="btn btn-primary form-control" value="로그인">        
                </form>
            </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>