<?php echo (isset($userListMessage))? $userListMessage : ' '; ?>
<h1 class="h3 mb-2 text-gray-800">User List</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class=" col col-md-10">
                  <h6 class="m-0 font-weight-bold text-primary">Users</h6>
                </div>
                <div class="col col-md-2">
                <button class="btn btn-primary btn-sm nav-link float-right" data-target="#addUserModal" data-toggle="modal" data-backdrop="static" data-keyboard="false" >
                  <i class="fas fa-fw fa-user-plus"></i>
                  <span>Add User</span>
                </button>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="dataTableUsers" width="100%" cellspacing="0">
      
                  <thead class="thead-dark">
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>User Name</th>
                      <th>Email </th>
                      <th>Phone #</th>
                      <th>Profile</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <?php 

                    if (isset($userList)){

                      
                      foreach($userList as $key => $array){

                        echo '
                        
                          <tr>
                          <td>'.$array->id.'</td>
                          <td>'.$array->fname.'</td>
                          <td>'.$array->lname.'</td>
                          <td>'.$array->username.'</td>
                          <td>'.$array->email.'</td>
                          <td>'.$array->phone.'</td>
                          <td><a href="'.site_url().'user-info/'.$array->id.'" > View </a></td>
                          </tr>
                        
                        ';

                      }
                      

                    }

                  ?>
                   
                  
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          