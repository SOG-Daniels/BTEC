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
                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar rounded-circle img-thumbnail" alt="avatar">
        <?php echo isset($name)? '<h3 class="">'.$name.'</h3>' : 'Profile'; ?>
                    <!-- <h6>Upload a Photo</h6> -->
                    <!-- <input type="file" class="text-center center-block file-upload ml-3 pl-5"> -->
                </div>
                <br>

            
            
            
            <!-- <ul class="list-group">
                <li class="list-group-item text-muted">Trainings <i class=""></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            </ul>  -->
            
            
            </div><!--/col-3-->
            <div class="col col-md-8">
                <form class="form" action="<?php echo base_url()?>update-profile" method="post" id="userForm">
                        
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
                                <!-- <p>SOmeEmail@somemail.com</p> -->
                                <input type="text" class="form-control" name="email" id="last_name" placeholder="someEmail@sog.com..." title="enter your email if any.">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-md-6">
                                <label for="first_name">Phone #</label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="668 7434..." title="enter your first name if any.">
                            </div>
                            <div class="col col-md-6" >
                                <label class="" for="last_name">Priviledge:</label>
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input" type="checkbox" value="viewClients" id="viewClients">
                                        <label class="form-check-label" for="viewClients">
                                            View Clients
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input" type="checkbox" value="viewUsers" id="viewUsers">
                                        <label class="form-check-label" for="viewUsers">
                                            View Users
                                        </label>
                                    </div>
                                </div>
                                
                                <div class="row offset-md-1">
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input" type="checkbox" value="addClient" id="addClient" >
                                        <label class="form-check-label" for="addClient">
                                            Add Client
                                        </label>
                                    </div>
                                    <div class="col col-md-5 form-check">
                                        <input class="form-check-input" type="checkbox" value="addClient" id="addClient" >
                                        <label class="form-check-label" for="addClient">
                                            Add User
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
