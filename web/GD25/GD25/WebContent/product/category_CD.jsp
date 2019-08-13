<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 수정</title>

<script src="../js/jquery.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/gnb.css">
<script src="../js/bootstrap.min.js"></script>
<script>
	function showClock() {
		var currentDate = new Date();
		var outputClock = $("#currenDate");
		var msg = currentDate.getFullYear() + "년 ";
		msg += currentDate.getMonth() + 1 + "월 ";
		msg += currentDate.getDate() + "일 ";

		if (currentDate.getHours() >= 0 && currentDate.getHours() < 10) {

			msg += "0" + currentDate.getHours() + "시";

		} else {

			msg += currentDate.getHours() + "시 ";
		}

		if (currentDate.getMinutes() >= 0 && currentDate.getMinutes() < 10) {

			msg += "0" + currentDate.getMinutes() + "분 ";
		} else {

			msg += currentDate.getMinutes() + "분 ";
		}

		if (currentDate.getSeconds() >= 0 && currentDate.getSeconds() < 10) {

			msg += "0" + currentDate.getSeconds() + "초";
		} else {

			msg += currentDate.getSeconds() + "초";
		}

		outputClock.text(msg);
		setTimeout(showClock, 1000);
	}
</script>
<style>
body {
	font-size: 20px;
}

header {
	width: 100%;
}

#info {
	position: relative;
}

#workerInfo {
	display: inline-block;
}

#menu {
	position: relative;
	display: inline-block;
	left: 50%;
}

#barcode {
	width: 100%;
	padding-top: 50px;
	text-align: center;
}

section {
	margin-top: 20px;
	overflow: hidden;
}

section img {
	float: left;
	width: 48%;
}

section img+img {
	margin-left: 4%;
}
.form-control{
	
	margin-top: 30px;
}
.list-group{
	width: 300px;
	margin-right: 20px;
	margin-bottom: 20px;
}
#catinsert, #catdelete, #classinsert, #classdelete{
	margin-top: 30px;
}

#bnewcate{
	display: block;
	margin-top: 20px;
}
#newcate{
	display: block;
}
#middle{
	display: inline-block;
	float: left;
}

}
</style>
</head>

