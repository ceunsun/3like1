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
</style>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMJHho4WfeCzzv4U-5rLubsROfinFrIwo&callback=initMap">
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
			mapTypeId: 'satellite'
		});

		var marker1 = new google.maps.Marker({
			position : a,
			label : labels[labelIndex++ % labels.length],
			map : map
		});

		var marker2 = new google.maps.Marker({
			position : b,
			label : labels[labelIndex++ % labels.length],
			map : map
		});

		var marker3 = new google.maps.Marker({
			position : c,
			label : labels[labelIndex++ % labels.length],
			map : map
		});
		flag=0;
		if(flag==0){
			google.maps.event.addDomListener(marker1, 'click', function() {
				document.getElementById("rentPlace").innerHTML = 'A';
				flag=1;
			});
		}
		if(flag==1){
			google.maps.event.addDomListener(marker1, 'click', function() {
				document.getElementById("returnPlace").innerHTML = 'A';
				flag=0;
			});
		}
		
		google.maps.event.addDomListener(marker1, 'click', function() {
			document.getElementById("rentPlace").innerHTML = 'A';
		});
		google.maps.event.addDomListener(marker1, 'mouseover', function() {
			infowindow.setContent('대여소 A');
		});
		google.maps.event.addDomListener(marker2, 'click', function() {
			document.getElementById("rentPlace").innerHTML = 'B';
		});
		google.maps.event.addDomListener(marker3, 'click', function() {
			document.getElementById("rentPlace").innerHTML = 'C';
		});
	}
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
			<form action="reserve.do" method="post" class="tm-contact-form">
				<div class="col-lg-6 col-md-6 tm-contact-form-input">
					<table
						class="table table-hover table-responsive table-striped board_table">
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
									<td rowspan="2"><img src="img/${car.carimg}"
										class="img-responsive img-rounded"></td>
									<td>${car.carname}</td><td></td>
									<td rowspan="2">
										<div class="boardbtn">
											<input type="submit" value="예약">
										</div>
									</td>
								</tr>
								<tr>
									<td>${car.cartype}</td><td></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</form>
			<input type="hidden" name="startdate" value="${startdate}" /> <input
				type="hidden" name="enddate" value="${enddate}" />
			<ul class="pagenation">
				<c:forEach var='i' begin='1' end='${totalPage}'>
					<li class="active"><a href="available.do?pageNo=${i}"
						data-toggle="modal" data-target="#searchModal">${i}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="col-lg-6 col-md-6">
			<div>
				<!-- <iframe src="https://www.google.com/maps/embed/v1/place?q=%EB%A9%80%ED%8B%B0%EC%BA%A0%ED%8D%BC%EC%8A%A4&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0">
						</iframe> -->
				<!-- <iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJpZhn7vUlcjURW4TlYFCzXek&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0" allowfullscreen></iframe> -->
				<table>
					
					<thead>
						<tr>
							<th><span>대여 장소 :</span></th><td><span id="rentPlace"></span></td>
							<th><span>반납 장소 :</span></th><td> <span id="returnPlace"></td>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
				<div id="map"></div>
			</div>
		</div>
	</div>
	</div>
</section>
