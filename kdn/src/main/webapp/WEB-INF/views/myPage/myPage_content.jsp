<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- white bg -->
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
						<ul class="breadcrumbs">
							<li class="home">
								<a href="myPage.do" title="Go to Home Page">
									<span class="glyphicon glyphicon-home"></span> 마이페이지 홈
								</a>
							</li>
						</ul>
						<ul class="previous">
							<li><a href="myPage.do">이전 페이지로</a></li>
						</ul>
						<div class="clearfix"></div>
						<table class="table table-hover table-responsive table-striped board_table section-margin-top">
							<tbody>
								<tr>
									<th>사 번</th><td>${member.memberno}</td>
								</tr>
								<tr>
									<th>이 름</th><td>${member.name}</td>
								</tr>
								<tr>
									<th>부 서</th><td>${member.dept}</td>
								</tr>
								<tr>
									<th>전화번호</th><td>${member.mobile}</td>
								</tr>
								<tr>
									<th>이메일</th><td>${member.email}</td>
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