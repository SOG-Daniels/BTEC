<?php 
// echo "<pre>";
//     print_r($programInfo); 
// echo "</pre>";
 echo (!empty($this->session->flashdata('message'))? $this->session->flashdata('message') : '');
?>
<h1 class="h3 mb-2 text-gray-800">Grades</h1>

          <!-- DataTales Example -->
          <div class="card shadow-lg mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class=" col-8 col-md-10">
                  <h5 class="m-0 font-weight-bold text-primary"><?php echo $programInfo[0]['programme'] ?></h5>
                </div>
                <div class="col-4 col-md-2 d-flex justify-content-end">
                <button id="saveGradeChanges" class="btn btn-success btn-sm ">
                  <i class="fas fa-fw fa-save"></i>
                  <span>Save</span>
                </button>
                <input type="hidden" class="btn btn-link btn-primary" id="triggerConfirmModal" data-toggle="modal" data-target="#modalProgramConfirm">
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                  <div class="col-12 col-md-5">
                        <div class="text-center">
                        <img src="<?php echo isset($programInfo[0]['imgPath'])? base_url().$programInfo[0]['imgPath'] : base_url()."upload/default_profile_img.png";?>" class="avatar rounded img-thumbnail" width="300" height="350">
                        <br>
                        <?php echo '<h3 class="pt-2">'.$programInfo[0]['first_name'].' '.$programInfo[0]['last_name'].'</h3>';?>
                        </div>
                        <h6>
                            <small class="font-weight-bold text-dark">
                            PERSONAL INFORMATION
                            <hr>    
                            </small>        
                        </h6>
                    <div  class="rounded" style="background-color: #F5F5F5 ;">
                    <div class="row pl-4 pt-3">
                        <div class="col-6 ">
                            <div class="form-group">
                                <label for="my-input" class="font-weight-bold d-block " >DoB:</label>
                                <?php echo (isset($programInfo[0]['dob']))? $programInfo[0]['dob'] : 'N/A' ;?>
                            </div>
                        </div>
                        <div class="col-6 ">
                            <div class="form-group">
                                <label for="my-input" class="font-weight-bold d-block " >Gender:</label>
                                <?php echo (isset($programInfo[0]['gender']))? $programInfo[0]['gender'] : 'N/A' ;?>
                            </div>
                        </div>
                    
                    </div>
                    <div class="row pl-4">
                        <div class="col-6 col-md-6">
                            <div class="form-group">
                                <label for="email" class="font-weight-bold d-block " >Email:</label>
                                <?php echo $programInfo[0]['email'];?>
                            </div>
                        </div>
                        <div class="col-6 col-md-6">
                            <div class="form-group">
                                <label for="mobile_phone" class="font-weight-bold d-block " >District:</label>
                                <?php echo (isset($programInfo[0]['district']))? $programInfo[0]['district'] : 'N/A' ;?>
                            </div>
                        </div>
                    
                    </div>
                    <div class="row pl-4">
                        <div class="col-6 col-md-6">
                            <div class="form-group">
                                <label for="my-input" class="font-weight-bold d-block " >City/Town/Village:</label>
                                <?php echo (isset($clientData[0]['ctv']))? $clientData[0]['ctv'] : 'N/A' ;?>
                            </div>
                        </div>
                        <div class="col-6 col-md-5">
                            <div class="form-group">
                                <label for="mobile_phone" class="font-weight-bold d-block " >Street:</label>
                                <?php echo (isset($clientData[0]['street']))? $clientData[0]['street'] : 'N/A' ;?>
                            </div>
                        </div>
                    
                    </div>

                    <div class="row pl-4">
                        <div class="col-6 col-md-6">
                            <div class="form-group">
                                <label for="mobile_phone" class="font-weight-bold d-block " >Phone Number:</label>
                                <?php echo (isset($programInfo[0]['mobile_phone']))? $programInfo[0]['mobile_phone'] : 'N/A' ;?>
                            </div>
                        </div>
                        <div class="col-6 col-md-5">
                            <div class="form-group">
                                <label for="my-input" class="font-weight-bold d-block " >Home Phone #:</label>
                                <?php echo (isset($programInfo[0]['home_phone']))? $programInfo[0]['home_phone'] : 'N/A' ;?>
                            </div>
                        </div>
          
                    </div>
                    </div>
                  </div>
                  <div class="col-12 col-md-7 border-left">
                    <h6>
                        <small class="font-weight-bold text-dark">
                        PROGRAM ASSESMENTS 
                        <hr>    
                        </small>        
                    </h6>

                <form id="gradeForm" action="<?php echo base_url() ;?>update-grades/" method="POST">
                  <input type="hidden" name="action" value="updateGrades">
                  <input type="hidden" name="program" value="<?php echo (isset($programInfo[0]['program'])? $programInfo[0]['program'] : '');?>">
                  <input type="hidden" name="clientId" value="<?php echo (isset($programInfo[0]['clientId'])? $programInfo[0]['clientId'] : '');?>">
                  <input type="hidden" name="slug" value="<?php echo (isset($programInfo[0]['slug'])? $programInfo[0]['slug'] : '');?>">
                    <div id="assesments">
                      <div class="row">
                    <!-- <input type="hidden" name="assesment[]" value=""> -->
                    <?php 
                    if (!empty($programInfo[0]['Assesment1'])){
                      for ($i = 1;$i <= 5; $i++){

                        if (isset($programInfo[0]['Assesment'.$i])){

                          $assesment = explode(',', $programInfo[0]['Assesment'.$i]);

                          echo '
                            
                          <div class="form-group col-6 col-md-6">
                            <div id="asses-input'.$i.'"> 
                                <label class="font-weight-bold">'.$assesment[0].':</label>
                                  <input type="hidden" name="assesName[]" value = "'.$assesment[0].'">
                                  <input type="number" class="form-control" name="assesGrade[]" id="assesment1" placeholder="Enter a Grade...." value="'.(isset($assesment[1])? $assesment[1]: '' ).'" >
                            </div>
                          </div>
                            
                            ';   

                        }
                        

                        
                      }
                    }else{
                      echo '
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5>
                        <strong><i class="fa fa-2x fa-exclamation-mark"></i> Notice: </strong> Please create some grade names first inorder to be able to enter grades.
                        <a href="'.base_url().'program-setup"> click here to do so.</a>
                        <h5>
                        </div>
                      
                      
                      ';
                    }

                    ?>
                      </div> 
                    </div>
                  
                    <br>
                    <div class="row">
                    <div class="form-group col-12 col-md-6">
                      <label>Course Status:</label>
                      <select class="custom-select" name="status" id="courseStatus">
                        <option selected value="1">Enrolled</option>
                        <option value="Completed">Completed</option>
                        <option value="Dropped">Dropped</option>
                        <option value="Participated">Participated</option>
                      </select>
                    </div>
                    <div class="form-group col-12 col-md-6">
                      <label>Graduated On:</label>
                     <input id="graduatedOn" class="form-control" type="date" name="graduated_on"> 
                    </div>

                    </div>
                    <div class="form-group col-12">                   
                      <label for="my-textarea">Comment:</label>
                      <textarea id="programComment" name="comment" ></textarea>
                    </div>
                  </form>
                  </div>
                </div>
            </div>
          </div>
          <script type="text/javascript">

            var comment = document.getElementById('programComment');
            comment.innerText = '<?php echo isset($programInfo[0]['comments'])? str_replace('\'', '\\\'',$programInfo[0]['comments']): '';?>';
                    

            
            
          </script>
          
