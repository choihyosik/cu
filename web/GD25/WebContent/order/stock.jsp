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

::-webkit-scrollbar {
	display: none;
}

.container {
	-ms-overflow-style: none;
}

.table th {
	width: 96px;
}

.table td {
	width: 120px;
}

.table {
	margin: 0;
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 발주 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./stock.jsp">재고 조회</a> <a
								class="dropdown-item" href="">발주 조회</a> <a class="dropdown-item"
								href="#">입고 조회</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> 상품 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../product/product_CR.jsp">상품조회/등록</a>
							<a class="dropdown-item" href="../product/product_UD.jsp">상품 수정/삭제</a>
							<a class="dropdown-item" href="../product/category_CD.jsp">카테고리 등록/삭제</a> 
							<a class="dropdown-item" href="../product/disposal_RD.jsp">폐기조회/삭제</a> 
							<a class="dropdown-item" href="../product/disposal_C.jsp">폐기 등록</a>
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
			<div class="input-group-text" style="margin-bottom: 20px;">
				<input type="checkbox" name="category" value="간편식사">간편식사
				<input type="checkbox" name="category" value="즉석조리">즉석조리
				<input type="checkbox" name="category" value="과자류">과자류
				<input type="checkbox" name="category" value="아이스크림">아이스크림
				<input type="checkbox" name="category" value="식품">식품
				<input type="checkbox" name="category" value="음료">음료
				<input type="checkbox" name="category" value="생활용품">생활용품
				
				<button type="button" class="btn btn-dark" onclick="check();">조회</button>
				
			</div>

			
				<table class="table table-bordered">
					<thead>
						<tr class="table-primary">
							<th>대분류</th>
							<th>중분류</th>
							<th>상품명</th>
							<th>수량</th>
							<th>상품ID</th>
						</tr>
					</thead>
					</table>
					<div class="container"
					style="height: 400px; overflow: auto; margin: 0; padding: 0;">
					<table class="table table-bordered">
					<tbody id="stockList">
						
					</tbody>
				</table>
				</div>
			
		</div>
	</div>
	
<script>
var arr = new Array();


function check(){
	 $("#stockList").empty();
	var values = "";
	$("input[name='category']:checked").each(function(){
		
		values += $(this).val() + ",";
		
	})
	arr = values.split(',');
	arr.splice(arr.length-1,1);
	console.log(arr);

	
	 $.ajax({ // 서블릿에 전송하여 아이디가 중복인지 아닌지 결과를 가져와야 한다. (백 엔드와의 비동기 통신)
    type : "GET",
    url : "../common.do?command=stockList.bo&arr="+arr,
    dataType : "json",
    success : function(data) {
       console.log(data);
       
       for (var i = 0; i < data.length; i++) {
    	   var output = "<tr>";
    	   output += "<td>"+data[i].category +"</td><td>"+
    	   data[i].classes+"</td><td>"+data[i].pname+"</td><td>"+
    	   data[i].stockvo.sCnt+"</td><td>"+data[i].pbcode+"</td>"; 
    	   output += "</tr>";
    	   
    	   $("#stockList").append(output);
    	   
    	   
	}
       
       
       
      
    },
    error : function(data) {
       console.log("통신실패");
    },

    complete : function(data) {
    }
 }); 
 
}
</script>	
</body>
</html>