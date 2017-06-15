<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(function() {
		// Activate Carousel
		$("#myCarousel").carousel();

		// Enable Carousel Indicators
		$(".item1").click(function() {
			$("#myCarousel").carousel(0);
		});
		$(".item2").click(function() {
			$("#myCarousel").carousel(1);
		});
		$(".item3").click(function() {
			$("#myCarousel").carousel(2);
		});
		$(".item4").click(function() {
			$("#myCarousel").carousel(3);
		});

		// Enable Carousel Controls
		$(".left").click(function() {
			$("#myCarousel").carousel("prev");
		});
		$(".right").click(function() {
			$("#myCarousel").carousel("next");
		});
	});
</script>
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<div class="modal-body">
	<div class="modal-body">
		<div class="row tm-white-bg">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h5 class="modal-title">
				<span class="modal-title"><h3>차량 예약 가능 조회</h3><span>
			</h5>
			<div class="section-margin-top">
				<div class="container">
					<div id="myCarousel" class="carousel slide">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li class="item1 active"></li>
							<li class="item2"></li>
							<li class="item3"></li>
							<li class="item4"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">

							<div class="item active">
								<img src="img/sonata1.jpg" alt="sonata" width="100%" height="400" style="margin: auto;">
							</div>

							<div class="item">
								<img src="img/sonata2.jpg" alt="sonata" width="100%" height="400" style="margin: auto;">
							</div>

							<div class="item">
								<img src="img/sonata3.jpg" alt="sonata" width="100%" height="400" style="margin: auto;">
							</div>

							<div class="item">
								<img src="img/sonata4.jpg" alt="sonata" width="100%" height="400" style="margin: auto;">
							</div>
						</div>
						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div><br>
				<form class="hotel-search-form" id="frm" action="available.do"
					method="post">
					
					<div>
						<span>선택 차량 : </span><span>${car.carname}</span>
					</div>
					<br>
					<div>
						<span>유종 : </span><span>${car.cartype}</span>
					</div>
					<br>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker1'>
							<input type='text' class="form-control" name="startdate"
								placeholder="대여일을 입력해 주세요" /> <span class="input-group-addon">
								<span class="fa fa-calendar"></span>
							</span>
						</div>
					</div>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker2'>
							<input type='text' class="form-control" name="enddate"
								placeholder="반납일을 입력해 주세요" /> <span class="input-group-addon">
								<span class="fa fa-calendar"></span>
							</span>
						</div>
					</div>
					<input type="hidden" name="car" id="car" value="${carname}">
					<button class="tm-yellow-btn">예약 가능 조회</button>
					<button class="tm-yellow-btn" data-dismiss="modal">취소</button>
				</form>
			</div>
		</div>
	</div>
</div>
