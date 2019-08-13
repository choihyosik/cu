<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정, 삭제</title>

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

.btn btn-dark{
	position: absolute;
	right: 30px;
}
</style>
</head>

<body onload="showClock()">
	<div class="wrap">
		<header>
			<div class="inner">
				<h2>
					<a href="./index.jsp"><img src="../img/CU.svg" / width="100px" />편의점</a>
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
						</div>
					</li>
					
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
				<div class="container">
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#modify">수정</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#delete">삭제</a>
						</li>
					</ul>
					
					<div class="tab-content">
						<div id="modify" class="container tab-pane active"><br>
						<form action="#" method="post">
							<div id="barcode"><br />
								<table class="table table-success">
									<tr>
										<td>바코드:</td>
										<td><input type="text" class="form-control" name="barcode"/></td>
									</tr>
									<tr>
										<td>상품명:</td>
										<td><input type="text" class="form-control" readonly="readonly" name="product" /></td>
									</tr>
									<tr>
										<td>단가:</td>
										<td><input type="number" class="form-control" name="price" /></td>
									</tr>
									<tr>
										<td>분류 정보(대):</td>
										<td>
											<select>
												<option>대분류1</option>
												<option>대분류2</option>
												<option>대분류3</option>
												<option>대분류4</option>
												<option>대분류5</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>분류 정보(중):</td>
										<td>
											<select>
												<option>중분류1</option>
												<option>중분류2</option>
												<option>중분류3</option>
												<option>중분류4</option>
												<option>중분류5</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>상품설명 :</td>
										<td><input type="number" class="form-control" name="stock"/></td>
									</tr>
									<tr>
										<td>미성년자 판매 여부:</td>
										<td><input type="text" class="form-control" readonly="readonly" name="child"/></td>
									</tr>
									<tr>
										<td>
											<input type="submit" class="btn btn-dark" value="수정" id="button"/>
										</td>
									</tr>
								</table>
							</div>
						</form>
						</div>
						
						<div id="delete" class="container tab-pane fade"><br>
						
						<form action="#" method="post">
							<div id="barcode"><br />
								<table class="table table-success">
									<tr>
										<td>바코드:</td>
										<td><input type="text" class="form-control" name="barcode"/></td>
									</tr>
									<tr>
										<td>상품명:</td>
										<td><input type="text" class="form-control" readonly="readonly" name="product" /></td>
									</tr>
									<tr>
										<td>단가:</td>
										<td><input type="number" class="form-control" readonly="readonly" name="price" /></td>
									</tr>
									<tr>
										<td>분류 정보(대):</td>
										<td><input type="text" class="form-control" readonly="readonly" name="big"/></td>
									</tr>
									<tr>
										<td>분류 정보(중):</td>
										<td><input type="text" class="form-control" readonly="readonly" name="middle"/></td>
									</tr>
									<tr>
										<td>상품설명 :</td>
										<td><input type="number" class="form-control" readonly="readonly" name="stock"/></td>
									</tr>
									<tr>
										<td>미성년자 판매 여부:</td>
										<td><input type="text" class="form-control" readonly="readonly" name="child"/></td>
									</tr>
									<tr>
										<td>
											<input type="submit" class="btn btn-dark" value="삭제" id="button"/>
										</td>
									</tr>
								</table>
							</div>
						</form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
<script>

</script>
</html>