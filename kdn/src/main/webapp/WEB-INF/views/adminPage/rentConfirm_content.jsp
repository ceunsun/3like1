<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">차량 대여 관리</h2>
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
								<li class="women">차량 대여 관리</li>
							</ul>
							<ul class="previous">
								<li><a href="adminPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<form action="rentConfirm.do" method="post">
							<table class="table table-hover table-responsive table-striped board_table section-margin-top">
								<thead>
									<tr>
										<th></th>
										<th>예약 번호</th>
										<th>차량 이미지</th>
										<th>차량 번호</th>
										<th>사원 번호</th>
										<th>대여일</th>
										<th>반납 예정일</th>
										<th>차량 상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="rList" items="${rList}">
										<tr>
											<td><input type="checkbox" name='check' id='check' value='${rList.carno},${rList.memberno},${rList.startdate},${rList.enddate}'></td>	
											<td>${rList.reserveno}</td>
											<td width="150px"><img src="img/${rList.carimg}.jpg" class="img-responsive img-rounded"></td>
											<td>${rList.carno}</td>
											<td>${rList.memberno}</td>
											<td>${rList.startdate}</td>
											<td>${rList.enddate}</td>
											<td>${rList.carstatus}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="boardbtn">
								<input type="submit" value="확인">
								<input type="reset" value="취소">
							</div>						
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
				<jsp:include page="adminPage_sidebar.jsp" />
			</div>
		</div>
	</div>
</section>