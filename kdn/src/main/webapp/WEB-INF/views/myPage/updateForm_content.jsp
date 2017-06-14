<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
								<li class="women">내 정보 수정</li>
							</ul>
							<ul class="previous">
								<li><a href="myPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<form action="updateMember.do" method="post">
							<table class="table table-hover table-responsive table-striped board_table section-margin-top">
								<tbody>
									<tr>
										<th>사 번</th>
										<td>
											<input type="hidden" class="form-control" name="memberno" id="memberno" value="${member.memberno}">
											${member.memberno}
										</td>
									</tr>
									<tr>
										<th>이 름</th>
										<td><input type="text" class="form-control" name="name" id="name" placeholder="${member.name}"></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" class="form-control" name="pwd" id="pwd" placeholder="..."></td>
									</tr>
									<tr>
										<th>부 서</th>
										<td><input type="text" class="form-control" name="dept" id="dept" placeholder="${member.dept}"></td>
									</tr>
									<tr>
										<th>전화번호</th>
										<td><input type="text" class="form-control" name="mobile" id="mobile" placeholder="${member.mobile}"></td>
									</tr>
									<tr>
										<th>이메일</th>
										<td><input type="email" class="form-control" name="email" id="email" placeholder="${member.email}"></td>
									</tr>
								</tbody>
							</table>
							<div class="boardbtn">
								<input type="submit" value="수정">
								<input type="reset" value="취소" onClick="location.href='myPage.do'">
							</div>
						</form>
					</div>
				</div>
				<jsp:include page="myPage_sidebar.jsp"></jsp:include>	
			</div>
		</div>		
	</div>
</section>