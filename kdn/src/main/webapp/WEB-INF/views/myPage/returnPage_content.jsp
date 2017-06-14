<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
								<c:forEach var="car" items="${cList}">
									<tr>
										<td>${car.rentno}</td>
										<td width="150px"><img src="img/${car.carimg}" class="img-responsive img-rounded"></td>
										<td>${car.carno}</td>
										<td>${car.rentdate}</td>
										<td width="150px">${car.returndate}</td>									
									<td>
										<div class="boardbtn">
											<input type="submit" value="반납" onClick="location.href='returnUpdate.do?carno=${car.carno}&returndate=${car.returndate }'">
											<a data-toggle="modal" data-target="#renewModal" href="renewModal.do?carno=${car.carno }" role="button" data-backdrop="static">
												<input type="button" value="연장">
											</a>
											<%-- <form action="renewModal.do">
												<!-- <input type="button" value="연장" data-toggle="modal" data-target="#renewModal"> -->
												<input type="hidden" id="carno" name="carno" value="${car.carno }">
												<button id="button" data-toggle="modal" data-target="#renewModal" onclick="modal(this.form)">연장</button>
											</form> --%>
										</div>
									</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<jsp:include page="myPage_sidebar.jsp"></jsp:include>			
			</div>
		</div>		
	</div>
</section>

<div class="modal fade" id="renewModal" role="dialog">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<%-- <jsp:include page="renew_modal.jsp"></jsp:include> --%>
		</div>
	</div>
</div>