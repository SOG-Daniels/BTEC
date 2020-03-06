<?php 
    // echo "<pre>";
    // print_r($clientData);
    // echo "</pre>";
    // echo "<pre>";
    // print_r($programList);
    // echo "</pre>";
    echo validation_errors();
    echo (isset($addClientMessage))? $addClientMessage : ' ';?>
<div class="card shadow mb-3">
    <div class="card-header py-3">
    <?php
        //@param 1 action location one form is submitted
        //@param 2 attributes for the form tag
        echo form_open_multipart('update-client-info/'.$clientData[0]['id'].'');
    ?>    
    <span class="float-right ">
        <button  id="updateClient" class="btn btn-sm btn-primary " type="submit"><i class=" fa fa-check"></i> Apply Changes</button>
    </span>
    <h1 class="h4 mb-2 text-gray-800">Application Form</h1>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-md-6"><!--left col-->
                <div class="text-center">
                    <img src="<?php echo base_url().((isset($clientData[0]['imgPath']))? $clientData[0]['imgPath'] : 'upload/default_profile_img.png'); ?>" class="avatar rounded img-thumbnail" alt="avatar">
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
                <input type="hidden" name="action" value="updateClient">
                    <h6>
                        <small class="font-weight-bold">
                        PERSONAL INFORMATION
                        <hr>    
                        </small>        
                    </h6>
                    <!--Start of personal information form   -->
                    <div class="row">
                        <div class="col-12 col-md-6 form-group">
                            <label for="first_name">First Name:</label>
                            <input type="text" class="form-control" name="fname" id="fname" value="<?php echo (isset($clientData[0]['first_name'])? $clientData[0]['first_name']: '')?>"  required>
                        </div>
                        <div class="col-12 col-md-6 form-group">
                            <label for="last_name">Last Name:</label>
                            <input type="text" class="form-control" name="lname" id="lname" value="<?php echo (isset($clientData[0]['last_name'])? $clientData[0]['last_name']: '')?>"  required>
                        </div>
                        <div class="col-12 form-group">
                            <label for="last_name">Middle Name:</label>
                            <input type="text" class="form-control" name="mname" id="mname" value="<?php echo (isset($clientData[0]['middle_name'])? $clientData[0]['middle_name']: '')?>">
                        </div>
                    
                    </div>
                    <div class="row">
                        <div class="col col-mb-6">
                            <label for="maritalStatus">Gender:</label>
                            <div class="form-group pl-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="M" required  <?php echo ((isset($clientData[0]['gender']) && $clientData[0]['gender'] === 'M')? 'checked': '')?>>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="F" <?php echo ((isset($clientData[0]['gender']) && $clientData[0]['gender'] === 'F')? 'checked': '')?>>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col col-mb-6">
                            <label for="dob">DOB:</label>
                            <input class="form-control" name="dob" type="date" value="<?php echo (isset($clientData[0]['dob'])? $clientData[0]['dob']: '')?>" id="" required>
                        </div>
                    </div>
                    <label for="maritalStatus">Marital Status:</label>
                    <div class="col-12 col-mb-6">
                           <div class="form-group">
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="single" value="Single" required <?php echo ((isset($clientData[0]['marital_status']) && $clientData[0]['marital_status'] === 'Single')? 'checked': '')?>>
                                    <label class="form-check-label" for="single">Single</label>
                                </div>
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="married" value="Married" <?php echo ((isset($clientData[0]['marital_status']) && $clientData[0]['marital_status'] === 'Married')? 'checked': '')?>>
                                    <label class="form-check-label" for="married">Married</label>
                                </div>
                                <div class="form-check form-check-inline ">
                                    <input class="form-check-input" type="radio" name="maritalStatus" id="commonLaw" value="Common-Law" <?php echo ((isset($clientData[0]['marital_status']) && $clientData[0]['marital_status'] === 'Common-Law')? 'checked': '')?>>
                                    <label class="form-check-label" for="commonLaw">Common-Law</label>
                                </div>
                           </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6 form-group">
                                <label for="country">Country:</label>
                                <input type="text" class="form-control" name="country" id="country" value="<?php echo (isset($clientData[0]['country'])? $clientData[0]['country']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6 form-group">
                            <label for="exampleFormControlSelect1">District</label>
                            <select class="form-control" name="district" id="">
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Corozal')? 'selected': '')?> >Corozal</option>
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Orange Walk')? 'selected': '')?>>Orange Walk</option>
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Cayo')? 'selected': '')?>>Cayo</option>
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Belize')? 'selected': '')?>>Belize</option>
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Stann Creek')? 'selected': '')?> >Stann Creek</option>
                                <option <?php echo ((isset($clientData[0]['district']) && $clientData[0]['district'] === 'Toledo')? 'selected': '')?> >Toledo</option>
                            </select>
                        </div>
                    </div>
                    <div class=" row form-group">
                        <div class="col-12 col-md-6">
                            <label for="first_name">City/Town/Village:</label>
                            <input type="text" class="form-control" name="ctv" id="ctv" value="<?php echo (isset($clientData[0]['ctv'])? $clientData[0]['ctv']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6">
                                <label for="first_name">SSN:</label>
                                <input type="text" class="form-control" name="ssn" id="ssn" value="<?php echo (isset($clientData[0]['ssn'])? $clientData[0]['ssn']: '')?>" required>
                        </div> 
                    </div>
                    <div class="row form-group">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Home Phone #:</label>
                            <input type="number" class="form-control" name="homePhone" id="" value="<?php echo (isset($clientData[0]['home_phone'])? $clientData[0]['home_phone']: '')?>" >
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">Mobile Phone #:</label>
                            <input type="number" class="form-control" name="mobilePhone" id="" value="<?php echo (isset($clientData[0]['mobile_phone'])? $clientData[0]['mobile_phone']: '')?>" required>
                        </div>
                    </div> 
                    <div class="row form-group">
                        <div class="col-12 col-md-6">
                            <label for="street">Street Address:</label>
                            <input type="text" class="form-control" name="street" id="" value="<?php echo (isset($clientData[0]['street'])? $clientData[0]['street']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">Email:</label>
                            <input type="text" class="form-control" name="email" id="" value="<?php echo (isset($clientData[0]['email'])? $clientData[0]['email']: '')?>"  required>
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
                        <div class="col-12 col-md-6">
                            <label for="ecName">Emergency Contact Name:</label>
                            <input type="text" class="form-control" name="ecName" id="" value="<?php echo (isset($clientData[0]['ec_name'])? $clientData[0]['ec_name']: '')?>"required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="ecNumber">Emergency Contact Number:</label>
                            <input type="number" class="form-control" name="ecNumber" id="" value="<?php echo (isset($clientData[0]['ec_number'])? $clientData[0]['ec_number']: '')?>" required>
                        </div>
                        <div class="col-12">
                            <label for="ecRelation">Emergency Contact Relationship:</label>
                            <input type="text" class="form-control" name="ecRelation" id=""value=" <?php echo (isset($clientData[0]['ec_relation'])? $clientData[0]['ec_relation']: '')?>" required>
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
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refName1" id="" value="<?php echo (isset($clientData[0]['ref_name1'])? $clientData[0]['ref_name1']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refAddress1" id="" value="<?php echo (isset($clientData[0]['ref_address1'])? $clientData[0]['ref_address1']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="text" class="form-control" name="refCity1" id="" value="<?php echo (isset($clientData[0]['ref_city1'])? $clientData[0]['ref_city1']: '')?>" required>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#1:</small></label>
                            <input type="number" class="form-control" name="refPhone1" id="" value="<?php echo (isset($clientData[0]['ref_phone1'])? $clientData[0]['ref_phone1']: '')?>"  required>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refName2" id="" value="<?php echo (isset($clientData[0]['ref_name2'])? $clientData[0]['ref_name2']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refAddress2" id="" value="<?php echo (isset($clientData[0]['ref_address2'])? $clientData[0]['ref_address2']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="text" class="form-control" name="refCity2" id="" value="<?php echo (isset($clientData[0]['ref_city2'])? $clientData[0]['ref_city2']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#2:</small></label>
                            <input type="number" class="form-control" name="refPhone2" id="" value="<?php echo (isset($clientData[0]['ref_phone2'])? $clientData[0]['ref_phone2']: '')?>" >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <label for="first_name">Name <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refName3" id="" value="<?php echo (isset($clientData[0]['ref_name3'])? $clientData[0]['ref_name3']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Address <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refAddress3" id="" value="<?php echo (isset($clientData[0]['ref_address3'])? $clientData[0]['ref_address3']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="first_name">City <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="text" class="form-control" name="refCity3" id="" value="<?php echo (isset($clientData[0]['ref_city3'])? $clientData[0]['ref_city3']: '')?>">
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="last_name">Phone Number <small class="font-weight-bold">Ref#3:</small></label>
                            <input type="number" class="form-control" name="refPhone3" id="" value="<?php echo (isset($clientData[0]['ref_phone3'])? $clientData[0]['ref_phone3']: '')?>" >
                        </div>
                    </div>
                    <br>
                    <h6>
                        <small class="font-weight-bold">
                        TRAINING PROGRAM
                        <hr>
                        </small>        
                    </h6>
                        <?php 

                            foreach ($programList as $program => $data ){
                                if(isset($data[0]['programme'])){
                                    
                                    echo '
                                    
                                        <div class="row">
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="trainings">Trainings:</label>
                                                    <select class="form-control" name="programList['.$program.'][programme]" id="trainings">
                                                    <option  value="'.$program.'">'.$data[0]['programme'].'</option>
                                                    
                                                    </select>
                                                </div>
                                            </div>
                                                <div class="col-12 col-md-3">
                                                <label for="PreTest">Pre-Test Avg:</label>
                                                <input type="number" class="form-control" name="programList['.$program.'][pre_test_avg]" id="preTestAvg" value="'.(isset($data[0]['pre_test_avg'])? $data[0]['pre_test_avg']: '').'" required>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <label for="PreTest">Year Enrolled:</label>
                                                <input type="number" class="form-control" name="programList['.$program.'][enrolled]" id="enrolledIn" value="'.(isset($data[0]['enrolled_in'])? $data[0]['enrolled_in']:'').'" required>
                                            </div>
                                            <div class="col col-md-12">
                                                <label for="comment">Comment:</label>
                                                <textarea class="form-control" name="programList['.$program.'][comment]"  rows="3">'.(isset($data[0]['comments'])? $data[0]['comments']: '').'</textarea>
                                            </div>
                                            
                    
                                        </div>
                                    
                                    
                                    
                                    
                                    
                                    ';

                                }
                            }




                        ?>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="trainings">Trainings:</label>
                                <select class="form-control" name="<?php echo 'programList[newProgram][programme]';?>" id="trainings">
                                <?php

                                echo '<option value="none" selected>none</option>';
                                echo (!empty($programList['barbering'][0]))? '' : '<option  value="barbering">Introduction to Barbering</option>';
                                echo (!empty($programList['bartending'][0]))? '' : '<option  value="bartending">Bartending</option>';
                                echo (!empty($programList['bpo'][0]))? '' : '<option  value="bpo">Business Process Outsourcing</option>';
                                echo (!empty($programList['child_care'][0]))? '' : '<option  value="child_care">Child Care Training</option>';
                                echo (!empty($programList['computer_basics'][0]))? '' : '<option  value="computer_basics">Computer\'s For Everyday Use</option>';
                                echo (!empty($programList['event_planning'][0]))? '' : '<option  value="event_planning">Event Planning</option>';
                                echo (!empty($programList['front_desk'][0]))? '' : '<option  value="front_desk">Front Desk Training</option>';
                                echo (!empty($programList['home_health'][0]))? '' : '<option  value="home_health">Home Health Training</option>';
                                echo (!empty($programList['house_keeping'][0]))? '' : '<option  value="house_keeping">House Keeping</option>';
                                echo (!empty($programList['landscaping'][0]))? '' : '<option  value="landscaping">Landscaping</option>';
                                echo (!empty($programList['life_guard'][0]))? '' : '<option  value="life_guard">Life Guard Training</option>';
                                echo (!empty($programList['nail_tech'][0]))? '' : '<option  value="nail_tech">Nail Tech</option>';
                                echo (!empty($programList['wait_staff'][0]))? '' : '<option  value="wait_staff">Wait Staff Training</option>';
                                ?>

                                </select>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <label for="PreTest">Pre-Test Avg:</label>
                            <input type="number" class="form-control" name="<?php echo 'programList[newProgram][pre_test_avg]';?>" id="preTestAvg" placeholder="">
                        </div>
                        <div class="col-12 col-md-3">
                            <label for="PreTest">Year Enrolled:</label>
                            <input type="number" class="form-control" name="<?php echo 'programList[newProgram][enrolled]';?>" id="enrolledIn" value="<?php echo date('Y'); ?>" >
                        </div>
                        <div class="col col-md-12">
                            <label for="comment">Comment:</label>
                            <textarea class="form-control" name="<?php echo 'programList[newProgram][comment]';?>" placeholder="You can type something about the individual" rows="3"></textarea>
                        </div>
                        

                    </div>
                    
                </form>
            </div><!--/col-8-->
        </div><!--/row-->
    </div>
</div><!--/end of card-->



