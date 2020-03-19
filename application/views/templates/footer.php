<!-- End of Page Content -->
</div>
<!-- /.container-fluid -->
</div>

<!-- END OF MAIN CONTENT-->
<?php 

  $isLogin = (isset($isLogin))? $isLogin : 0;

  // lets not display the footer when  the login page is displayed 
  if (!$isLogin){

    echo '
      <footer class="bg-white">
              <div class="container my-auto">
                <div class="copyright text-center my-auto">
                  <span>Copyright &copy; ci_miniproject '.date('Y').'</span>
                </div>
              </div>
      </footer>
    
    ';

  }

?>
    </div>
    <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<!-- button that scrolls to the top  -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- START OF MODALS -->

<!-- Modal for adding Users -->
 <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-dark" id="exampleModalLabel">Add a User</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close" >
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form role="form" action="<?php echo base_url()?>add-user" method="POST">
        <div class="modal-body">
          <div class="row">
            <div class="col-12 col-md-6">
              <div class="form-group">
                <label for="fname">First Name:</label>
                <input type="text" class="form-control" name="fname" id="fname" placeholder="John..." required>
              </div>

              <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="johndoe@..." required>
              </div>
              
              <div class="form-group">
                <label for="fname">Username:</label>
                <input type="text" class="form-control" name="uname" id="uname" placeholder="Pudge..." required>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="form-group">
                <label for="lname">Last Name:</label>
                <input type="text" class="form-control" name="lname" id="lname" placeholder="Doe..." required>
              </div>

              <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="number" class="form-control" name="phone" id="phone" placeholder="668-74..." required>
              </div>
                <label class="" for="last_name">Priviledge:</label>
              <div class="form-group offset-1">
                <input class="form-check-input" type="checkbox" id="selectAll">
                <label>Select All</label>
              </div>
              <div class="form-group" id="privileges">
                <div class="row offset-1">
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi2" type="checkbox" value="2" name="privileges[]" id="" checked >
                        <label class="form-check-label" for="viewClients">
                            View Clients
                        </label>
                    </div>
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi4" type="checkbox" value="4" name="privileges[]" >
                        <label class="form-check-label" for="viewUsers">
                            View Users
                        </label>
                    </div>
                </div>
                
                <div class="row offset-1">
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi1" type="checkbox" value="1" name="privileges[]" checked>
                        <label class="form-check-label" for="addClient">
                            Add Client
                        </label>
                    </div>
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi3" type="checkbox" value="3" name="privileges[]" >
                        <label class="form-check-label" for="addClient">
                            Add User
                        </label>
                    </div>
                </div>
                <div class="row offset-1">
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input action" type="checkbox" value="7" name="privileges[]" id="privi7" checked>
                        <label class="form-check-label" for="editClient">
                            Edit Client
                        </label>
                    </div>
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input action" type="checkbox" value="8" name="privileges[]" id="privi8" >
                        <label class="form-check-label" for="editUser">
                            Edit User
                        </label>
                    </div>
                </div>
                <div class="row offset-1">
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi5" type="checkbox" value="5" name="privileges[]" checked>
                        <label class="form-check-label" for="enrolledList">
                            View Enrolled List
                        </label>
                    </div>
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi6" type="checkbox" value="6" name="privileges[]" checked>
                        <label class="form-check-label" for="editGrade">
                            Edit Grades
                        </label>
                    </div>
                </div>
                <div class="row offset-1">
                    <div class="col-12 col-md-5 form-check">
                        <input class="form-check-input" id="privi9" type="checkbox" value="9" name="privileges[]" >
                        <label class="form-check-label" for="enrolledList">
                            Program Setup
                        </label>
                    </div>
                    <!-- <div class="col col-md-5 form-check">
                        <input class="form-check-input" id="privi6" type="checkbox" value="6" name="privileges[]" >
                        <label class="form-check-label" for="editGrade">
                            Edit Grades
                        </label> -->
                </div>
                  
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <button class="btn btn-primary" type="submit">Add User</a>
        </div>
        </form>
      </div>
    </div>
  </div>



