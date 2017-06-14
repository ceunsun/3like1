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
			zoom : 17,
			center : a,
			mapTypeControl: true,
	        mapTypeControlOptions: {
		        style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
		        mapTypeIds: ['roadmap', 'terrain']
	        },
			
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

<section class="container tm-home-section-2 section-margin-top">
	<div class="row">
		<div >
		<iframe src="https://www.google.com/maps/embed/v1/place?q=%EB%A9%80%ED%8B%B0%EC%BA%A0%ED%8D%BC%EC%8A%A4&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0">
		</iframe>
	</div>
</section>
<!-- white bg -->
<section class="section-padding-bottom tm-white-bg">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">Contact Us</h2>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- contact form -->
			<form action="#" method="post" class="tm-contact-form">
<!--				<div class="col-lg-6 col-md-6">
					
 					<div class="contact-social">
						<a href="#" class="tm-social-icon tm-social-facebook"><i
							class="fa fa-facebook"></i></a> <a href="#"
							class="tm-social-icon tm-social-dribbble"><i
							class="fa fa-dribbble"></i></a> <a href="#"
							class="tm-social-icon tm-social-twitter"><i
							class="fa fa-twitter"></i></a> <a href="#"
							class="tm-social-icon tm-social-instagram"><i
							class="fa fa-instagram"></i></a> <a href="#"
							class="tm-social-icon tm-social-google-plus"><i
							class="fa fa-google-plus"></i></a>
					</div> 
				</div>-->
				<div class="col-lg-6 col-md-6 tm-contact-form-input">
					<div class="form-group">
						<input type="text" id="contact_name" class="form-control"
							placeholder="NAME" />
					</div>
					<div class="form-group">
						<input type="email" id="contact_email" class="form-control"
							placeholder="EMAIL" />
					</div>
					<div class="form-group">
						<input type="text" id="contact_subject" class="form-control"
							placeholder="SUBJECT" />
					</div>
					<div class="form-group">
						<textarea id="contact_message" class="form-control" rows="6"
							placeholder="MESSAGE"></textarea>
					</div>
					<div class="form-group">
						<button class="tm-submit-btn" type="submit" name="submit">Submit
							now</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>