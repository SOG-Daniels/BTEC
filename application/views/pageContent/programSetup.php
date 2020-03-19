<?php 
// echo "<pre>";
//     print_r($programInfo); 
// echo "</pre>";
 echo (!empty($this->session->flashdata('message'))? $this->session->flashdata('message') : '');
?>
<h1 class="h3 mb-2 text-gray-800">Program Setup</h1>

          <!-- DataTales Example -->
          <div class="card shadow-lg mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class=" col-6 col-md-9">
                  <h5 class="m-0 font-weight-bold text-primary">Settings</h5>
                </div>
                <div class="col-6 col-md-3 d-flex justify-content-end">
                <button id="saveProSettings" class="btn btn-success btn-sm ">
                  <i class="fas fa-1x fa-save"></i>
                  Save
                </button>
                <!-- <input type="hidden" class="btn btn-link btn-primary" id="triggerConfirmModal" data-toggle="modal" data-target="#modalProgramConfirm"> -->
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                  <div class="col-12 col-md-8">
                    <h6>
                        <small class="font-weight-bold text-dark">
                        PROGRAM AVAILABLE 
                        <hr>    
                        </small>        
                    </h6>
                    
                  </div>
                  <div class="col-12 col-md-4">
                    <h6>
                        <small class="font-weight-bold text-dark">
                        PROGRAM ASSESMENTS 
                        <hr>    
                        </small>        
                    </h6>

                <form id="assesNames" action="<?php echo base_url() ;?>save-program-setup/" method="POST">
                  <!-- <input type="hidden" name="action" value="updateGrades"> -->
                  <!-- <input type="hidden" name="program" value="<?php// echo (isset($programInfo[0]['program'])? $programInfo[0]['program'] : '');?>">
                  <input type="hidden" name="clientId" value="<?php //echo (isset($programInfo[0]['clientId'])? $programInfo[0]['clientId'] : '');?>">
                  <input type="hidden" name="slug" value="<?php //echo (isset($programInfo[0]['slug'])? $programInfo[0]['slug'] : '');?>"> -->
                  <span class="form-group">
                      <select class="form-control" name="program" id="programs" style="width: 100%;" >
                      <option  data-content="Introduction to Barbering" value="barbering" >Introduction to Barbering</option>
                      <option  data-content="Bartending" value="bartending" >Bartending</option>
                      <option  data-content="Business Process Outsourcing" value="bpo" >Business Process Outsourcing</option>
                      <option  data-content="Child Care Training" value="child_care" >Child Care Training</option>
                      <option  data-content="Computer's for Everydy Use" value="computer_basics" >Computer's For Everyday Use</option>
                      <option  data-content="Event Palnning" value="event_planning" >Event Planning</option>
                      <option  data-content="Front Desk Training" value="front_desk" >Front Desk Training</option>
                      <option  data-content="Home Health Training" value="home_health" >Home Health Training</option>
                      <option  data-content="House Keeping" value="house_keeping" >House Keeping</option>
                      <option  data-content="Landscaping" value="landscaping" >Landscaping</option>
                      <option  data-content="Life Guard Training" value="life_guard" >Life Guard Training</option>
                      <option  data-content="Nail Tech" value="nail_tech" >Nail Tech</option>
                      <option  data-content="Wait Staff Training" value="wait_staff" >Wait Staff Training</option>
                      </select>
                  </span>
                    <br>
                    <div id="assesments">
                    <?php 
                      $count = 1;
                      for ($i = 1;$i <= 5; $i++){

                        if (!empty($programInfo['Assesment'.$i])){
                          $assesName = explode(',', $programInfo['Assesment'.$i]);
                          // print_r($assesName);
                          echo '
                            
                            <div id="asses-input'.$i.'" class="row"> 
                              
                              <div class="col-12 col-md-12">
                                <label>Assesment Name:</label>
                                <div class="input-group">
                                  <input type="text" class="form-control" name="assesmentName[]" id="assesment1" placeholder="Enter a Grade...." value="'.$assesName[0].'" required>
                                  <span class="input-group-append ">
                                    <span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>
                                  </span>
                                </div>
                              </div>
                            </div>
                            
                            ';   
                            $count++;          
                          

                        }
                        if ($count === 1){
                          echo '
                            
                            <div id="asses-input'.$count.'" class="row"> 
                              
                              <div class="col-12 col-md-12">
                                <label >Assesment Name:</label>
                                <div class="input-group">
                                  <input type="text" class="form-control" name="assesmentName[]" id="assesment1" placeholder="Enter a name..." required>
                                  <span class="input-group-append ">
                                    <span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>
                                  </span>
                                </div>
                              </div>
                            </div>
                            
                            ';
                            $count++;
                        }
                        

                        
                    }

                    ?>
     
                            
                    </div>
                    <div class="pt-2 d-flex justify-content-end">
                      <button class="btn btn-link add-more-asses"><i class="fa fa-plus"></i>Add Assesment</button>
                    </div>
                    <br>
                   
                  </form>
                  </div>
                </div>
            </div>
          </div>
          <script type="text/javascript">


            setInputCount(<?php echo $count;?>);
            
          </script>
          
