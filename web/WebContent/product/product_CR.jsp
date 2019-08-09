<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

tr {

height: 50px;

}
</style>
</head>

<body onload="showClock()">
	<div class="wrap">
		<header>
			<div class="inner">
				<h2>
					<a href="../index.jsp"><img src="../img/CU.svg" / width="100px" />편의점</a>
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
							<a class="dropdown-item" href="product_CR.jsp">상품 조회/등록</a> <a
								class="dropdown-item" href="disposal_RD.jsp">폐기 조회/삭제</a> <a
								class="dropdown-item" href="disposal_C.jsp">폐기 등록</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 결제 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a> <a
								class="dropdown-item" href="#">Link 2</a> <a
								class="dropdown-item" href="#">Link 3</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 관리 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a> <a
								class="dropdown-item" href="#">Link 2</a> <a
								class="dropdown-item" href="#">Link 3</a>
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
			<section>
		<div class="container mt-3">

			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">조회</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu1">등록</a></li>

			</ul>


			<div class="tab-content">
				<div id="home" class="container tab-pane active">
					<br>
					<!--상품 조회  -->
					
					
					<select class="form-control" id="sel1" name="sellist1">
						
						<option value="option1">바코드 조회</option>
						<option value="option2">상품명 조회</option>
					</select>
					<form action="#" method="post">
						<div id="barcode">
							<br />
							<table class="table table-success">
								<tr>
									<td>바코드:</td>
									<td><input type="text" class="form-control"
										name="barcode" /></td>
								</tr>
								<tr>
									<td>상품명:</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="product" /></td>
								</tr>
								<tr>
									<td>단가:</td>
									<td><input type="number" class="form-control"
										readonly="readonly" name="price" /></td>
								</tr>
								<tr>
									<td>분류 정보(대):</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="big" /></td>
								</tr>
								<tr>
									<td>분류 정보(중):</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="middle" /></td>
								</tr>
								<tr>
									<td>재고</td>
									<td><input type="number" class="form-control"
										readonly="readonly" name="stock" /></td>
								</tr>
								<tr>
									<td>미성년자 판매 여부:</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="child" /></td>
								</tr>
								<tr>
									<td style="text-align:left"><input type="button" class="btn btn-dark" value="이전"
			onclick="history.back();" id="back"></td>
									<td style="text-align:right"><input type="submit" class="btn btn-dark" value="조회"
										id="button"></td>
								</tr>
							</table>
						</div>

						<div id="product">
							<br />
							<table class="table table-success">
								<tr>
									<td>상품명:</td>
									<td><input type="text" class="form-control" name="product" /></td>
								</tr>
								<tr>
									<td>바코드:</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="barcode" /></td>
								</tr>
								<tr>
									<td>단가:</td>
									<td><input type="number" class="form-control"
										readonly="readonly" name="price" /></td>
								</tr>
								<tr>
									<td>분류 정보(대):</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="big" /></td>
								</tr>
								<tr>
									<td>분류 정보(중):</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="middle" /></td>
								</tr>
								<tr>
									<td>재고</td>
									<td><input type="number" class="form-control"
										readonly="readonly" name="stock" /></td>
								</tr>
								<tr>
									<td>미성년자 판매 여부:</td>
									<td><input type="text" class="form-control"
										readonly="readonly" name="child" /></td>
								</tr>
								<tr>
									<td style="text-align:left"><input type="button" class="btn btn-dark" value="이전"
			onclick="history.back();" id="back"></td>
									<td style="text-align:right"><input type="submit" class="btn btn-dark" value="조회"
										id="button"></td>
								</tr>
							</table>

						</div>



					</form>
				</div>
				<div id="menu1" class="container tab-pane fade">
					<br>
					<!--상품 등록  -->
					
					<form action="#" method="post">
					<table class="table table-success">
								<tr>
									<td>바코드:</td>
									<td><input type="text" class="form-control"
										name="barcode" /></td>
								</tr>
								<tr>
									<td>상품명:</td>
									<td><input type="text" class="form-control"
										 name="product" /></td>
								</tr>
								<tr>
									<td>단가:</td>
									<td><input type="number" class="form-control"
										 name="price" /></td>
								</tr>
								<tr>
									<td>분류 정보(대):</td>
									<td><input type="text" class="form-control"
										 name="big" /></td>
								</tr>
								<tr>
									<td>분류 정보(중):</td>
									<td><input type="text" class="form-control"
										 name="middle" /></td>
								</tr>
								<tr>
									<td>재고</td>
									<td><input type="number" class="form-control"
										 name="stock" /></td>
								</tr>
								<tr>
									<td>미성년자 판매 여부:</td>
									<td><input type="text" class="form-control"
										 name="child" /></td>
								</tr>
								<tr>
									<td style="text-align:left"><input type="button" class="btn btn-dark" value="이전"
			onclick="history.back();" id="back"></td>
									<td style="text-align:right"><input type="submit" class="btn btn-dark" value="등록"
										id="button"></td>
								</tr>
							</table>
							</form>
				</div>

			</div>
		</div>


	</section>
			
			
		</div>
	</div>
	<script>
	//상품 조회시 바코드냐 상품명이냐
	document.getElementById("barcode").style.display = "block";
	document.getElementById("product").style.display = "none";

	//셀렉트 박스 옵션 변경시 레이아웃 다르게 나오기
	$('#sel1').change(function() {
		var state = $('#sel1 option:selected').val();
		if (state == 'option1') {
			$("#barcode").show();
			$("#product").hide();

		}

		else if (state == 'option2') {
			$("#barcode").hide();
			$("#product").show();

		}

		

	})	
	
	
	</script>
</body>
</html>