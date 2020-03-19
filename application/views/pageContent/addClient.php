<?php echo validation_errors(); ?>
<?php echo (isset($addClientMessage))? $addClientMessage : ' ';?>
<div class="card shadow-lg mb-3">
    <div class="card-header py-3">
    <?php
        //@param 1 action location one form is submitted
        //@param 2 attributes for the form tag
        echo form_open_multipart('register-applicant');
    ?>    
    <input type="hidden" name="action" value="addClient">
    <span class="float-right ">
        <button  id="addClient" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-user-plus"></i> Add Applicant</button>
    </span>
    <h1 class="h4 mb-2 text-gray-800">Application Form</h1>
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
                    <!-- <input type="hidden" name="userIdent" value="<?php //echo $this->session->userdata('userIdentity'); ?>"> -->
                    <h6>
                        <small class="font-weight-bold text-primary">
                        PERSONAL INFORMATION
                        <hr>    
                        </small>        
                    </h6>
                    <!--Start of personal information form   -->
                    <div class="row">
                        <div class="col-12 col-md-6 form-group">
                            <label for="first_name">First Name:</label>
                            <input type="text" class="form-control" name="fname" id="fname" placeholder="Danielson..."  required>
                        </div>
                        <div class="col-12 col-md-6 form-group">
                            <label for="last_name">Last Name:</label>
                            <input type="text" class="form-control" name="lname" id="lname" placeholder="Correa..."  required>
                        </div>
                        <div class="col-12 form-group">
                            <label for="last_name">Middle Name:</label>
                            <input type="text" class="form-control" name="mname" id="mname" placeholder="Linito..." >
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
                    <div class="col-12 col-mb-6">
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
                        <div class="col-12 col-md-6 form-group">
                                <label for="country">Country:</label>
                                <input type="text" class="form-control" name="country" id="country" placeholder="Belize..."  required>
                        </div>
                        <div class="col-12 col-md-6 form-group">
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
                        <div class="col-12 col-md-6">
                            <label for="first_name">City/Town/Village:</label>
                            <input type="text" class="form-control" name="ctv" id="ctv" placeholder="Ladyville Village..." required>
                        </div>
                        <div class="col-12 col-md-6">
                                <label for="first_name">SSN:</label>
                                <input type="text" class="form-control" name="ssn" id="ssn" placeholder="000123456..."  required>
                        </div> 
                    </div>
                    <div class="row form-group">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Home Phone #:</label>
                            <input type="number" class="form-control" name="homePhone" id="" placeholder="2555454..." >
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">Mobile Phone #:</label>
                            <input type="number" class="form-control" name="mobilePhone" id="" placeholder="6687434..."  required>
                        </div>
                    </div> 
                    <div class="row form-group">
                        <div class="col-12 col-md-6">
                            <label for="street">Street Address:</label>
                            <input type="text" class="form-control" name="street" id="" placeholder="54 Quilter Avenue..."  required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">Email:</label>
                            <input type="text" class="form-control" name="email" id="" placeholder="danielsoncorrea@gmail.com..."  required>
                        </div>
                   </div> 
                   <br>
                   <h6>
                        <small class="font-weight-bold text-primary">
                        CURRENT WORK INFO (Optional)
                        <hr>
                        </small>        
                    </h6>
                    
                    <div class="row mb-1">
                        <div class="col-12 col-md-6">
                            <label for="companyName">Company Name:</label>
                            <input type="text" class="form-control" name="company_name" id="" placeholder="BELTRAIDE..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="position">Position/Job Title:</label>
                            <input type="text" class="form-control" name="position" placeholder="Junior Developer..."  required>
                        </div>
                    </div>

            <!--End of personal information col -->
            </div><!--/col-4-->
            <div class="col col-md-6 mt-5">
                   <h6>
                        <small class="font-weight-bold text-primary">
                        EDUCATION
                        <hr>
                        </small>        
                    </h6>
                    
                    <div class="row mb-1">
                        <div class="col-12 col-md-6">
                            <label for="edName">Institution Name:</label>
                            <input type="text" class="form-control" name="ed_name" id="" placeholder="University of Belize..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="schoolLevel">Highest Level of Education</label>
                            <input type="text" class="form-control" name="ed_degree" id="" placeholder="Associates..." required>
                            
                        </div>
                        
                    </div>
                    <br> 
                    <h6>
                        <small class="font-weight-bold text-primary">
                        EMERGENCY CONTACT INFORMATION
                        <hr>
                        </small>        
                    </h6>
                    
                    <div class="row mb-1">
                        <div class="col-12 col-md-6">
                            <label for="ecName">Emergency Contact Name:</label>
                            <input type="text" class="form-control" name="ecName" id="" placeholder="Abelino Correa..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="ecNumber">Emergency Contact Number:</label>
                            <input type="number" class="form-control" name="ecNumber" id="" placeholder="6687434..."  required>
                        </div>
                        <div class="col-12">
                            <label for="ecRelation">Emergency Contact Relationship:</label>
                            <input type="text" class="form-control" name="ecRelation" id="" placeholder="Father..." required>
                        </div>
                    </div>
                    <br>
                    <h6>
                        <small class="font-weight-bold text-primary">
                        PERSONAL REFERENCES
                        <hr>
                        </small> 
                    </h6>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refName1" id="" placeholder="Daniels..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refAddress1" id="" placeholder="56 Quilter Avenue..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refCity1" id="" placeholder="Belize..." required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="number" class="form-control" name="refPhone1" id="" placeholder="6687434..."  required>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refName2" id="" placeholder="">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refAddress2" id="" placeholder="">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refCity2" id="" placeholder="">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="number" class="form-control" name="refPhone2" id="" placeholder="" >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refName3" id="" placeholder="" >
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refAddress3" id="" placeholder="">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refCity3" id="" placeholder="">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="number" class="form-control" name="refPhone3" id="" placeholder="" >
                        </div>
                    </div>
                    <br>
                    <h6>
                        <small class="font-weight-bold text-primary">
                        TRAINING PROGRAM
                        <hr>
                        </small>        
                    </h6>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label  for="trainings">Trainings:</label>
                                <select class="form-control" name="program" id="trainings">
                                <option  value="barbering">Introduction to Barbering</option>
                                <option  value="bartending">Bartending</option>
                                <option  value="bpo">Business Process Outsourcing</option>
                                <option  value="child_care">Child Care Training</option>
                                <option  value="computer_basics">Computer's For Everyday Use</option>
                                <option  value="event_planning">Event Planning</option>
                                <option  value="front_desk">Front Desk Training</option>
                                <option  value="home_health">Home Health Training</option>
                                <option  value="house_keeping">House Keeping</option>
                                <option  value="landscaping">Landscaping</option>
                                <option  value="life_guard">Life Guard Training</option>
                                <option  value="nail_tech">Nail Tech</option>
                                <option  value="wait_staff">Wait Staff Training</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <label for="PreTest">Pre-Test Avg:</label>
                            <input type="number" class="form-control" name="preTestAvg" id="preTestAvg" placeholder="" required>
                        </div>
                        <div class="col-12 col-md-3">
                            <label for="PreTest">Year Enrolled:</label>
                            <input type="number" class="form-control" name="enrolled_in" id="enrolledIn" value="<?php echo date('Y'); ?>" required>
                        </div>
                        <!-- <div class="col col-md-12">
                            <label for="comment">Comment:</label>
                            <textarea class="form-control" name="comment" placeholder="You can type something about the individual" rows="3"></textarea>
                        </div>
                         -->
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