<body onload="showClock()">
	<div class="wrap">
		<header>
			<div class="inner">
				<h2>
					<a href="./index.jsp"><img src="../img/logo.png" / width="100px" />편의점</a>
				</h2>
				<div id="info">
					<div id="workerInfo">
						근무자 : <span id="workerName"><strong>홍길동</strong></span>
					</div>
					<div id="menu">
						<button type="button" class="btn btn-light">로그아웃</button>
						<button type="button" class="btn btn-light">회원가입</button>
					</div>
					<div>
						현재 시각 : <span id="currenDate"></span>
					</div>
				</div>
			</div>
		</header>
		<nav class="navbar navbar-expand-sm">
			<div class="inner">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link" href="../pay/cart.jsp" id="navbardrop"
						> 결제 </a>
						</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 발주 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../order/stock.jsp">재고 조회</a> <a
								class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item"
								href="#">입고 조회</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="product_CR.jsp">상품조회/등록</a>
							<a class="dropdown-item" href="product_UD.jsp">상품 수정/삭제</a>
							<a class="dropdown-item" href="category_CD.jsp">카테고리 등록/삭제</a> 
							<a class="dropdown-item" href="disposal_RD.jsp">폐기조회/삭제</a> 
							<a class="dropdown-item" href="disposal_C.jsp">폐기 등록</a>
						</div></li>
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 관리 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../management/worker_CRUD.jsp">직원관리</a>
							<a class="dropdown-item" href="../management/worker_History.jsp">근무일지</a>
						</div></li>
					<!-- Dropdown -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 매출 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a> <a
								class="dropdown-item" href="#">Link 2</a> <a
								class="dropdown-item" href="#">Link 3</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 영수증 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a> <a
								class="dropdown-item" href="#">Link 2</a> <a
								class="dropdown-item" href="#">Link 3</a>
						</div></li>
				</ul>
			</div>
		</nav>
		<div class="inner">
			<div id="barcode">
				바코드 : <input type="text" name="barcode" />
			</div>
			<section>
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#category1">대분류</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#category2">중분류</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="container tab-pane active" id="category1">
						<select class="form-control" id="bigcate">
							<option value="option1">등록</option>
							<option value="option2">삭제</option>
						</select>
						<form action="#" method="post">
							<div id="catinsert">
								<ul class="list-group">
								  <li class="list-group-item">대분류1</li>
								  <li class="list-group-item">대분류2</li>
								  <li class="list-group-item">대분류3</li>
								  <li class="list-group-item">대분류4</li>
								  <li class="list-group-item">대분류5</li>
								  <li class="list-group-item">대분류6</li>
								  <li class="list-group-item">대분류7</li>
								</ul>
								<div class="newcatebtn">
									<input type="text" class="form-control" id="newcate"/>
									<button type="button" class="btn btn-primary" id="bnewcate">등록</button>
								</div>
							</div>
							<div id="catdelete">
								<div class="list-group">
								  <a href="#" class="list-group-item">대분류1</a>
								  <a href="#" class="list-group-item">대분류2</a>
								  <a href="#" class="list-group-item">대분류3</a>
								  <a href="#" class="list-group-item">대분류4</a>
								  <a href="#" class="list-group-item">대분류5</a>
								  <a href="#" class="list-group-item">대분류6</a>
								  <a href="#" class="list-group-item">대분류7</a>
								</div>
								<button type="button" class="btn btn-primary" id="bnewcate">삭제</button>
							</div>	
						</form>
					</div>
					<div class="container tab-pane fade" id="category2">
						<select class="form-control" id="bigcate">
							<option value="option1">등록</option>
							<option value="option2">삭제</option>
						</select>
						<form action="#" method="post">
							<div id="classinsert">
								<div class="list-group" id="middle">
								  <a href="#" class="list-group-item">대분류1</a>
								  <a href="#" class="list-group-item">대분류2</a>
								  <a href="#" class="list-group-item">대분류3</a>
								  <a href="#" class="list-group-item">대분류4</a>
								  <a href="#" class="list-group-item">대분류5</a>
								  <a href="#" class="list-group-item">대분류6</a>
								  <a href="#" class="list-group-item">대분류7</a>
								</div>
								<ul class="list-group">
								  <li class="list-group-item">중분류1</li>
								  <li class="list-group-item">중분류2</li>
								  <li class="list-group-item">중분류3</li>
								  <li class="list-group-item">중분류4</li>
								</ul>
								<div class="newcatebtn">
									<input type="text" class="form-control" id="newcate"/>
									<button type="button" class="btn btn-primary" id="bnewcate">등록</button>
								</div>
							</div>
							<div id="classdelete">
								<div class="list-group" id="middle">
								  <a href="#" class="list-group-item">대분류1</a>
								  <a href="#" class="list-group-item">대분류2</a>
								  <a href="#" class="list-group-item">대분류3</a>
								  <a href="#" class="list-group-item">대분류4</a>
								  <a href="#" class="list-group-item">대분류5</a>
								  <a href="#" class="list-group-item">대분류6</a>
								  <a href="#" class="list-group-item">대분류7</a>
								</div>
								<div class="list-group">
								  <a href="#" class="list-group-item">중분류1</a>
								  <a href="#" class="list-group-item">중분류2</a>
								  <a href="#" class="list-group-item">중분류3</a>
								  <a href="#" class="list-group-item">중분류4</a>
								</div>
								<button type="button" class="btn btn-primary" id="bnewcate">삭제</button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
<script>

	document.getElementById("catinsert").style.display = "block";
	document.getElementById("catdelete").style.display = "none";
	
	
	$('#category1').change(function() {
		var state = $('#category1 option:selected').val();
		if (state == 'option1') {
			$("#catinsert").show();
			$("#catdelete").hide();
	
		}
	
		else if (state == 'option2') {
			$("#catinsert").hide();
			$("#catdelete").show();
		}
	})
	
	document.getElementById("classinsert").style.display = "block";
	document.getElementById("classdelete").style.display = "none";
	
	
	$('#category2').change(function() {
		var state = $('#category2 option:selected').val();
		if (state == 'option1') {
			$("#classinsert").show();
			$("#classdelete").hide();
	
		}
	
		else if (state == 'option2') {
			$("#classinsert").hide();
			$("#classdelete").show();
		}
	})

</script>
</html>