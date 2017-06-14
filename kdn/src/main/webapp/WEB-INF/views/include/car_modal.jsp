<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<div class="modal-body">
	<div class="modal-body">
	<div class="row tm-white-bg">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<div class="section-margin-top">
			<form class="hotel-search-form" id="frm" action="available.do" method="post">
				<div class="form-group">
					<div class='input-group date' id='datetimepicker1'>
						<input type='text' class="form-control" name="startdate"
							placeholder="-- 대여일 --" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" name="enddate"
							placeholder="-- 반납일 --" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
					</div>
				</div>${carname}${cartype}
				<input type="hidden" name="car" id="car" value="${carname}">
				<div class="form-group text-center">
					<a href="" class="reservation">
						<button class="tm-yellow-btn">예약 가능 조회</button>
					</a>
				</div>
			</form>
		</div>
	</div>
	</div>
</div>
