<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="tm-section-header section-margin-top">
			<div class="col-lg-4 col-md-3 col-sm-3">
				<hr>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<h2 class="tm-section-title">고객센터</h2>
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
									<a href="home.do" title="Go to Home Page">
										<span class="glyphicon glyphicon-home"></span> 홈
									</a>
									<span>&gt;</span></li>
								<li class="women">문의 게시판</li>
							</ul>
							<ul class="previous">
								<li><a href="board.do?pageNo=${pageNo}">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="toolbar">
							<div class="sort">
								<div class="sort-by">
									<label>Sort By</label>
									<select>
										<option value="">제목</option>
										<option value="">작성자</option>
									</select><a href=""><img src="img/arrow2.gif" alt="" class="v-middle"></a>								</div>
								</div>
							<div class="clearfix"></div>
						</div>
						<table class="table table-hover table-bordered table-responsive table-striped board_table">
							<thead>
								<tr>
									<th>글 번호</th><th>제목</th><th>작성자</th><th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="board" items="${bList}">
									<tr onclick="location.href='boardSearch.do?boardno=${board.boardno}&pageNo=${pageNo}'">
										<td>${board.boardno}</td>
										<td>${board.title}</td>
										<td>${board.memberno}</td>
										<td>${board.regdate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="boardbtn">
						<a href="writeForm.do?pageNo=${pageNo}"><input type="button" value="글쓰기"></a>
						<ul class="pagenation">
							<c:forEach var='i' begin='1' end='${totalPage}'>
								<li class="active"><a href="board.do?pageNo=${i}">${i}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<jsp:include page="board_sidebar.jsp"></jsp:include>
			</div>
		</div>		
	</div>
</section>
