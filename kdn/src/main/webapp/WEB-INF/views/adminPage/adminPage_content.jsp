<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">관리자 페이지</h2>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
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
									<a href="adminPage.do" title="Go to Home Page">
										<span class="glyphicon glyphicon-home"></span> 관리자 홈
									</a>
								</li>
							</ul>
							<ul class="previous">
								<li><a href="adminPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
					<section>
					<div class="row">
						<div>
							<h3>최근 예약 신청 내역</h3>
						</div>
						<div class="tm-white-bg section-padding-bottom">
							<table>
								<thead>
									<tr>
										<th>예약번호</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
					</section>
					<div class="row">
						<div >
							<h3>최근 대여 내역</h3>
						</div>
						<div class="tm-white-bg section-padding-bottom">
							<table>
								<thead>
									<tr>
										<th>예약번호</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div >
							<h3>최근 반납 신청 내역</h3>
						</div>
						<div class="tm-white-bg section-padding-bottom">
							<table>
								<thead>
									<tr>
										<th>예약번호</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div >
							<h3>최근 사고 차량 내역</h3>
						</div>
						<div class="tm-white-bg section-padding-bottom">
							<table>
								<thead>
									<tr>
										<th>예약번호</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<jsp:include page="adminPage_sidebar.jsp" />
			</div>
		</div>
	</div>
</section>