<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal-body">
	<div class="modal-body">
	<div class="row tm-white-bg">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<div class="section-margin-top">
			<form class="hotel-search-form" id="frm" action="delayUpdate.do" method="post">
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" name="returndate" id="returndate"
							placeholder="-- 반납일 --" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
						<input type="hidden" name="carno" id="carno" value="${carno}">
					</div>
				</div>
				<div class="form-group text-center">
			<a href="" class="reservation">
				<input type="submit" value="예약 가능 조회" />
			</a>
		</div>
		</form>
		</div>
		
	</div>
	</div>
</div>

