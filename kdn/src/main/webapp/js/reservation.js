$(function(){
	$('#fuel').change(function(){
		var value = $('#fuel').val()
		
		if(value=='전기'){
			var	output = '<option value="아이오닉">아이오닉</option>';
				output += '<option value="모델S">모델S</option>';
		}
		if(value=='휘발유'){
			var	output = '<option value="쏘나타">쏘나타</option>';
				output += '<option value="말리부">말리부</option>';
		}
		$('#car').html(output);
	});
	
	$('#car').change(function(){
		var value = $('#car').val()
		
		if(value=='아이오닉'){
			var output1 = '<option value="">전기</option>';
			var	output2 = '<option value="아이오닉">아이오닉</option>';
				output2 += '<option value="모델S">모델S</option>';
		}
		if(value=='모델S'){
			var output1 = '<option value="">전기</option>';
			var	output2 = '<option value="모델S">모델S</option>';
				output2 += '<option value="아이오닉">아이오닉</option>';
		}
		if(value=='쏘나타'){
			var output1 = '<option value="">휘발유</option>';
			var	output2 = '<option value="쏘나타">쏘나타</option>';
				output2 += '<option value="말리부">말리부</option>';
		}
		if(value=='말리부'){
			var output1 = '<option value="">휘발유</option>';
			var	output2 = '<option value="말리부">말리부</option>';
				output2 += '<option value="쏘나타">쏘나타</option>';
		}
		
		$('#fuel').html(output1);
		$('#car').html(output2);
	})
});