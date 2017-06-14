<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
$(function () {
	var reserveWait = ${reserveWait};
	var reserveConfirm = ${reserveConfirm};
	var returnWait = ${returnWait};
	var accidentConfirm = ${accidentConfirm};
	
	var chart = Highcharts.chart('chart', {
	
	    title: {
	        text: '차량 렌트 신청 현황'
	    },
	
	    xAxis: {
	        categories: ['예약', '대여', '반납', '사고']
	    },
	
	    series: [{
	        type: 'column',
	        colorByPoint: true,
	        data: [reserveWait, reserveConfirm, returnWait, accidentConfirm],
	        showInLegend: false
	    }]
	});
	
	$('#plain').click(function () {
	    chart.update({
	        chart: {
	            inverted: false,
	            polar: false
	        },
	        subtitle: {
	            text: 'Plain'
	        }
	    });
	});

	$('#inverted').click(function () {
	    chart.update({
	        chart: {
	            inverted: true,
	            polar: false
	        },
	        subtitle: {
	            text: 'Inverted'
	        }
	    });
	});
});
</script>
<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3">
					<hr>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<h2 class="tm-section-title">관리자 페이지</h2>
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
					<div class="row">
						<div class="dreamcrub">
							<ul class="breadcrumbs">
								<li class="home"><a href="adminPage.do"
									title="Go to Home Page"> <span
										class="glyphicon glyphicon-home"></span> 관리자 홈
								</a></li>
							</ul>
							<ul class="previous">
								<li><a href="adminPage.do">이전 페이지로</a></li>
							</ul>
							<div class="clearfix"></div>
							<div class="page-header">
								<h3>오늘의 할일  (To-Do List)</h3>
							</div>
						<div id="chart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
						<button id="plain">Plain</button>
						<button id="inverted">Inverted</button>
						<button id="polar">Polar</button>						
					</div>
				</div>				
			</div>
			<jsp:include page="adminPage_sidebar.jsp" />
		</div>
	</div>
</section>