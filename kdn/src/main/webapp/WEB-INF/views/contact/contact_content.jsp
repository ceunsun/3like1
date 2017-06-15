<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			zoom : 18,
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
			document.getElementById("rentPlace").innerHTML = '대여 장소 : A 대여소';
		});
		google.maps.event.addDomListener(marker2, 'click', function() {
			document.getElementById("click").innerHTML = ' ';
			document.getElementById("rentPlace").innerHTML = '대여 장소 : B 대여소';
		});
		google.maps.event.addDomListener(marker3, 'click', function() {
			document.getElementById("click").innerHTML = ' ';
			document.getElementById("rentPlace").innerHTML = '대여 장소 : C 대여소';
		});
	}
</script>
<div class="container">
	<div class="section-margin-top about-section">
		<div class="row">
			<div class="tm-section-header">
				<div class="col-lg-3 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<h2 class="tm-section-title">대여 장소 위치 찾기</h2>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
		</div>
	</div>
</div>
<section class="container tm-home-section-2 section-margin-top">
	<div class="row">
		<div id="map">
		</div>
	</div>
</section>
<section class="section-padding-bottom section-margin-top tm-white-bg">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<h4><span class="glyphicon glyphicon-map-marker"></span> 주소</h4>
				<ul>
					<li><h5>(58322) 전라남도 나주시 빛가람로 661</h5></li>
				</ul>
				<br>
				<h4><span class="glyphicon glyphicon-phone"></span> 연락처</h4>
				<ul>
					<li><h5>Tel. 061-931-7114</h5></li>
				</ul>
			</div>
			<div class="col-sm-5">
				<h4><span class="glyphicon glyphicon-road"></span> 버스</h4>
				<ul>
					<li><h6> 나주역 : 700(순환버스), 1160번</h6></li>
					<li><h6> 나주버스터미널 : 700번</h6></li>
					<li><h6> 광주역 : 100 ~ 109, 400, 402, 403, 404, 500, 501, 504, 505번</h6></li>
					<li><h6> 광주 송정역 : 1160번</h6></li>
					<li><h6> 광주공항 : 1160번</h6></li>
				</ul>
			</div>
			<div class="col-sm-2">
				
			</div>			
		</div>
	</div>
</section>

<!-- <section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">대여 장소 위치</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				contact form
				<form action="#" method="post" class="tm-contact-form">
					<div class="col-lg-6 col-md-6">
						<div class="container">
							<div class="row">
								<div>
									<h4><span class="glyphicon glyphicon-map-marker"></span> 주소</h4>
									<p>(58322) 전라남도 나주시 빛가람로 661</p>
									<h4><span class="glyphicon glyphicon-phone"></span> 연락처</h4>
									<p>Tel. 061-931-7114</p>
									<h4><span class="glyphicon glyphicon-road"></span> 교통편</h4>
									<p><span id="bus"><h5>- 버스</h5></span> 
									<div class="row bus">
										<ul>
											<li><h6> 나주역 : 700(순환버스), 1160번</h6></li>
											<li><h6> 나주버스터미널 : 700번</h6></li>
											<li><h6> 광주역 : 100 ~ 109, 400, 402, 403, 404, 500, 501, 504, 505번</h6></li>
											<li><h6> 광주 송정역 : 1160번</h6></li>
											<li><h6> 광주공항 : 1160번</h6></li>
										</ul>
									</div>
								</div>
							</div>
						</div> 
					</div> 
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="row">
							<div id="map">
							</div>
						</div>
						              
					</div>
				</form>
			</div>			
		</div>
	</section> -->