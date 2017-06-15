<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal-body">
	<div class="modal-body">
	<div class="row tm-white-bg">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h5 class="modal-title"><span class="modal-title">차량 반납 연장 신청<span></h5>
		<div class="section-margin-top">
			<form class="hotel-search-form" id="frm" action="delayUpdate.do" method="post">
				<div class="form-group">
					<%-- <div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" name="returndate" id="returndate"
							placeholder="-- 반납 연장일 --" /> <span class="input-group-addon">
							<span class="fa fa-calendar"></span>
						</span>
						
					</div> --%>
					<div class='input-group'>
						<input id="startdate" name="startdate" class="form-control" type="date" placeholder="원하는 반납일을 입력해 주세요">
						<span class="input-group-addon"><span class="fa fa-calendar"></span>
						<input type="hidden" name="carno" id="carno" value="${carno}">
					</div>
				</div>
				<!-- <input type="submit" value="연장 신청" /> -->
				<button class="tm-yellow-btn">연장 신청</button>
				<button class="tm-yellow-btn" data-dismiss="modal">취소</button>
				<div class="form-group text-center">
				
			<a href="" class="reservation">
			</a>
		</div>
		</form>
		</div>
		
	</div>
	</div>
</div>

