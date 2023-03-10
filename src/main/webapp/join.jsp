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
		        <li><a href="bbs.jsp">게시판</a><li>
		    </ul>
		    
		    <!-- 오른쪽에 넣기 위한 리스트  -->
		    <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle"
		            data-toggle="dropdown" role="button" aria-haspopup="true"
		            aria-expanded="false">접속하기<span class="caret"></span></a>
		        <ul class="dropdown-menu">
				<li><a href="login.jsp">로그인</a></li>
				<li class="active"><a href="join.jsp">회원가입</a></li>
		    </ul>
	    </div>
    </nav>	
    
    <!-- 회원가입 Form  -->
    <!-- login.jsp 복사 해서 아래 부분만 수정 -->
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="jumbotron" style="padding-top: 20px">
            
                <!-- 회원가입 Form method: post (주소창에 나오는 쿼리값을 숨김)-->
                <!-- joinAction.jsp 으로 아이디와 비밀번호 값을 보냄 -->
                <form method="post" action="joinAction.jsp">
                    <h3 style="text-align: center;">회원가입 화면</h3>
                    
                    <!-- ★매우 중요★ name은 DB 컬럼명 -->                               
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                    </div>
                    
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                    </div>
                    
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
                    </div>

					<!-- 성별 선택 -->
                    <div class="form-group" style="text-align: center;">
                         <div class="btn-group" data-toggle="buttons">
                             <label class="btn btn-primary active">
                                 <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                             </label>                         
                             <label class="btn btn-primary">
                                 <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
                             </label>                             
                         </div>
                    </div>
                       
                    <!-- 이메일 입력 -->        
                    <!-- ★매우 중요★ name은 DB 컬럼명 -->                                         
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
                    </div>
                        
                     <!-- 버튼명(value) : 회원가입 -->                                                       
                    <input type="submit" class="btn btn-primary form-control" value="회원가입">        
                </form>
            </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>