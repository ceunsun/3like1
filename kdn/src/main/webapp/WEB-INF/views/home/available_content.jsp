<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#map {
	height: 400px;
	width: 100%;
	border: 2px solid;
	border-radius: 10px;
}
.availableCar{
	height: 450px;
	overflow: scroll;
}

.accent{
	color: red;
}

#click{
	color: darkorange;
}

</style>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRSJcqu3m_6HpSzX-SPbDNkIQEMM3qOYI&callback=initMap">
</script>
<script>
	function initMap() {
		var a = {
			lat : 35.021998,
			lng : 126.784143
		};
		var b = {
			lat : 35.022357,
			lng : 126.783139
		};
		var c = {
			lat : 35.021751,
			lng : 126.783032
		};

		var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		var labelIndex = 0;
				
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 17,
			center : a,
			mapTypeId : "roadmap"			
		});

		var marker1 = new google.maps.Marker({
			position : a,
			label : labels[labelIndex++ % labels.length],
			animation: google.maps.Animation.DROP,
			map : map
		});

		var marker2 = new google.maps.Marker({
			position : b,
			label : labels[labelIndex++ % labels.length],
			animation: google.maps.Animation.DROP,
			map : map
		});

		var marker3 = new google.maps.Marker({
			position : c,
			label : labels[labelIndex++ % labels.length],
			animation: google.maps.Animation.DROP,
			map : map
		});
		
		google.maps.event.addDomListener(marker1, 'click', function() {
			document.getElementById("click").innerHTML = ' ';
			document.getElementById("rentPlace").innerHTML = '대여 장소 : <span class="accent">A 대여소</span>';
			document.getElementById("hidden").innerHTML = '<input type="hidden" name="place" id="place" value="a"/>"';
		});
		google.maps.event.addDomListener(marker2, 'click', function() {
			document.getElementById("click").innerHTML = ' ';
			document.getElementById("rentPlace").innerHTML = '대여 장소 : <span class="accent">B 대여소</span>';
			document.getElementById("hidden").innerHTML = '<input type="hidden" name="place" id="place" value="b"/>';
		});
		google.maps.event.addDomListener(marker3, 'click', function() {
			document.getElementById("click").innerHTML = ' ';
			document.getElementById("rentPlace").innerHTML = '대여 장소 : <span class="accent">C 대여소</span>';
			document.getElementById("hidden").innerHTML = '<input type="hidden" name="place" id="place" value="c"/>';
		});
	}
</script>
<script type="text/javascript">
$(function() {
	$('#frm').submit(function(event) {
		var penalty = ${penalty};
		
		if (penalty < 200) {
			alert('마일리지가 부족합니다!!');
			return false;
		}	
		if(penalty >= 200){
			$(this).submit();		
		}
	});
});
</script>
<div id="hi"></div>
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h4 class="tm-section-title">예약 가능 차량 조회</h4>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- contact form -->
			<form action="reserve.do" method="post" id="frm" class="tm-contact-form">
				<div class="col-lg-6 col-md-6 tm-contact-form-input">
					<div class="availableCar">
					<table class="table table-hover table-responsive table-striped board_table available-table">
						<span><h5>총 <span class="accent">${total}대</span> 예약 가능 합니다.</h5></span>
						<thead>
							<tr>
								<th><span>대여 일시 :</span></th><td></span>${startdate}</td>
								<th><span>반납 일시 :</span></th><td> ${enddate}</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="car" items="${cList}">
								<tr>
									<input type="hidden" name="carno" value="${car.carno}" />
									<td rowspan="2">${car.carno}</td>
									<td rowspan="2" width="150px"><img src="img/${car.carimg}.jpg"
										class="img-responsive img-rounded"></td>
									<td>${car.carname}</td>
									<td rowspan="2">
										<div class="boardbtn">
											<input type="submit" value="예약">
										</div>
									</td>
								</tr>
								<tr>
									<td>${car.cartype}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
					<span id="hidden"></span>
					<input type="hidden" name="startdate" value="${startdate}" /> <input type="hidden" name="enddate" value="${enddate}" />
			</form>			
		</div>
		<div class="col-lg-6 col-md-6">
			<div>
				<!-- <iframe src="https://www.google.com/maps/embed/v1/place?q=%EB%A9%80%ED%8B%B0%EC%BA%A0%ED%8D%BC%EC%8A%A4&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0">
						</iframe> -->
				<!-- <iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJpZhn7vUlcjURW4TlYFCzXek&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0" allowfullscreen></iframe> -->
				<span id="click"><h4><span class="glyphicon glyphicon-info-sign"> 대여소를 선택하세요.</h4></span>
				<span><h4><span id="rentPlace"></span></h4></span>
				<!-- <table>
					
					<thead>
						<tr>
							<th><span>대여 장소 :</span></th><td><span id="rentPlace"></span></td>
							<th><span>반납 장소 :</span></th><td> <span id="returnPlace"></td>
						</tr>
					</thead>
					<tbody></tbody>
				</table> -->
				<div id="map"></div>
			</div>
		</div>
	</div>
	</div>
</section>
