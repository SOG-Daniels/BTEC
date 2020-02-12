<div class="card shadow mb-3">
    <div class="card-header py-3">
        <?php echo isset($name)? '<h3 class="d-inline ">'.$name.'</h3>' : 'Profile'; ?>
        <span class="float-right d-inline">
            <button id="editProfile" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-edit"></i> Edit</button>
            <button id="saveProfileInfo" style="display:none;" class="btn btn-sm btn-success " type="hidden"><i class=" fa fa-check"></i> Save</button>
        </span>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-md-4"><!--left col-->
                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar rounded-circle img-thumbnail" alt="avatar">
                    <h6>Upload a Photo</h6>
                    <input type="file" class="text-center center-block file-upload ml-3 pl-5">
                </div>
                <br>

            
            
            
            <!-- <ul class="list-group">
                <li class="list-group-item text-muted">Trainings <i class=""></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            </ul>  -->
            
            
            </div><!--/col-3-->
            <div class="col col-md-8">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link "data-toggle="tab" href="#changePass" role="tab" aria-controls="changePass" aria-selected="false">Change Password</a>
                    </li>
                </ul>

                
            <div class="tab-content" id="profileTabContent">
                <div class="tab-pane fade show active" id="profile">
                    <br>
                    <form class="form" action="<?php echo base_url()?>update-profile" method="post" id="profileForm">
                        
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">First name</label>
                                <input type="text" class="form-control" name="fname" id="fname" placeholder="John..." title="enter your first name if any.">
                            </div>
                            <div class="col col-md-6">
                                <label for="last_name">Last name</label>
                                <input type="text" class="form-control" name="lname" id="lname" placeholder="Doe..." title="enter your last name if any.">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">Address</label>
                                <input type="text" class="form-control" name="first_name" id="address" placeholder="56 Quilter Avenue..." title="enter your address if any.">
                            </div>
                            <div class="col col-md-6">
                                <label for="last_name">Email:</label>
                                <p>SOmeEmail@somemail.com</p>
                                <!-- <input type="text" class="form-control" name="email" id="last_name" placeholder="someEmail@sog.com..." title="enter your email if any."> -->
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">Phone #</label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="668 7434..." title="enter your first name if any.">
                            </div>
                            </form>
                            
                        </div>
                    <!-- </form> -->
                
                <hr>
                
                </div><!--/tab-pane-->
                
                <div class="tab-pane fade" role="tabpanel" aria-labelledby="profile-tab" id="changePass">
                    <br>
                    <form class="form" action="##" method="post" id="registrationForm">
                        <div class="row col col-md-6 offset-1">
                            <label for="password">Old Password:</label>
                            <input type="password" class="form-control" name="oldPass" id="password" placeholder="*******" title="enter your password.">
                        </div>
                        <br>                        
                        <div class="row col col-md-6 offset-1">
                            <label for="password2">New Password:</label>
                            <input type="password" class="form-control" name="newPass" id="password2" placeholder="*******" title="enter your password2.">
                        </div>
                        <br>
                        <div class="row col col-md-6 offset-1">
                            <label for="password2">Confirm New Password:</label>
                            <input type="password" class="form-control" name="confirmPass" id="password2" placeholder="*******" title="enter your password2.">
                        </div>
                        <br>
                        <div class="row col offset-1">
                            <button class="btn btn-md btn-primary " type="submit"><i class=""></i> Change Password</button>
                        </div>
                            
                    </form>
                    </div><!--/tab-pane-->
                </div><!--/col-9-->
            </div><!--/row-->
        </div>
    </div>
</div><!--/end of card-->
