<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <div class="modal-header tm-gray-bg">
</div> -->
<div class="modal-body tm-gray-bg">
	<div class="modal-body">
		<div class="row tm-white-bg">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<div class="tm-section-header section-margin-top search-modal-header">
				<div class="col-lg-4 col-md-3 col-sm-3">
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h4 class="tm-section-title">예약 가능 차량 조회</h4>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
				</div>
			</div>
			<div class="section-margin-top">
				<table class="table table-hover table-responsive table-striped board_table">
					<thead>
						<tr>
							<th>차량 이미지</th><th>차량명</th><th>차량 상태</th><th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="car" items="${cList}">
							<tr>
								<td><img src="img/${car.carimg}" class="img-responsive img-rounded"></td>
								<td>${car.carname}</td>
								<td>${car.carstatus}</td>
								<td><div class="boardbtn"><input type="submit" value="예약"></div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="pagenation">
			<c:forEach var='i' begin='1' end='${totalPage}'>
				<li class="active"><a href="available.do?pageNo=${i}" data-toggle="modal" data-target="#searchModal">${i}</a></li>
			</c:forEach>
		</ul>
		</div>
		
		<%-- <div class="row">
			<ul class="pagenation">
				<c:forEach var='i' begin='1' end='${totalPage}'>
					<li class="active"><a href="board.do?pageNo=${i}">${i}</a></li>
				</c:forEach>
			</ul>
		</div>	 --%>
	</div>
</div>
<!-- <div class="modal-footer tm-gray-bg">
</div> -->
