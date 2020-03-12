<?php 
// echo "<pre>";
//     print_r($programInfo); 
// echo "</pre>";
 echo (!empty($this->session->flashdata('message'))? $this->session->flashdata('message') : '');
?>
<h1 class="h3 mb-2 text-gray-800">Grades</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class=" col col-md-10">
                  <h5 class="m-0 font-weight-bold text-primary"><?php echo $programInfo[0]['programme'] ?></h5>
                </div>
                <div class="col col-md-2">
                <button id="saveGradeChanges" class="btn btn-success btn-sm nav-link float-right">
                  <i class="fas fa-fw fa-check"></i>
                  <span>Save Changes</span>
                </button>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                  <div class="col-12 col-md-7">
                        <div class="text-center">
                        <img src="<?php echo isset($programInfo[0]['imgPath'])? base_url().$programInfo[0]['imgPath'] : base_url()."upload/default_profile_img.png";?>" class="avatar rounded img-thumbnail" width="300" height="350">
                        <br>
                        <?php echo '<h3>'.$programInfo[0]['first_name'].' '.$programInfo[0]['last_name'].'</h3>';?>
                        </div>

                    <h6>
                        <small class="font-weight-bold">
                        PERSONAL INFORMATION
                        <hr>    
                        </small>        
                    </h6>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="my-input" class="font-weight-bold d-block " >DoB:</label>
                            <?php echo (isset($programInfo[0]['dob']))? $programInfo[0]['dob'] : 'N/A' ;?>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group">
                            <label for="my-input" class="font-weight-bold d-block " >Gender:</label>
                            <?php echo (isset($programInfo[0]['gender']))? $programInfo[0]['gender'] : 'N/A' ;?>
                        </div>
                    </div>
                
                </div>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="email" class="font-weight-bold d-block " >Email:</label>
                        <?php echo $programInfo[0]['email'];?>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >District:</label>
                        <?php echo (isset($programInfo[0]['district']))? $programInfo[0]['district'] : 'N/A' ;?>
                    </div>
                </div>
            
            </div>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >City/Town/Village:</label>
                        <?php echo (isset($clientData[0]['ctv']))? $clientData[0]['ctv'] : 'N/A' ;?>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >Street:</label>
                        <?php echo (isset($clientData[0]['street']))? $clientData[0]['street'] : 'N/A' ;?>
                    </div>
                </div>
            
            </div>

                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="mobile_phone" class="font-weight-bold d-block " >Phone Number:</label>
                                <?php echo (isset($programInfo[0]['mobile_phone']))? $programInfo[0]['mobile_phone'] : 'N/A' ;?>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="my-input" class="font-weight-bold d-block " >Home Phone #:</label>
                                <?php echo (isset($programInfo[0]['home_phone']))? $programInfo[0]['home_phone'] : 'N/A' ;?>
                            </div>
                        </div>
          
                    </div>
                    
                  </div>
                  <div class="col-12 col-md-5">
                  <form id="gradeForm" action="<?php echo base_url() ;?>update-grades/" method="POST">
                  <input type="hidden" name="action" value="updateGrades">
                  <input type="hidden" name="program" value="<?php echo (isset($programInfo[0]['program'])? $programInfo[0]['program'] : '');?>">
                  <input type="hidden" name="clientId" value="<?php echo (isset($programInfo[0]['clientId'])? $programInfo[0]['clientId'] : '');?>">
                  <input type="hidden" name="slug" value="<?php echo (isset($programInfo[0]['slug'])? $programInfo[0]['slug'] : '');?>">
                    <div id="assesments">
                    <!-- <input type="hidden" name="assesment[]" value=""> -->
                    <?php 
                      $count = 1;
                      for ($i = 1;$i <= 5; $i++){

                        if (isset($programInfo[0]['Assesment'.$i])){
                          echo '
                            
                            <div id="asses-input'.$i.'"> 
                              <label >Assesment Grade</label>
                              <div class="input-group">
                                <input type="number" class="form-control" name="assesment[]" id="assesment1" placeholder="Enter a Grade...." value="'.$programInfo[0]['Assesment'.$i].'" required>
                                <span class="input-group-append ">
                                  <span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>
                                </span>
                              </div>
                            </div>
                            
                            ';   
                            $count++;          
                          

                        }
                        

                        
                    }

                    ?>
                     <!-- <div id="asses-input'.$i.'"> 
                              <label >Assesment Grade</label>
                              <div class="input-group">
                                <input type="number" class="form-control" name="assesment[]" id="assesment1" placeholder="Enter a Grade....">
                                <span class="input-group-append ">
                                  <span class="input-group-text bg-primary add-grade"><i class="fa fa-plus text-white"></i></span>
                                </span>
                              </div>
                            </div> -->
                            
                    </div>
                    <div class="pt-2 d-flex justify-content-end">
                      <button class="btn btn-link add-more"><i class="fa fa-plus"></i>Add more Grades</button>
                    </div>
                    <br>
                    <div class="form-group">
                      <label for="my-textarea">Comment:</label>
                      <textarea id="my-textarea" class="form-control" name="comment" rows="3" placeholder="Enter a comment..."><?php echo (isset($programInfo[0]['comments'])? $programInfo[0]['comments'] : '');?></textarea>
                    </div>
                    <div class="form-group">
                      <label >Final Assement Grade:</label>
                      <input type="number" class="form-control" name="final_assesment" id="assesment1" value="<?php echo (isset($programInfo[0]['final_Assesment'])? $programInfo[0]['final_Assesment']:'');?>" placeholder="Enter a Grade....">
                    </div>
                    <div class="row">
                    <div class="form-group col-12 col-md-6">
                      <label>Course Completion Status:</label>
                      <select class="custom-select" name="status" id="courseStatus">
                        <option selected value="0">Enrolled</option>
                        <option value="completed">Completed</option>
                        <option value="dropped">Dropped</option>
                        <option value="participated">Participated</option>
                      </select>
                    </div>
                    <div class="form-group col-12 col-md-6">
                      <label>Graduated On:</label>
                     <input id="graduatedOn" class="form-control" type="date" name="graduated_on"> 
                    </div>

                    </div>
                  </form>
                  </div>
                </div>
            </div>
          </div>
          <script>
            setInputCount(<?php echo $count;?>);
          </script>
          
