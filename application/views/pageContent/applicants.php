<h1 class="h3 mb-2 text-gray-800">Application List</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class=" col col-md-10">
        <h6 class="m-0 font-weight-bold text-primary">Applicants</h6>
      </div>
      <div class="col col-md-2">
        <a class="btn btn-link btn-primary btn-sm nav-link text-light" href="<?php echo base_url()?>register-applicant" >
          <i class="fas fa-fw fa-user-plus"></i>
          <span>Add Applicant</span>
        </a>
      </div>
    </div>
  </div>
  <div class="card-body">
    <div class="table-responsive">
    <table class="table table-striped" width="100%" class="display" id="dataTable" cellspacing="0">
      <thead class="thead-dark">
          <tr>
              <th></th>
              <th>Name</th>
              <th>Position</th>
              <th>Office</th>
              <th>Salary</th>
          </tr>
      </thead>
      <tfoot>
          <tr>
              <th></th>
              <th>Name</th>
              <th>Position</th>
              <th>Office</th>
              <th>Salary</th>
          </tr>
      </tfoot>
      </table>
    </div>
  </div>
</div>
<style>
  td.details-control {
    text-align:center;
    color:forestgreen;
    cursor: pointer;
  }
  tr.shown td.details-control {
    text-align:center; 
    color:red;
  }
</style>
