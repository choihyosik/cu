<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
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
	   $(document).ready(function(){
		
		   
           // 옵션추가 버튼 클릭시
           $("#addItemBtn").click(function(){
               // item 의 최대번호 구하기
               var lastItemNo = $("#example tbody tr:last").attr("class").replace("item", "");

               var newitem = $("#example tbody tr:eq(1)").clone();
               newitem.removeClass();
               newitem.find("td:eq(0)").attr("rowspan", "1");
               newitem.addClass("item"+(parseInt(lastItemNo)+1));

               $("#example").append(newitem);
           });

            
            
           // 삭제버튼 클릭시
           $(".delBtn").live("click", function(){
               var clickedRow = $(this).parent().parent();
               var cls = clickedRow.attr("class");
                
               // 각 항목의 첫번째 row를 삭제한 경우 다음 row에 td 하나를 추가해 준다.
               if( clickedRow.find("td:eq(0)").attr("rowspan") ){
                   if( clickedRow.next().hasClass(cls) ){
                       clickedRow.next().prepend(clickedRow.find("td:eq(0)"));
                   }
               }

               clickedRow.remove();

               // rowspan 조정
               resizeRowspan(cls);
               updateTable();
           });

           // cls : rowspan 을 조정할 class ex) item1, item2, ...
           function resizeRowspan(cls){
               var rowspan = $("."+cls).length;
               $("."+cls+":first td:eq(0)").attr("rowspan", rowspan);
           }
      
       });
       
</script>

<style>
body {
	background-color: aliceblue;
}

header {
	width: 100%;
}

th, td {
	padding: 100px;
}

/*스크롤 기능은 있되 스크롤은 안보이게 하는 방법   해당 div 태그에는 -ms-overflow-style 을 none으로*/
::-webkit-scrollbar {
	display: none;
}

.container {
	-ms-overflow-style: none;
}

#example>thead {
	position: absolute;
	top: 0;
}

input {
	width: 80px;
}
</style>
</head>
<body onload="showClock()">
	<header>
		<div class="inner">
			<a href="../index.jsp"><img src="../img/logo.png" / width="100px" />편의점</a>
			근무자 : <span id="workerName"><strong>홍길동</strong></span>
			<button type="button" class="btn btn-light">로그아웃</button>
			<button type="button" class="btn btn-light">회원가입</button>
			현재 시각 : <span id="currenDate"></span>
		</div>
	</header>

	<div class="container">
		<h2>결제</h2>

		<div class="inner">
			<table class="table table-hover" style="margin: 0;">
				<thead>
					<tr>
						<th>NO</th>
						<th>상품명</th>
						<th>단가</th>
						<th>수량</th>
						<th>금액</th>
						<th>삭제</th>
					</tr>
				</thead>
			</table>
			<form action="#" method="post">
				<div class="container"
					style="height: 300px; overflow: auto; margin: 0; padding: 0;">

					<table id="example" class="table table-hover">
						<tbody id="body">
							<tr class="item1">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><button class="delBtn">삭제</button></td>
							</tr>
							<tr class="item2">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><button class="delBtn">삭제</button></td>
							</tr>
							<tr class="item3">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><button class="delBtn">삭제</button></td>
							</tr>
						</tbody>
					</table>
				</div>

				<table class="table table-bordered">
					<tr>
						<th>합계금액</th>
						<th id="totalprice">0</th>
					</tr>

					<tr>
						<th>할인</th>
						<td id="discount">0</td>
					</tr>
					<tr>
						<th>결제금액</th>
						<td id="paymoney">0</td>
					</tr>
				</table>
				<button type="button" class="btn btn-secondary">현금</button>
				<button type="button" class="btn btn-secondary">카드</button>
				<button type="button" class="btn btn-secondary">복합</button>
				<button type="button" id="membership" class="btn btn-primary">멤버십</button>

			</form>
			<div id="barcode">
				바코드 : <input type="text" name="barcode" />
			</div>

		
		</div>
<script>

