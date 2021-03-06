<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
$(function() {
	$('#startdate').change(function(event) {
	alert('실행');
		/* var memberno = ${memberno};
		alert(memberno);
		if (memberno == '') {
			alert('로그인 후에 이용 가능 합니다.');
			return false;
		}	
		if(memberno != ''){
			$(this).submit();
		} */
	});
});
</script>
<style>
.hyundai{
	color: blue;
}
.chevrolet{
	color: darkorange;
}
.tesla{
	color: blue;
}
.heavy{
	color: midnightblue;
}
.lightHeavy{
	color: darkcyan;
}

</style>
<div class=row>
	<div class="col-sm-3">
		<div class="tm-home-box-1">
			<ul class="nav nav-tabs" role="tablist" id="hotelCarTabs">
				<li role="presentation" class="active"><a href="#hotel"
						aria-controls="hotel" role="tab" data-toggle="tab">실시간 예약</a></li>
			</ul>
			<div class="tab-content tm-white-bg">
				<div role="tabpanel" class="tab-pane fade in active id="car">
					<div class="tm-search-box effect2">
						<form class="hotel-search-form" id="frm" action="available.do"
							method="post">
							<div class="tm-form-inner">
								<div class="form-group margin-bottom-0">
									<select class="form-control" id="fuel" name="fuel">
										<option value="">-- 유종 --</option>
										<option value="전기">전기</option>
										<option value="휘발유">휘발유</option>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control" id="car" name="car">
										<option value="">-- 차종 --</option>
										<option value="소나타">소나타</option>
										<option value="말리부">말리부</option>
										<option value="아이오닉">아이오닉</option>
										<option value="모델S">모델S</option>
									</select>
								</div>
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
								</div>
							</div>
							<div class="form-group text-center">
								<a href="" class="reservation">
									<button class="tm-yellow-btn">예약 가능 조회</button>
								</a>
							</div>
							<%-- <div class="modal fade" id="searchModal" role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<jsp:include page="../include/search_modal.jsp" />
									</div>
								</div>
							</div> --%>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-9">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title"><b>보유 차량</b></h2>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/malibu.jpg" alt="image" width=253px height=210px
							class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">제조사 : <span class="brand chevrolet">쉐보레</span><br><br>
						차종 : <span class="heavy">중형차</span><br><br>연비 : 10.8km/ℓ~13.0km/ℓ </p>
						<div class="tm-home-box-2-container">
							<a href="carModal.do?carno=6857" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="carModal.do?carno=6857" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
								<span class="tm-home-box-2-description box-3">말리부</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/sonata.jpg" alt="image" width=253px height=210px
							class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">제조사 : <span class="brand hyundai">현대자동차</span><br><br>
						차종 : <span class="heavy">중형차</span><br><br>연비 : 10.7km/ℓ~16.1km/ℓ </p>
						<div class="tm-home-box-2-container">
							<a href="carModal.do?carno=2731" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<i class="fa fa-heart tm-home-box-2-icon border-right"></i></a> 
							<a href="carModal.do?carno=2731" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<span class="tm-home-box-2-description box-3">소나타</span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/ionic.jpg" alt="image" width=253px height=210px
							class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">제조사 : <span class="brand hyundai">현대자동차</span><br><br>
						차종 : <span class="lightHeavy">준중형차</span><br><br>1회 충전 주행가능거리 : 191km </p>
						<div class="tm-home-box-2-container">
							<a href="carModal.do?carno=9032" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<i class="fa fa-heart tm-home-box-2-icon border-right"></i></a> 
							<a href="carModal.do?carno=9032" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<span class="tm-home-box-2-description box-3">아이오닉</span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/models.jpg" alt="image" width=253px height=210px
							class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">제조사 : <span class="brand tesla">테슬라</span><br><br>
						차종 : <span class="heavy">중형차</span><br><br>1회 충전 주행가능거리 : 470km </p>
						<div class="tm-home-box-2-container">
							<a href="carModal.do?carno=2560" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal"> 
							<i class="fa fa-heart tm-home-box-2-icon border-right"></i></a> 
							<a href="carModal.do?carno=2560" class="tm-home-box-2-link" data-toggle="modal" data-target="#carModal">
							<span class="tm-home-box-2-description box-3">모델S</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="carModal" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<jsp:include page="../include/car_modal.jsp"></jsp:include>
		</div>
	</div>
</div>
