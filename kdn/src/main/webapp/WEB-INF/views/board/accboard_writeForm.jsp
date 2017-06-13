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
							<li class="women">사고 게시글 작성</li>
						</ul>
						<ul class="previous">
							<li><a href="accboard_write.do?pageNo=${pageNo}">이전 페이지로</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="tm-what-we-do-right section-margin-top">
						<form action="accboard_write.do" method="post">
							<%-- <div class="form-group">
								<input type="hidden" name="accidentno" id="accidentno" class="form-control"
									placeholder="사고번호" value="${accident.accidentno}"/>
							</div> --%>
							<div class="form-group">
								<input type="text" name="accidentdate" id="accidentdate" class="form-control"
									placeholder="사고날짜를 입력하세요" />
							</div>
							<div class="form-group">
								<input type="text" name="memberno" id="memberno" class="form-control"
									placeholder="사원번호" />
							</div>
							<div class="form-group">
								<input type="text" name="carno" id="carno" class="form-control"
									placeholder="차량번호" />
							</div>
							<div class="boardbtn">
								<input type="submit" value="작성 완료">
								<a href="accboard.do?pageNo=${pageNo}"><input type="button" value="취소"></a>
							</div>
						</form>
					</div>
				</div>
				<jsp:include page="board_sidebar.jsp"></jsp:include>
			</div>
		</div>
	</div>
</section>