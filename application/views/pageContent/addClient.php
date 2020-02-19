<?php echo validation_errors(); ?>
<?php echo (isset($addClientMessage))? $addClientMessage : ' ';?>
<div class="card shadow mb-3">
    <div class="card-header py-3">
    <?php
        //@param 1 action location one form is submitted
        //@param 2 attributes for the form tag
        echo form_open_multipart('register-client');
    ?>    
    <input type="hidden" name="action" value="addClient">
    <span class="float-right ">
        <button  id="addClient" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-user-plus"></i> Add Client</button>
    </span>
    <h1 class="h4 mb-2 text-gray-800">Client Information</h1>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-md-6"><!--left col-->
                <div class="text-center">
                    <img src="<?php echo base_url()?>upload/default_profile_img.png" class="avatar rounded img-thumbnail" alt="avatar">
                    <br>
                    <?php //echo isset($clientName)? '<h3 class=" ">'.$clientName.'</h3>' : 'Client Image'; ?>
                    <div class="p-image">
                        <a href="#" id="upload-client-img">
                        <i class="fa fa-camera "></i> Upload Image
                        </a>
                        <input class="client-img-upload" name="clientImg" type="file" accept="image/*" style="display: none;"/>
                        
                    </div>
                </div>
                <br>
                
                <!-- <form class="form" action="<?php //echo base_url()?>register-client" method="post" id="clientInfoForm"> -->
                    <input type="hidden" name="action" value="addClient">
                    <h6>
                        <small class="font-weight-bold">
                        PERSONAL INFORMATION
                        <hr>    
                        </small>        
                    </h6>
                    <!--Start of personal information form   -->
                    <div class="row">
                        <div class="col col-md-6 form-group">
                            <label for="first_name">First Name:</label>
                            <input type="text" class="form-control" name="fname" id="fname" placeholder="John..."  required>
                        </div>
                        <div class="col col-md-6 form-group">
                            <label for="last_name">Last Name:</label>
                            <input type="text" class="form-control" name="lname" id="lname" placeholder="Doe..."  required>
                        </div>
                        <div class="col form-group">
                            <label for="last_name">Middle Name:</label>
                            <input type="text" class="form-control" name="mname" id="mname" placeholder="Dutch..." >
                        </div>
                    
                    </div>
                    <div class="row">
                        <div class="col col-mb-6">
                            <label for="maritalStatus">Gender:</label>
                            <div class="form-group pl-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="M" checked>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="F">
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col col-mb-6">
                            <label for="dob">DOB:</label>
                            <input class="form-control" name="dob" type="date" value="" id="" required>
                        </div>
                    </div>
                    <label for="maritalStatus">Marital Status:</label>
                    <div class="col col-mb-6">
                           <div class="form-group">
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="single" value="Single" checked>
                                    <label class="form-check-label" for="single">Single</label>
                                </div>
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="married" value="Married">
                                    <label class="form-check-label" for="married">Married</label>
                                </div>
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="commonLaw" value="Common-Law" >
                                    <label class="form-check-label" for="commonLaw">Common-Law</label>
                                </div>
                           </div>
                    </div>
                    <div class="row">
                        <div class="col col-md-6 form-group">
                                <label for="country">Country:</label>
                                <input type="text" class="form-control" name="country" id="country" placeholder=""  required>
                        </div>
                        <div class="col col-md-6 form-group">
                            <label for="exampleFormControlSelect1">District</label>
                            <select class="form-control" name="district" id="">
                                <option>Corozal</option>
                                <option>Orange Walk</option>
                                <option>Cayo</option>
                                <option>Belize</option>
                                <option>Stann Creek</option>
                                <option>Toledo</option>
                            </select>
                        </div>
                    </div>
                    <div class=" row form-group">
                        <div class="col col-md-6">
                            <label for="first_name">City/Town/Village:</label>
                            <input type="text" class="form-control" name="ctv" id="ctv" placeholder="" required>
                        </div>
                        <div class="col col-md-6">
                                <label for="first_name">SSN:</label>
                                <input type="text" class="form-control" name="ssn" id="ssn" placeholder=""  required>
                        </div> 
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-6">
                            <label for="first_name">Home Phone #:</label>
                            <input type="number" class="form-control" name="homePhone" id="" placeholder="" >
                        </div>
                        <div class="col col-md-6">
                            <label for="first_name">Mobile Phone #:</label>
                            <input type="number" class="form-control" name="mobilePhone" id="" placeholder=""  required>
                        </div>
                    </div> 
                    <div class="row form-group">
                        <div class="col col-md-6">
                            <label for="street">Street Address:</label>
                            <input type="text" class="form-control" name="street" id="" placeholder=""  required>
                        </div>
                        <div class="col col-md-6">
                            <label for="first_name">Email:</label>
                            <input type="text" class="form-control" name="email" id="" placeholder=""  required>
                        </div>
                   </div> 
            <!--End of personal information col -->
            </div><!--/col-4-->
            <div class="col col-md-6 mt-5">
                    
                    <h6>
                        <small class="font-weight-bold">
                        EMERGENCY CONTACT INFORMATION
                        <hr>
                        </small>        
                    </h6>
                    
                    <div class="row mb-1">
                        <div class="col col-md-6">
                            <label for="ecName">Emergency Contact Name:</label>
                            <input type="text" class="form-control" name="ecName" id="" placeholder="" required>
                        </div>
                        <div class="col col-md-6">
                            <label for="ecNumber">Emergency Contact Number:</label>
                            <input type="number" class="form-control" name="ecNumber" id="" placeholder=""  required>
                        </div>
                        <div class="col">
                            <label for="ecRelation">Emergency Contact Relationship:</label>
                            <input type="text" class="form-control" name="ecRelation" id="" placeholder="" required>
                        </div>
                    </div>
                    <br>
                    <h6>
                        <small class="font-weight-bold">
                        PERSONAL REFERENCES
                        <hr>
                        </small>        
                    </h6>
                    <div class="row">
                        <div class="col col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refName1" id="" placeholder="" required>
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refAddress1" id="" placeholder="" required>
                        </div>
                        <div class="col col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refCity1" id="" placeholder="" required>
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="number" class="form-control" name="refPhone1" id="" placeholder=""  required>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refName2" id="" placeholder="">
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refAddress2" id="" placeholder="">
                        </div>
                        <div class="col col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refCity2" id="" placeholder="">
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="number" class="form-control" name="refPhone2" id="" placeholder="" >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refName3" id="" placeholder="" >
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refAddress3" id="" placeholder="">
                        </div>
                        <div class="col col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refCity3" id="" placeholder="">
                        </div>
                        <div class="col col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="number" class="form-control" name="refPhone3" id="" placeholder="" >
                        </div>
                    </div>
                    <!-- <hr>
                    <h6>
                        <small>
                        TRAINING LIST
                        </small>        
                     </h6> -->
                    <!-- Table below will display the current trainings -->
                    <!-- <div class="row">
                        <div class="col">
                        
                            <table class="table shadow table-light borderless rounded">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Training</th>
                                        <th>Enrolled</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Time Management</td>
                                        <td>2019</td>
                                        <td><a href="#">add/remove</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        
                        </div>
                    </div> -->
                      
                    <!-- <ul class="list-group">
                    
                        <li class="list-group-item font-weight-bold bg-dark text-light text-right"> <span class="pull-left">Training</span>Enrolled
                        </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Anger Management</strong></span> June 4, 2009</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Time Management</strong></span> March 1, 2007</li>
                        <!- <li class="list-group-item text-right"> <span class="pull-left">Add Another Training</span>
                        <a class="btn btn-sm btn-primary rounded-circle" href="<?php //echo site_url()?>add-training"><i class="fa fa-plus"></i></a>
                        </li> ->
                    </ul>   -->
                </form>
            </div><!--/col-8-->
        </div><!--/row-->
    </div>
</div><!--/end of card-->


