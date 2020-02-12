
<div class="container-fluid">
	<div class="row mt-5">
		<div class="col-md-12 d-flex justify-content-center mt-5"> 
			<div class="card" style="width: 25rem;" >
			<div class="card-body">
				<h4 class="card-title text-center mb-4 mt-1">Login</h4>
				<hr>
				<?php echo (isset($message))? $message: ''; ?>
				<form role="form" method="POST" action="<?php echo base_url()?>login">
				<div class="form-group">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i> </span>
					</div>
					<input name="email" class="form-control" placeholder="Email or login" type="email" required>
				</div> <!-- input-group.// -->
				</div> <!-- form-group// -->
				<div class="form-group">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
					<input class="form-control" name="pass" placeholder="******" type="password" required>
				</div> <!-- input-group.// -->
				</div> <!-- form-group// -->
				<div class="form-group">
				<input type="hidden" name="action" value="login">
				<button type="submit" class="btn btn-primary btn-block"> Login  </button>
				</div> <!-- form-group// -->
				
				</form>
				<div class="text-center">
					<a class="small" href="<?php echo site_url('forgot-password'); ?>">Forgot Password?</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>




