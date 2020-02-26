<?php 
// if ($clientData === FALSE){
// }
// echo "<pre>";
//  print_r($clientData);
// echo"</pre>";
// // getting data from array 
$personalInfo = ((isset($clientData[0]))? $clientData[0] : array());
$programs = ((isset($clientData['programs']))? $clientData['programs'] : array());
$mname = (isset($personalInfo['middle_name']))? $personalInfo['middle_name'].' ': '';
$name = (isset($personalInfo['first_name']) && isset($personalInfo['last_name']))? $personalInfo['first_name'].' '.$mname.$personalInfo['last_name'] : '' ;
?>
<div class="card shadow mb-3">
    <div class="card-header py-3">
        
    <h1 class="h4 mb-2 text-gray-800">Client Information</h1>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-12 col-md-4 "><!--left col-->
                <div class="text-center">
                <img src="<?php echo isset($personalInfo['imgPath'])? base_url().$personalInfo['imgPath'] : base_url()."upload/default_profile_img.png";?>" class="avatar rounded-circle img-thumbnail">
                <br>
                <?php echo '<h3>'.$name.'</h3>';?>
                </div>

            </div><!--/col-4-->
            <div class="col-12 col-md-8 ">

            <h6>
                <small class="font-weight-bold">
                PERSONAL INFORMATION
                <hr>    
                </small>        
            </h6>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >Phone Number:</label>
                        <?php echo (isset($clientData[0]['mobile_phone']))? $clientData[0]['mobile_phone'] : 'None' ;?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >Home Phone #:</label>
                        <?php echo (isset($clientData[0]['home_phone']))? $clientData[0]['home_phone'] : 'None' ;?>
                    </div>
                </div>
  
            </div>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="email" class="font-weight-bold d-block " >Email:</label>
                        <?php echo $clientData[0]['email'];?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >District:</label>
                        <?php echo (isset($clientData[0]['district']))? $clientData[0]['district'] : 'None' ;?>
                    </div>
                </div>
            
            </div>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >City/Town/Village:</label>
                        <?php echo (isset($clientData[0]['ctv']))? $clientData[0]['ctv'] : 'None' ;?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >Street:</label>
                        <?php echo (isset($clientData[0]['street']))? $clientData[0]['street'] : 'None' ;?>
                    </div>
                </div>
            
            </div>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >DoB:</label>
                        <?php echo (isset($clientData[0]['dob']))? $clientData[0]['dob'] : 'None' ;?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >Gender:</label>
                        <?php echo (isset($clientData[0]['gender']))? $clientData[0]['gender'] : 'None' ;?>
                    </div>
                </div>
            
            </div>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >Marital Status:</label>
                        <?php echo (isset($clientData[0]['marital_status']))? $clientData[0]['marital_status'] : 'None' ;?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="my-input" class="font-weight-bold d-block " >Emergency Contact Name:</label>
                        <?php echo (isset($clientData[0]['ec_name']))? $clientData[0]['ec_name'] : 'None' ;?>
                    </div>
                </div>
            
            </div>
            <div class="row">
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >Emergency Contact #:</label>
                        <?php echo (isset($clientData[0]['ec_number']))? $clientData[0]['ec_number'] : 'None' ;?>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="form-group">
                        <label for="mobile_phone" class="font-weight-bold d-block " >Emergency Contact Relation:</label>
                        <?php echo (isset($clientData[0]['ec_relation']))? $clientData[0]['ec_relation'] : 'None' ;?>
                    </div>
                </div>
            
            </div>
            </div><!--/col-8-->
        </div><!--/row-->
        <div class="row">
            <div class="col col-md">
                <!-- <ul class="list-group">
                    <li class="list-group-item font-weight-bold bg-dark text-light text-right"> <span class="pull-left">Training</span>Enrolled
                    </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Anger Management</strong></span> June 4, 2009</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Time Management</strong></span> March 1, 2007</li>
                    <!- <li class="list-group-item text-right"> <span class="pull-left">Add Another Training</span>
                    <a class="btn btn-sm btn-primary rounded-circle" href="<?php echo site_url()?>add-training"><i class="fa fa-plus"></i></a>
                    </li> ->
                </ul>   -->
                <div id="programs">
                <?php 
                    $tableName = '';
                    $tableHead = '
                    <table class="table table-striped table-responsive">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Final Assesment Grade</th>
                            <th>Final Grade</th>
                            <th>Enrolled On</th>
                            <th>Program Status</th>
                            <th>Comments</th>
                            <th>Graduated On</th>
                        </tr>
                    </thead>
                    <tbody>
                    ';
                    $tableContent = '';
                    $html = '';

                    foreach ($programs as $program => $data){
                        $tableContent = '';

                        if (!empty($data)){
                            foreach($data as $val){
                                $tableName = '
                                    <h4 class="font-wieght-bold">
                                    '.$val['programme'].'
                                    </h4>
                                ';
                                $tableContent.=' 
                                
                                <tr>
                                <td>'.$val['client_id'].'</td>
                                <td>'.$val['final_Assesment'].'</td>
                                <td>'.$val['final_grade'].'</td>
                                <td>'.$val['enrolled_in'].'</td>
                                <td>'.$val['status'].'</td>
                                <td>'.$val['comments'].'</td>
                                <td>'.$val['graduated_on'].'</td>
                                </tr>
                                
                                ';
                            }
                            $html .= $tableName.$tableHead.$tableContent.'
                                
                            </tbody>
                        </table>
                        <br>';      
                        }
                        
                    }
                    echo $html;


                ?>                   
                </div>
            </div>
        </div>
    </div>
</div><!--/end of card-->


