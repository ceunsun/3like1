<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal fade" id="loginModal" role="dialog">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">로그인</h4>
			</div>	
			<div class="modal-footer">
				<form action="login.do" method="post" class="tm-contact-form">
					<div class="form-group">
						<input type="text" name="memberno" id="memberno" class="form-control" placeholder="사원번호" required/>
					</div>
					<div class="form-group">
						<input type="password" name="pwd" id="pwd" class="form-control" placeholder="비밀번호" required/>
					</div>
					<div class="form-group">
						<button class="login-btn tm-submit-btn" type="submit" name="submit">로그인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>