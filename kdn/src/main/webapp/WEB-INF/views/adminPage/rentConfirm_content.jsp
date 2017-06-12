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
						<table class="table table-hover table-responsive table-striped board_table section-margin-top">
							<thead>
								<tr>
									<th></th>
									<th>대여 번호</th>
									<th>차량 이미지</th>
									<th>차량 번호</th>
									<th>사원 이름</th>
									<th>사원 전화번호</th>
									<th>사원 이메일</th>
									<th>대여일</th>
									<th>반납 예정일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="rList" items="${rList}">
									<tr>
										<td><input type="checkbox" name='check' id='check' value='${rList.rentno}'></td>	
										<td>${rList.rentno}</td>
										<td>차량 이미지</td>
										<td>차량 번호</td>
										<td>사원 이름</td>
										<td>사원 전화번호</td>
										<td>사원 이메일</td>									
										<td>${rList.rentdate}</td>
										<td>${rList.returndate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="boardbtn">
							<a href="writeForm.do"><input type="button" value="확인"></a>
							<a href="writeForm.do"><input type="button" value="취소"></a>
							<ul class="pagenation">
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
							</ul>
						</div>						
						<div class="clearfix"></div>
					</div>
				</div>
				<jsp:include page="adminPage_sidebar.jsp" />
			</div>
		</div>
	</div>
</section>