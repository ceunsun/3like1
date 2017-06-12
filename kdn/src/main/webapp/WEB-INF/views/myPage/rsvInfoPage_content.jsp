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
								<li class="women">나의 예약 정보</li>
							</ul>
							<ul class="previous">
								<li><a href="myPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<table class="table table-hover table-responsive table-striped board_table section-margin-top">
							<thead>
								<tr>
									<th>차량이미지</th>
									<th>차량번호</th>
									<th>날짜</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>차량이미지</td>
									<td>차량번호</td>
									<td>날짜</td>
									<td>상태</td>
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