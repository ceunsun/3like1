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
							<li class="women">사고 게시글 수정</li>
						</ul>
						<ul class="previous">
						 	<%-- <li><a href="board_write.do?pageNo=${pageNo}">이전 페이지로</a></li>  --%>
				        	<li><a href="accboardSearch.do?accidentno=${accident.accidentno}&pageNo=${pageNo}">이전 페이지로</a></li> 
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="tm-what-we-do-right section-margin-top">
						<form action="accupdateBoard.do" method="post">
						    <div class="form-group">
								<input type="hidden" name="accidentno" id="accidentno" class="form-control"
									placeholder="사고번호" value='${accident.accidentno}'/>
							</div>
							<div class="form-group">
								<input type="text" name="accidentdate" id="accidentdate" class="form-control"
									placeholder="${accident.accidentdate}" />
							</div>
							<div class="form-group">
								<input type="text" name="carno" id="carno" class="form-control"
									placeholder="${accident.carno}" />  
							</div>
							<div class="boardbtn">
								<input type="submit" value="수정 완료">
								<input type="reset" value="취소" onClick="location.href='accboardSearch.do?accidentno=${accident.accidentno}&pageNo=${pageNo}'">
							</div>
						</form>
					</div>
				</div>
				<jsp:include page="board_sidebar.jsp"></jsp:include>
			</div>
		</div>
	</div>
</section>