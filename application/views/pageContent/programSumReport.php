<?php
    // echo "<pre>";
    // print_r($reportData);
    // echo "</pre>";

?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-12 col-md-4">
            <h5 class="m-0 font-weight-bold text-primary"><?php echo (isset($reportInfo['display_name']))? $reportInfo['display_name'] : 'Report Result';?></h5>
            
            </div>
            <div class="col-12 col-md-8">
                <span class="d-flex justify-content-end">
                    <?php 
                        echo (isset($saveBtn))? $saveBtn : '';
                    ?>
                </span>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped" id="reportDataTable" width="100%" cellspacing="0">

                <thead class="thead-dark">
                <tr>
                    <?php 
                        if (isset($reportData)){
                            // setting table column names
                            foreach ($reportData[0] as $key => $val){
                                
                                echo  '<th>'.ucfirst($key).'</th>';
                                
                            }
                        }
                        
                    ?>
                </tr>
                </thead>
                
                <tbody>
                <?php 


                if (isset($reportData)){
                    
                    foreach ($reportData as $key => $array){
                       
                        // setting row results
                        echo '<tr>';
                        foreach ($array as $key => $val){
                            echo ' 
                                <td>'.$val.'</td>
                            
                            ';
                        }
                        echo '</tr>';
                    

                    }
                    

                }

                ?>
                
                
                
                </tbody>
            </table>
        </div>
        
    </div>
</div>