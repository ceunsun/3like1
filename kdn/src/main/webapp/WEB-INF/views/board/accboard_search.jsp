<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">고객 센터</h2>
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
					<div class="dreamcrub">
						<ul class="breadcrumbs">
							<li class="home">
								<a href="home.do" title="Go to Home Page">
									<span class="glyphicon glyphicon-home"></span> 홈
								</a>
								<span>&gt;</span></li>
							<li class="women">사고 게시판</li>
						</ul>
						<ul class="previous">
						 	<li><a href="accboard.do?pageNo=${pageNo}">이전 페이지로</a></li> 
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="tm-what-we-do-right section-margin-top">
						<table class="table table-hover table-responsive table-striped board_table">
								<tr>
									<th>사고번호</th><td colspan="5">${accident.accidentno}</td>
								</tr>
								<tr>
									<th>날짜</th><td>${accident.accidentdate}</td>
								</tr>
								<tr>
									<th>사번</th><td>${accident.memberno}</td>
								</tr>
								<tr>
									<th>차량번호</th><td>${accident.carno}</td>
								</tr>
						</table>
						<div class="boardbtn">
							<input type="button" value="삭제" onClick="location.href='accboardDelete.do?accidentno=${accident.accidentno}'"> 
							<input type="button" value="수정" onclick="location.href='accupdateBoardForm.do?accidentno=${accident.accidentno}&accidentdate=${accident.accidentdate}&memberno=${accident.memberno}&carno=${accident.carno}&pageNo=${pageNo}'">
						</div> 
					</div>
				</div>
				<jsp:include page="board_sidebar.jsp"></jsp:include>
			</div>
		</div>
	</div>
</section>