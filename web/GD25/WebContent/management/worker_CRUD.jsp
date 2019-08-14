<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 관리</title>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<link rel="stylesheet" href="../css/gnb.css"/>
<script>
	$(document).ready(function() {
		$('tr:odd').click(function (){
			if($(this).next().css("display") == "none") {
				$(this).next().css("display", "table-row");
			} else {
				$(this).next().css("display", "none");
			}
		});
		
			
	});
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

tbody tr:nth-child(even) {
	display : none;
	
}

</style>
</head>

<body onload="showClock()">
	<div class="wrap">
		<header>
			<div class="inner">
				<h2>
					<a href="../index.jsp"><img src="../img/logo.png" / width="100px" />편의점</a>
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
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 발주 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../order/stock.jsp">재고 조회</a>
							<a class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item" href="#">입고 조회</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
								<a class="dropdown-item" href="../product/product_CR.jsp">상품조회/등록</a>
							<a class="dropdown-item" href="../product/product_UD.jsp">상품 수정/삭제</a>
							<a class="dropdown-item" href="../product/category_CD.jsp">카테고리 등록/삭제</a> 
							<a class="dropdown-item" href="../product/disposal_RD.jsp">폐기조회/삭제</a> 
							<a class="dropdown-item" href="../product/disposal_C.jsp">폐기 등록</a>
						</div>
					</li>
					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 관리 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./worker_CRUD.jsp">직원 관리</a>
							<a class="dropdown-item" href="./worker_History.jsp">근무 일지</a>
						</div>
					</li>
					<!-- Dropdown -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 매출 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a>
							<a class="dropdown-item" href="#">Link 2</a>
							<a class="dropdown-item" href="#">Link 3</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 영수증 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a>
							<a class="dropdown-item" href="#">Link 2</a>
							<a class="dropdown-item" href="#">Link 3</a>
						</div>
					</li>
				</ul>
			</div>
		</nav>
		<div class="inner">
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>시급</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>알바생</td>
						<td>편돌이</td>
						<td>8350</td>
					</tr>
					<tr>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input class="btn" type="button" value="수정"/></td>
						<td><input class="btn" type="button" value="삭제"/></td>
					</tr>
					<tr>
						<td>알바생</td>
						<td>편돌이</td>
						<td>8350</td>
					</tr>
					<tr>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input class="btn" type="button" value="수정"/></td>
						<td><input class="btn" type="button" value="삭제"/></td>
					</tr>
					<tr>
						<td>알바생</td>
						<td>편돌이</td>
						<td>8350</td>
					</tr>
					<tr>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input class="btn" type="button" value="수정"/></td>
						<td><input class="btn" type="button" value="삭제"/></td>
					</tr>
					<tr>
						<td>dasd</td>
						<td>편돌이</td>
						<td>8350</td>
					</tr>
					<tr>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input type="text" value=""/></td>
						<td><input class="btn" type="button" value="수정"/></td>
						<td><input class="btn" type="button" value="삭제"/></td>
					</tr>
				</tbody>
				<tfoot></tfoot>
			</table>
		</div>
	</div>
</body>
</html>