<!-- Register a Client  -->
 <!-- <div class="modal fade" id="registerClientModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-dark" id="exampleModalLabel">Add a Client</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close" >
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form role="form" action="<?php //echo base_url()?>register-client" method="POST">
        <div class="modal-body">
          <div class="row">
            <div class="col col-md-6">
              <div class="form-group">
                <label for="fname">First Name:</label>
                <input type="text" class="form-control" name="fname" id="fname" placeholder="John">
              </div>

              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="johndoe@...">
              </div>
              
              <div class="form-group">
                <label for="fname">Training:</label>
                <input type="text" class="form-control" name="training" id="training" placeholder="Time Management">
              </div>
            </div>
            <div class="col col-md-6">
              <div class="form-group">
                <label for="lname">Last Name:</label>
                <input type="email" class="form-control" name="lname" id="lname" placeholder="Doe">
              </div>

              <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" class="form-control" name="phone" id="phone" placeholder="668-7434">
              </div>
              
              
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <button class="btn btn-primary" type="submit">Register Client</a>
        </div>
        </form>
      </div>
    </div>
  </div> -->


<!-- Logout Modal-->
 <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-dark" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="<?php echo site_url('logout'); ?>">Logout</a>
        </div>
      </div>
    </div>
  </div>
<!-- User Delete  Modal-->
 <div class="modal fade" id="modalUserDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
        
          <h5 class="modal-title text-dark" id="exampleModalLabel">Are you sure you want to remove this User?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "DELETE" below to confirm removal of User.</div>
        
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a id="confirmUserDelete" href="#" class="btn btn-link btn-danger text-white" >DELETE</a>
        </div>
       
      </div>
    </div>
  </div>
<!-- Program completion Confimation Modal-->
 <div class="modal fade" id="modalProgramConfirm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
        
          <h5 class="modal-title text-dark" id="confirmprogramcom">Are you sure you're ready to submit?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "CONFIRM" below to confirm Client Completion.</div>
        
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a id="confirmProgComp" href="#" class="btn btn-link btn-primary text-white" >CONFIRM</a>
        </div>
       
      </div>
    </div>
  </div>



<!-- !END OF MODALS -->


  <!-- Bootstrap core JavaScript-->
  <!-- <script src="<php echo base_url()?>assets/vendor/jquery/jquery.min.js"></script> -->
  <!-- <script src="<php echo base_url()?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

  <!-- Core plugin JavaScript-->
  <script src="<?php echo base_url()?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?php echo base_url()?>assets/js/sb-admin-2.min.js"></script>

  <!-- Charts plugins
  <script src="assets/vendor/chart.js/Chart.min.js"></script>

  <!- Charts custom scripts ->
  <script src="assets/js/demo/chart-area-demo.js"></script>
  <script src="assets/js/demo/chart-pie-demo.js"></script> -->
  
  
  <!-- JQuery plugins for autocomplete feature -->
  <!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
   -->
  <!-- Data Tables plugins -->
  <script src="<?php echo base_url()?>assets/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url()?>assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  <!-- data picker custom javascript -->
  <script src="<?php echo base_url()?>assets/js/bootstrap-datepicker.js"></script>
  
  <!-- Summernote plugin -->
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>

    
  <script type="text/javascript">
    //declaring variable for global use
    // $(function() {
    // $("#auto").autocomplete({
    //     source: "<?php //echo base_url('autocomplete'); ?>",
    //     minLength: 1,
    //     select: function( event, ui ) {
    //         event.preventDefault();
    //         $("#skill_input").val(ui.item.id);
    //     }
    //     // source: function(request, response) {
    //     //   var results = $.ui.autocomplete.filter(src, request.term);
          
    //     //   response(results.slice(0, 10));
    //     // }
    // });
// });
  </script>

  <!-- Data Tables custom scripts -->
  <!-- <script src="<php echo base_url()?>assets/js/demo/datatables-demo.js"></script>
  <!- <!- my custom jquery -->
  <!-- <script src="<php echo base_url()?>assets/js/demo/customJS.js"></script> -->

</body>
</html>