//총액 계산해주는 function 
function getTotalPrice(){
	var totalprice = 0, quantity = 0, paymoney = 0, pprice = 0;
	$("#body > tr").each(function(){
		pprice = Number($(this).find('td > input').eq(1).val());
		quantity = Number($(this).find('td > input').eq(2).val());
		if(!isNaN(pprice)&&!isNaN(quantity)){
			totalprice = pprice * quantity;
			paymoney += totalprice;
		}
	});
	return paymoney;
}

//계산된 총액을 뿌려주는 function
function updateTable(){
		$("#totalprice").text(getTotalPrice());
		//$("#discount").html(getDiscount());
		//$("#paymoney").html(getTotalPrice()-getDiscount());
		
}

var quantity = 1;
function updateCart(cnt, data){
	var pname = data.pname;
	var pprice = data.pprice;
	var tr = $("#body > tr");
	var nameList = [];
	var isPnameDuplicate = false;
	var ifDuplicateCnt = cnt;
	
	// 상품이름이 들어가 있는 td를 for문을 돌려 배열에 넣어준다.
	$('#body > tr').each(function( index ) {
		  nameList.push($(this).find('td > input').eq(0).val());
	});
	
	// 방금 바코드를 찍은 상품이름과 기존 테이블 td안에 들어있는 상품이름이 일치하면 , 즉 같은 바코드를 여러번 찍으면 상품수량만 증가시켜준다. 
	if(nameList.indexOf(pname)!=-1){
		var no = nameList.indexOf(pname);
		var currentQuantity = tr.eq(no).find('td > input').eq(2).val();
		tr.eq(no).find('td > input').eq(2).val(++currentQuantity);
		ifDuplicateCnt = cnt - 1;
	} else {
	quantity = 1;	
	tr.eq(cnt).html('<td>' + cnt + '</td><td><input type="text" id="pname' + cnt + '" name="pname'+ cnt +'" value="' + pname +'" readonly /></td>' +
	'<td><input type="text" id="pprice' + cnt + '" name="pprice'+ cnt +'" value="'+ pprice +'" /></td>' + 
	'<td><input type="text" id="quantity'+ cnt +'" name="quantity'+ cnt +'" value="'+ quantity + '" /></td>' + 
	'<td><input type="text" id="totalprice'+ cnt +'" name="totalprice'+ cnt +'" value="' + (pprice * quantity) + '"  /></td>' + 
	'<td><button class="delBtn">삭제</button></td>');
	console.log("abc : " + $(".item3 > td").eq(0).val());
	if (cnt > 2){
		var output = '<tr><td>' + cnt + '</td><td><input type="text" id="pname' + cnt + '" name="pname'+ cnt +'" value="' + pname +'" readonly /></td>' +
		'<td><input type="text" id="pprice' + cnt + '" name="pprice'+ cnt +'" value="'+ pprice +'" /></td>' + 
		'<td><input type="text" id="quantity'+ cnt +'" name="quantity'+ cnt +'" value="'+ quantity + '" /></td>' + 
		'<td><input type="text" id="totalprice'+ cnt +'" name="totalprice'+ cnt +'" value="' + (pprice * quantity) + '"  /></td>' + 
		'<td><button class="delBtn">삭제</button></td></tr>';

		$("#body").append(output);
	}
	}
	return ifDuplicateCnt;
}

// 바코드 번호 입력후 엔터누르면 상품정보 뿌려주기 
var cnt = 0;
$("input[type=text]").keypress(function(e) {
	var barcode = $("input[name=barcode]").val();
		
	//<c:out value="${RowNo}"/>
	if (e.keyCode == 13) {
		
		$.ajax({ 
			type : "GET",
			url : "Controller.bo?command=getPInfo.bo&pbcode=" + barcode,
			dataType : "json",
			success : function(data) {
				console.log(data);
				cnt = updateCart(cnt, data);
				updateTable();
				cnt++;
				
			},
			error : function(res) {
				console.log(res.responseText);
			},
			complete : function() {

			}
		});
		
	}


});

// 멤버십 관련 

$("#membership").onclick(function(e){
	
});
</script>
</body>
</html>