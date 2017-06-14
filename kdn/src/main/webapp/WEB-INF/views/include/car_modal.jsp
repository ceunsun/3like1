<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<div class="modal-body">
	<div class="modal-body">
	<div class="row tm-white-bg">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h5 class="modal-title"><span class="modal-title">차량 예약 가능 조회<span></h5>
		<div class="section-margin-top">
			<form class="hotel-search-form" id="frm" action="available.do" method="post">
				<div class="form-group">
					<div class='input-group date' id='datetimepicker1'>
						<input type='text' class="form-control" name="startdate"
							placeholder="대여일을 입력해 주세요" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" name="enddate"
							placeholder="반납일을 입력해 주세요" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
					</div>
				</div>
				<input type="hidden" name="car" id="car" value="${carname}">
				<button class="tm-yellow-btn">예약 가능 조회</button>
				<button class="tm-yellow-btn" data-dismiss="modal">취소</button>
			</form>
		</div>
	</div>
	</div>
</div>
