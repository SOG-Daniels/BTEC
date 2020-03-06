
<div class="card shadow mb-3">
    <div class="card-header py-3">
        <span class="float-right d-inline">
            <button id="editUser" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-edit"></i> Edit</button>
            <button id="saveUserInfo" style="display:none;" class="btn btn-sm btn-success " type="hidden"><i class=" fa fa-check"></i> Save</button>
        </span>
<h1 class="h4 mb-2 text-gray-800">User Information</h1>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-md-4"><!--left col-->
                <form id="upload-img-form">
                    <div class="text-center">
                    <img src="<?php echo isset($userData['imgPath'])? base_url().$userData['imgPath'] : base_url()."upload/default_profile_img.png";?>" class="avatar rounded-circle img-thumbnail">
                    <div class="p-image">
                        <!-- <a href="#" id="upload-img" >
                        <i class="fa fa-camera "></i> Upload Image
                        </a> -->
                        <!-- <input class="file-upload" name="profileImg" type="file" accept="image/*" style="display: none;"/> -->
                        
                    </div>
                </form>
                </div>
                <br>

            
            
            
            <!-- <ul class="list-group">
                <li class="list-group-item text-muted">Trainings <i class=""></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            </ul>  -->
            
            
            </div><!--/col-3-->
            <div class="col col-md-8">
                <form class="form" action="<?php echo base_url().'update-user-profile';?>" method="post" id="userInfoForm">
                        
                        <input type="hidden" id="base" value="<?php echo base_url(); ?>">
                       <input type="hidden" name="action" value="saveUserInfo"> 
                       <input type="hidden" name="userId" value="<?php echo (isset($userData['id'])? $userData['id'] : ' ');  ?>"> 
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">First name:</label>
                                <input type="text" class="form-control" name="fname" id="fname"  value = "<?php echo (isset($userData['fname']))? $userData['fname'] : ' ';?>" required>
                            </div>
                            <div class="col col-md-6">
                                <label for="last_name">Last name:</label>
                                <input type="text" class="form-control" name="lname" id="lname" value = "<?php echo (isset($userData['lname']))? $userData['lname'] : ' ';?>" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">Username:</label>
                                <input type="text" class="form-control" name="username" id="username" value = "<?php echo (isset($userData['username']))? $userData['username'] : ' ';?>" required>
                            </div>
                            <div class="col col-md-6">
                                <label for="last_name">Email:</label>
                                <!-- <p>SOmeEmail@somemail.com</p> -->
                                <input type="text" class="form-control" name="email"  value = "<?php echo (isset($userData['email']))? $userData['email']: ' ';?>" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">Phone #:</label>
                                <input type="number" class="form-control" name="phone" id="phone" value = "<?php echo (isset($userData['phone']))? $userData['phone'] : ' ';?>" required>
                            </div>
                            <?php 
                                $action = array();
                                foreach ($userData['action'] as $key => $val){
                                    foreach ($val as $key => $data){
                                        array_push($action, $data);
                                    }
                                }
                            ?>
                            
                            <div class="col col-md-6" >
                                <label class="" for="last_name">Priviledge:</label>
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" name="privilege[]" value="2" id="privi2" <?php echo ( isset($action) && in_array(2, $action) )? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="viewClients">
                                            View Clients
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" name="privilege[]" value="4" id="privi4" <?php echo (isset($action) && in_array(4, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="viewUsers">
                                            View Users
                                        </label>
                                    </div>
                                </div>
                                
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="1" name="privilege[]" id="privi1"  <?php echo (isset($action) && in_array(1, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="addClient">
                                            Add Client
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="3" name="privilege[]" id="privi3"  <?php echo (isset($action) && in_array(3, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="addClient">
                                            Add User
                                        </label>
                                    </div>
                                </div>
                                 
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="7" name="privilege[]" id="privi7"  <?php echo (isset($action) && in_array(7, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="enrolledList">
                                            Edit Client
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="8" name="privilege[]" id="privi8"  <?php echo (isset($action) && in_array(8, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="editGrade">
                                            Edit User
                                        </label>
                                    </div>
                                </div>
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="5" name="privilege[]" id="privi5"  <?php echo (isset($action) && in_array(5, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="enrolledList">
                                            View Enrolled List
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input action" type="checkbox" value="6" name="privilege[]" id="privi6"  <?php echo (isset($action) && in_array(6, $action))? 'checked' : ' '; ?> disabled>
                                        <label class="form-check-label" for="editGrade">
                                            Edit Grade
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- </form> -->
                    </form>
                </div><!--/col-9-->
            </div><!--/row-->
        </div>
  
</div><!--/end of card-->
