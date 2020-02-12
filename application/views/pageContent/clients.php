<h1 class="h3 mb-2 text-gray-800">Client List</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class=" col col-md-10">
                  <h6 class="m-0 font-weight-bold text-primary">Clients</h6>
                </div>
                <div class="col col-md-2">
                <button class="btn btn-primary btn-sm nav-link" data-target="#registerClientModal" data-toggle="modal" data-backdrop="static" data-keyboard="false" >
                  <i class="fas fa-fw fa-user-plus"></i>
                  <span>Add Client</span>
                </button>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="dataTable" width="100%" cellspacing="0">
      
                  <thead class="thead-dark">
                    <tr>
                      <th>Name</th>
                      <th>Address</th>
                      <th>Phone #</th>
                      <th>Age</th>
                      <th>Email</th>
                      <th>Profile</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                    <tr>
                      <td>Tiger Nixon</td>
                      <td>56 Quilter</td>
                      <td>665-6565</td>
                      <td>77</td>
                      <td>test@someemail</td>
                      <td><a href="<?php echo site_url().'client-info/1'; ?>" > View </a></td>
                    </tr>
                  
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          