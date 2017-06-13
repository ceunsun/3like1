<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="tm-section-header section-margin-top">
			<div class="col-lg-4 col-md-3 col-sm-3">
				<hr>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<h2 class="tm-section-title">마이 페이지</h2>
			</div>
			<div class="col-lg-4 col-md-3 col-sm-3">
				<hr>
			</div>
		</div>
		<div class="row">
			<!-- Testimonial -->
			<div class="col-lg-12">
				<div class="tm-what-we-do-right">
					<div class="row">
						<div class="dreamcrub">
							<ul class="breadcrumbs">
								<li class="home">
									<a href="myPage.do" title="Go to Home Page">
										<span class="glyphicon glyphicon-home"></span> 마이페이지 홈
									</a>
									<span>&gt;</span></li>
								<li class="women">반납 신청</li>
							</ul>
							<ul class="previous">
								<li><a href="myPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<table class="table table-hover table-responsive table-striped board_table section-margin-top">
							<thead>
								<tr>
									<th>대여번호</th>
									<th>차량 이미지</th>
									<th>차량번호</th>
									<th>대여일</th>
									<th>반납 예정일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${car.rentno}</td>
									<td><img src="img/${car.carimg}" class="img-responsive img-rounded"></td>
									<td>${car.carno}</td>
									<td>${car.rentdate}</td>
									<td>${car.returndate}</td>									
									<td>
										<div class="boardbtn">
											<input type="submit" value="반납" onClick="location.href='returnUpdate.do?carno=${car.carno}&returndate=${car.returndate }'">
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<jsp:include page="myPage_sidebar.jsp"></jsp:include>			
			</div>
		</div>		
	</div>
</section>
