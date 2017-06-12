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
					<h2 class="tm-section-title">회원 관리</h2>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
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
								<li class="women">회원 관리</li>
							</ul>
							<ul class="previous">
								<li><a href="adminPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<form action="deleteMember.do" method="post">
							<table class="table table-hover table-responsive table-striped board_table section-margin-top">
								<thead>
									<tr>
										<th></th>
										<th>사번</th>
										<th>이름</th>
										<th>부서</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>벌점</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="member" items="${mList}">
										<tr>	
											<%-- <%!int cnt=0;%> --%>
											<td><input type="checkbox" name='check' id='check' value='${member.memberno}'></td>	
											<td>${member.memberno}</td>
											<td>${member.name}</td>
											<td>${member.dept}</td>
											<td>${member.mobile}</td>
											<td>${member.email}</td>
											<td>${member.penalty}</td>
										</tr>
								</c:forEach>
								</tbody>
							</table>
							<div class="boardbtn">
								<input type="submit" value="삭제">
								<input type="reset" value="취소">
								<ul class="pagenation">
									<c:forEach var='i' begin='1' end='${totalPage}'>
										<li class="active"><a href="memberContent.do?pageNo=${i}">${i}</a></li>
									</c:forEach>
								</ul>
							</div>
						</form>
					</div>
				</div>
				<jsp:include page="adminPage_sidebar.jsp" />          
			</div>
		</div>
	</div>
</section>