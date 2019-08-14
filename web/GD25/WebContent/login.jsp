<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./js/jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<title>GD25</title>
<style>
* {
	margin : 0px;
	padding : 0px;
	box-sizing: border-box;
}
html, body {
	height: 100%;
}
#wrap {
	height: 100%;
	background-color: black;
	position : relative;
}
.container {
	max-width: 480px;
    height: 462px;
	background-color: #f4f5f6;
	position : relative;
	top : 200px;
	border-radius: 15px;
}
.logo{
	text-align: center;
}
#id {
	position : absolute;
	left : 60px;
	top : 149px;
	width : 400px
}
#pwd {
	position : absolute;
	left : 60px;
	top : 235px;
	width : 400px
}
.userImg, .lockImg {
	display : inline;
	width : 28px;
	position : absolute;
	left : 25px;
}
.userImg {
	position : absolute;
	left : 25px;
	top : 155px;
}
.lockImg {
	position : absolute;
	left : 25px;
	top : 240px;
}
.loginbtn {
	position :absolute;
	bottom : 100px;
	margin-top : 5px;
	display: block;
    padding: 12px;
    border: none;
    border-radius: 7px;
    font-size: 32px;
    text-align: center;
    width : 450px;
}
.register {
	position : absolute;
	bottom : 50px;
	left : 100px;
}

.forgot {
	position : absolute;
	bottom : 50px;
	right : 100px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<h1 class="logo animated fadeInDown delay-08s">
				<img src="./img/logo.png" style="width:50%;"/>
			</h1>
			<form method="post" action="#">
				<div class="form-group">
					<!-- <label for="id">아이디:</label> -->
					<img src="./img/user.png" class="userImg"/>
					<input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요.." name="id"/>
				</div>
				<div class="form-group">
					<!-- <label for="pwd">비밀번호:</label> -->
					<img src="./img/lock.png" class="lockImg"/>
					<input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력 하세요.." name="pwd"/>
				</div>
				<div class="action">
					<button type="submit" class="btn btn-primary loginbtn">로그인</button>
					<span class="register">
						<a class="registerWorker">회원 가입</a>
					</span>
					<span class="forgot">
						<a class="forgotWorker">비밀번호 찾기</a>
					</span>
				</div>
			</form>
		</div>
	</div>
</body>
</html>