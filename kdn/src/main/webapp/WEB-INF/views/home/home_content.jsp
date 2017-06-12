<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="container tm-home-section-1" id="more">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-6">
			<!-- Nav tabs -->
			<div class="tm-home-box-1">
				<ul class="nav nav-tabs" role="tablist"
					id="hotelCarTabs">
					<li role="presentation" class="active"><a href="#hotel"
						aria-controls="hotel" role="tab" data-toggle="tab">실시간 예약</a></li>
				</ul>				
				<div class="tab-content tm-white-bg">
					<div role="tabpanel" class="tab-pane fade in active id="car">
						<div class="tm-search-box effect2">
							<form class="hotel-search-form" id="frm">
								<div class="tm-form-inner">
									<div class="form-group margin-bottom-0">
										<select class="form-control" id="fuel">
											<option value="">-- 유종 --</option>
											<option value="전기">전기</option>
											<option value="휘발유">휘발유</option>
										</select>
									</div>
									<div class="form-group">
										<select class="form-control" id="car">
											<option value="">-- 차종 --</option>
											<option value="쏘나타">쏘나타</option>
											<option value="말리부">말리부</option>
											<option value="아이오닉">아이오닉</option>
											<option value="모델S">모델S</option>
										</select>
									</div>
									<div class="form-group">
										<div class='input-group date' id='datetimepicker1'>
											<input type='text' class="form-control"
												placeholder="-- 대여일 --" /> <span
												class="input-group-addon"> <span
												class="fa fa-calendar"></span>
											</span>
										</div>
									</div>
									<div class="form-group">
										<div class='input-group date' id='datetimepicker2'>
											<input type='text' class="form-control"
												placeholder="-- 반납일 --" /> <span
												class="input-group-addon"> <span
												class="fa fa-calendar"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="form-group tm-yellow-gradient-bg text-center">
									<a href="available.do?pageNo=1" class="reservation" data-toggle="modal" data-target="#searchModal">
									<button class="tm-yellow-btn">예약 가능 조회</button></a>
								</div>
								<div class="modal fade" id="searchModal" role="dialog">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<%-- <jsp:include page="../include/search_modal.jsp" /> --%>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-6">
			<div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-center">
				<img src="img/index-01.jpg" alt="image" class="img-responsive">
				<a href="#">
					<div class="tm-green-gradient-bg tm-city-price-container">
						<span>New York</span> <span>$6,600</span>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-6">
			<div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-right">
				<img src="img/index-02.jpg" alt="image" class="img-responsive">
				<a href="#">
					<div class="tm-red-gradient-bg tm-city-price-container">
						<span>Paris</span> <span>$4,200</span>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- <div class="section-margin-top">
		<div class="row">
			<div class="tm-section-header">
				<div class="col-lg-3 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<h2 class="tm-section-title">Lorem Ipsum Dolor</h2>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">
						<img src="img/index-03.jpg" alt="image" class="img-responsive">
						<h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
						<p class="tm-date">28 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description">Travel</span></a> <a href="#"
								class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">
						<img src="img/index-04.jpg" alt="image" class="img-responsive">
						<h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
						<p class="tm-date">26 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description">Travel</span></a> <a href="#"
								class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">
						<img src="img/index-05.jpg" alt="image" class="img-responsive">
						<h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
						<p class="tm-date">24 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description">Travel</span></a> <a href="#"
								class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2 tm-home-box-2-right">
						<img src="img/index-06.jpg" alt="image" class="img-responsive">
						<h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
						<p class="tm-date">22 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description">Travel</span></a> <a href="#"
								class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div> -->
		</div>
		<div class="row">
			<!-- <div class="col-lg-12">
					<p class="home-description">
						Holiday is free Bootstrap v3.3.5 responsive template for tour and
						travel websites. You can download and use this layout for any
						purpose. You do not need to provide a credit link to us. If you
						have any question, feel free to <a
							href="http://www.facebook.com/templatemo" target="_parent">contact
							us</a>. Credit goes to <a rel="nofollow" href="http://unsplash.com"
							target="_parent">Unspash</a> for images used in this template.
					</p>
				</div> -->
		</div>
	</div>
</section>

<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">Popular Packages</h2>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/index-07.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell
							velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
							auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description box-3">Travel</span></a> <a
								href="#" class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/index-08.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell
							velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
							auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description box-3">Travel</span></a> <a
								href="#" class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/index-09.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell
							velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
							auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description box-3">Travel</span></a> <a
								href="#" class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="img/index-10.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell
							velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
							auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"> <i
								class="fa fa-heart tm-home-box-2-icon border-right"></i></a> <a
								href="#" class="tm-home-box-2-link"><span
								class="tm-home-box-2-description box-3">Travel</span></a> <a
								href="#" class="tm-home-box-2-link"><i
								class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>