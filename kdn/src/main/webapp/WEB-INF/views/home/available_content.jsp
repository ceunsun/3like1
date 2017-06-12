<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h4 class="tm-section-title">예약 가능 차량 조회</h4>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
			</div>
		</div>
		<div class="row">
			<!-- contact form -->
			<form action="reserve.do" method="post" class="tm-contact-form">
				<div class="col-lg-6 col-md-6 tm-contact-form-input">
					<table class="table table-hover table-responsive table-striped board_table">
						<thead>
							<tr>
								<th><span>대여 일시 :</span> ${startdate}</th>
								<th><span>반납 일시 :</span>${enddate}</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="car" items="${cList}">
								<tr>
									<input type="hidden" name="carno" value="${car.carno}"/>
									<td rowspan="2"><img src="img/${car.carimg}" class="img-responsive img-rounded"></td>
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
					<input type="hidden" name="startdate" value="${startdate}"/>
					<input type="hidden" name="enddate" value="${enddate}"/>
					<ul class="pagenation">
						<c:forEach var='i' begin='1' end='${totalPage}'>
							<li class="active"><a href="available.do?pageNo=${i}"
								data-toggle="modal" data-target="#searchModal">${i}</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-6 col-md-6">				
					<div class="map">
						<iframe src="https://www.google.com/maps/embed/v1/place?q=%EB%A9%80%ED%8B%B0%EC%BA%A0%ED%8D%BC%EC%8A%A4&key=AIzaSyDdbPoIrCQAdsJGUcY3Ux9wuxuzrJmA6c0">
						</iframe>
					</div>					
				</div>
			</form>
		</div>
	</div>
</section>
<%-- <div class="section-margin-top">
		
		<form action="reserve.do" method="post">
			<table class="table table-hover table-responsive table-striped board_table">
				<thead>
					<tr>
						<th>차량 이미지</th>
						<th>차량명</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="car" items="${cList}">
						<tr>
							<input type="hidden" name="carno" value="${car.carno}"/>
							<td><img src="img/${car.carimg}" class="img-responsive img-rounded"></td>
							<td>${car.carname}</td>
							<td>
								<div class="boardbtn">
									<input type="submit" value="예약 가능">
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<input type="hidden" name="startdate" value="${startdate}"/>
			<input type="hidden" name="enddate" value="${enddate}"/>
		</form>
	</div>
	<ul class="pagenation">
		<c:forEach var='i' begin='1' end='${totalPage}'>
			<li class="active"><a href="available.do?pageNo=${i}"
				data-toggle="modal" data-target="#searchModal">${i}</a></li>
		</c:forEach>
	</ul>
</div>
</section> --%>