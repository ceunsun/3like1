<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">차량 사고 관리</h2>
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
									<span>&gt;</span></li>
								<li class="women">사고 관리</li>
							</ul>
							<ul class="previous">
								<li><a href="adminPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="toolbar">
							
							
							<table class="table table-hover table-responsive table-striped board_table section-margin-top">
								<thead>
									<tr>
										<th>사고 번호</th>
										<th>차량 이미지</th>
										<th>차량 번호</th>
										<th>사번</th>
										<th>사고 발생일</th>
										<th>차량 상태</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="aList" items="${aList}">
									<tr>
										<td>${aList.accidentno}</td>
										<td width="150px"><img src="img/${aList.carimg}.jpg" class="img-responsive img-rounded"></td>
										<td>${aList.carno}</td>
										<td>${aList.memberno}</td>
										<td>${aList.accidentdate}</td>
										<td>${aList.carstatus}</td>
										<td>
											<div class="boardbtn">
												<input type="button" value="확인" onClick="location.href='accidentUpdate.do?carno=${aList.carno}'">
											</div>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
							
							<div class="clearfix"></div>
						</div>
					
					</div>
				</div>
				<jsp:include page="adminPage_sidebar.jsp" />
			</div>
		</div>
	</div>
</section>