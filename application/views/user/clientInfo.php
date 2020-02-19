<div class="card shadow mb-3">
    <div class="card-header py-3">
        <span class="float-right d-inline">
            <button id="editClient" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-edit"></i> Edit</button>
            <button id="saveClientInfo" style="display:none;" class="btn btn-sm btn-success " type="hidden"><i class=" fa fa-check"></i> Save</button>
        </span>
    <h1 class="h4 mb-2 text-gray-800">Client Information</h1>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-md-4"><!--left col-->
                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar rounded-circle img-thumbnail" alt="avatar">
                    <?php echo isset($name)? '<h3 class=" ">'.$name.'</h3>' : 'Profile'; ?>
                    <h6>Upload a Photo</h6>
                    <input type="file" class="text-center center-block file-upload ml-3 pl-5">
                </div>
                <br>

                <ul class="list-group">
                
                    <li class="list-group-item font-weight-bold bg-dark text-light text-right"> <span class="pull-left">Training</span>Enrolled
                    </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Anger Management</strong></span> June 4, 2009</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Time Management</strong></span> March 1, 2007</li>
                    <!-- <li class="list-group-item text-right"> <span class="pull-left">Add Another Training</span>
                    <a class="btn btn-sm btn-primary rounded-circle" href="<?php echo site_url()?>add-training"><i class="fa fa-plus"></i></a>
                    </li> -->
                </ul>  
            </div><!--/col-4-->
            <div class="col col-md-8">
        
                <br>
                <form class="form" action="<?php echo base_url()?>update-profile" method="post" id="clientInfoForm">
                    
                    <div class="row mb-3">
                        <div class="col col-md-6">
                            <label for="first_name">First Name:</label>
                            <input type="text" class="form-control" name="fname" id="fname" placeholder="John..." title="enter your first name if any.">
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Last Name:</label>
                            <input type="text" class="form-control" name="lname" id="lname" placeholder="Doe..." title="enter your last name if any.">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col col-md-6">
                            <label for="first_name">Address</label>
                            <input type="text" class="form-control" name="first_name" id="address" placeholder="56 Quilter Avenue..." title="enter your address if any.">
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Address#2:</label>
                            <input type="text" class="form-control" name="address2" id="address2" placeholder="46 Mirage..." title="enter your second address if any.">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col col-md-6">
                            <label for="first_name">Phone #</label>
                            <input type="number" class="form-control" name="first_name" id="first_name" placeholder="668 7434..." title="enter your first name if any.">
                        </div>
                        <div class="col col-md-6" >
                            <label for="last_name">Email:</label>
                            <input type="text" class="form-control" name="email" id="last_name" placeholder="someEmail@sog.com..." title="enter your email if any.">
                        </div>
                    </div>
                </form>
            
            <hr>
            </div><!--/col-8-->
        </div><!--/row-->
    </div>
</div><!--/end of card-->


