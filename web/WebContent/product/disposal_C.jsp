<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD:web/WebContent/product/disposal_C.jsp
<title>Insert title here</title>
=======
<title>근무 일지</title>
>>>>>>> 82e22308e32bc3de6863097edb25c644f3594df8:web/WebContent/management/worker_History.jsp

<script src="../js/jquery.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/gnb.css">
<script src="../js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		console.log(currentDate());
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
	
	function currentDate() {
		var today = new Date();
		var output = today.getFullYear() + "-";
		output += "0" + (today.getMonth() + 1) + "-";
		output += "0" + today.getDate();
		console.log(output);
		return output;
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
	text-align: left;
}
/*저장 버튼 오른쪽으로 붙게하기  */
.inner {
	position: relative;
}

#save {
	display: inline-block;
	position: absolute;
	bottom: 0;
	right: 0;
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

.table th {
	width: 96px;
}

.table td {
	width: 120px;
}

/*스크롤 기능은 있되 스크롤은 안보이게 하는 방법   해당 div 태그에는 -ms-overflow-style 을 none으로*/
::-webkit-scrollbar {
	display: none;
}

.container {
	-ms-overflow-style: none;
}
/*
        nav {
            text-align: center;
            background: rgb(147, 103, 189);
            border: 2px solid green;
            border-radius: 15px;
        }

        nav>button {
            margin: 5%;
            width: 30%;
            font-size: 60px;

        }

        a:link {
            color: black;
            text-decoration: none;
        }

        a:visited {
            color: black;
            text-decoration: none;
        }

        a:hover {
            color: greenyellow;
            text-decoration: none;
        }
*/
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
			<<div class="inner">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 발주 </a>
						<div class="dropdown-menu">
<<<<<<< HEAD:web/WebContent/product/disposal_C.jsp
							<a class="dropdown-item" href="../order/stock.jsp">재고 조회</a> <a
								class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item"
								href="#">입고 조회</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./product_CR.jsp">상품
								조회/등록</a> <a class="dropdown-item" href="./disposal_RD.jsp">폐기
								조회/삭제</a> <a class="dropdown-item" href="./disposal_C.jsp">폐기
								등록</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 결제 </a>
=======
							<a class="dropdown-item" href="">재고 조회</a>
							<a class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item" href="#">입고 조회</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../product/product.jsp">상품조회/등록</a>
							<a class="dropdown-item" href="../product/disposalList.jsp">폐기조회/삭제</a>
							<a class="dropdown-item" href="../product/registDisposalFood.jsp">폐기 등록</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 결제 </a>
>>>>>>> 82e22308e32bc3de6863097edb25c644f3594df8:web/WebContent/management/worker_History.jsp
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Link 1</a>
							<a class="dropdown-item" href="#">Link 2</a>
							<a class="dropdown-item" href="#">Link 3</a>
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
<<<<<<< HEAD:web/WebContent/product/disposal_C.jsp
			<table class="table table-bordered" style="margin: 0;">
				<thead>
					<tr class="table-primary">
						<th>대분류</th>
						<th>중분류</th>
						<th>상품명</th>
						<th>수량</th>
						<th>고유바코드</th>
					</tr>
				</thead>
			</table>
			<form action="#" method="post">
				<div class="container"
					style="height: 300px; overflow: auto; margin: 0; padding: 0;">

					<table class="table table-bordered">

						<tbody id="body">
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>
							<tr>
								<td>간편식사</td>
								<td>삼각김밥</td>
								<td>참치마요</td>
								<td>1</td>
								<td>3609031_1</td>
							</tr>


						</tbody>

					</table>
				</div>

				<div id="save">
					<input type="submit" class="btn btn-dark" value="저장" id="button">
				</div>
			</form>
			<div id="barcode">
				바코드 : <input type="text" name="barcode" />
			</div>
=======
			일자 : <input type="date" value="return currentDate();"/>
			<!-- 오늘 날짜 기준 최신 순으로 출력하되 날짜순으로 다른 일자도 조회할 수 있게 한다.. -->
			<table class="table table-hover">
				<thead>
					<tr class="table-primary">
						<th>근무자</th>
						<th>출근시간</th>
						<th>퇴근시간</th>
						<th>근무시간</th>
						<th>일급</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>최진민</td>
						<td>19/08/07 20:00</td>
						<td>19/08/07 22:30</td>
						<td>2시30분</td>
						<td>21250</td><!-- 8500 * 2.5 -->
					</tr>
				</tbody>
				<tfoot>
				</tfoot>
			</table>
>>>>>>> 82e22308e32bc3de6863097edb25c644f3594df8:web/WebContent/management/worker_History.jsp
		</div>
	</div>
	<script>
		document.getElementsByName("barcode")[0].focus();

		$("input[type=text]").keypress(function(e) {

			var barcode = $("input[name=barcode]").val();
			var output = "<tr><td>간편식사</td><td>삼각김밥</td><td>전주비빔밥</td><td>1</td><td>";
			if (e.keyCode == 13) {
				console.log(barcode);
				
				output += barcode + "</td></tr>";

				$("#body").append(output);

			}

		})
	</script>
</body>
</html>