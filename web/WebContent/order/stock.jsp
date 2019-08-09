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

input[type=checkbox]{
	margin-left: 25px;

}

.input-group-text{
	position: relative;
	
}

.btn-dark{

	position: absolute;
	right: 0;

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
			<div class="inner">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 발주 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="">재고 조회</a> <a
								class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item"
								href="#">입고 조회</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../product/product_CR.jsp">상품
								조회/등록</a> <a class="dropdown-item"
								href="../product/disposal_RD.jsp">폐기 조회/삭제</a> <a
								class="dropdown-item" href="../product/disposal_C.jsp">폐기
								등록</a>
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
			<div class="input-group-text" style="margin-bottom: 20px;">
				<input type="checkbox" name="category" value="대분류1">대분류1
				<input type="checkbox" name="category" value="대분류2">대분류2
				<input type="checkbox" name="category" value="대분류3">대분류3
				<input type="checkbox" name="category" value="대분류4">대분류4
				<input type="checkbox" name="category" value="대분류5">대분류5
				<input type="checkbox" name="category" value="대분류6">대분류6
				<input type="checkbox" name="category" value="대분류7">대분류7
				
				<button type="button" class="btn btn-dark" onclick="check();">조회</button>
				
			</div>

			<div class="container">
				<table class="table table-bordered">
					<thead>
						<tr class="table-primary">
							<th>대분류</th>
							<th>중분류</th>
							<th>상품명</th>
							<th>재고ID</th>
							<th>입고날짜</th>
							<th>수량</th>
							<th>상품ID</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>아이스크림</td>
							<td>아이스크림</td>
							<td>스크류바</td>
							<td>3700001</td>
							<td>19/06/01</td>
							<td>30</td>
							<td>3609031</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
<script>
var arr = new Array();


function check(){
	
	var values = "";
	$("input[name='category']:checked").each(function(){
		
		values += $(this).val() + ",";
		
	})
	arr = values.split(',');
	console.log(arr);
	
}

/* $.ajax({ // 서블릿에 전송하여 아이디가 중복인지 아닌지 결과를 가져와야 한다. (백 엔드와의 비동기 통신)
    type : "GET",
    url : "controll.do?command=duplicate&v="+uid ,
    dataType : "json",
    success : function(data) {
       console.log(data);
             
       
      
    },
    error : function(data) {
       console.log("통신실패");
    },

    complete : function(data) {
    }
 }); */

</script>	
</body>
</html>