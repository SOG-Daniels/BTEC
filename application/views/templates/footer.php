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
                <label for="phone">Phone Number:</label>
                <input type="number" class="form-control" name="phone" id="phone" placeholder="668-74..." required>
              </div>
              <!-- <div class="form-group">
                <label for="fname">Username:</label>
                <input type="text" class="form-control" name="uname" id="uname" placeholder="Pudge..." required>
              </div> -->

            </div>
            <div class="col-12 col-md-6">
              <div class="form-group">
                <label for="lname">Last Name:</label>
                <input type="text" class="form-control" name="lname" id="lname" placeholder="Doe..." required>
              </div>
                <label class="" for="last_name">Privilege:</label>
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
                    <div class="col col-md-5 form-check">
                        <input class="form-check-input" id="privi10" type="checkbox" value="10" name="privileges[]" >
                        <label class="form-check-label" for="editGrade">
                            Create Reports
                        </label>
                    </div>
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
<!-- confirmation modal for removing enrolled client -->
 <div class="modal fade" id="unenrollClientModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-dark" id="exampleModalLabel">Unenroll Client from the Program?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Are you sure that you want to unenroll user from the program?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="#" id="confirmClientUnenroll">CONFIRM</a>
        </div>
      </div>
    </div>
  </div>
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

  <!-- event info/description  Modal -->
<div class="modal fade" id="eventDescriptionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <h5 class="modal-title text-primary" id="d-modalTitle">Event Info </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="saveEventForm">
      <div class="modal-body">
        <input type="hidden" id="eventId" name="eventId" value="">

        <label for="Description" class="font-weight-bold">Start Date: </label>
        <span id="d-startDate" class="text-primary"> </span>
        <br>

        <label for="Description" class="font-weight-bold">End Date: </label>
        <span id="d-endDate" class="text-primary"> </span> 
        <br>

        <label for="Title" class="font-weight-bold">Title: </label>
        <input type="text" id="d-title" name="title" value="" class="form-control">

        <br>
        <label for="Description" class="font-weight-bold">Description: </label>
        <!-- <input id="d-description" type="text" name="description" class="form-control" value=""> -->
        <textarea id="d-description" type="text" name="description" class="form-control" value="">
         </textarea>
        <br>
        
        <label for="createdBy" class="font-weight-bold">Created By: </label>
        <span id='d-createdBy'  ></span>
        <br>
        <label for="updatedBy" class="font-weight-bold">Updated By: </label>
        <span id='d-updatedBy'  ></span>

      </div>
    </form>
      <div class="modal-footer justify-content-between">
         
            <button type="button" id="deleteEvent" class="btn btn-danger">Delete</button>
            <button type="button" id="saveEvent" class="btn btn-primary ">Save</button>
          
      </div>
    </div>
  </div>
</div>

<!-- calendar modal Modal-->
 <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
        
          <h4 class="modal-title text-dark">Create an Event</h4>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form id="eventForm" >
        <div class="modal-body">
          <div class="form-group">
          <label for="startDate" class="font-weight-bold">Start Date: </label>
          <span id="info-startDate" class="text-primary"> </span>
          <br>

          <label for="endDate" class="font-weight-bold">End Date: </label>
          <span id="info-endDate" class="text-primary"> </span> 
          <br>
            <label class="font-weight-bold" for="eTitle">Event Title:</label>
            <input class="form-control" type="text" id="eTitle" name="title" placeholder="Enter the an event name..." required>
            <br>
            <input class="form-control" id="startDate" type="hidden" name="startDate" value="">
            <input class="form-control" id="endDate" type="hidden" name="endDate" value="">
            <label class="font-weight-bold" for="eTitle">Event Description:</label>
            <textarea class="form-control" id="eDescription" name="description" placeholder="Enter a description..." ></textarea>
          
          </div>
        </div>
        </form>
        
        <div class="modal-footer">
          <a class="btn btn-secondary text-white" type="button" data-dismiss="modal">Cancel</a>
          <button id="add-cal-event"  class="btn btn-primary">Add Event</button>
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

 
  
  <!-- JQuery JS file used for autocomplete feature -->
  <!-- <script src="<?php echo base_url()?>assets/js/jquery-3.4.1.min.js"></script> -->
  
  <!-- Data Tables plugins -->
  <script src="<?php echo base_url()?>assets/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url()?>assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  <!-- data picker custom javascript -->
  <!-- <script src="<?php //echo base_url()?>assets/js/bootstrap-datepicker.js"></script> -->
  
  
  <!-- Summernote plugin -->
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>
  
  
  <!-- JQuery plugins JS file for autocomplete feature -->
  <script src="<?php echo base_url()?>assets/js/jquery-ui.js"></script>
 
  <!-- FullCalendar plugins-->
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/core/main.js'></script>
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/daygrid/main.js'></script>
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/interaction/main.js'></script>
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/timegrid/main.js'></script>
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/bootstrap/main.js'></script>
  <script src='<?php echo base_url();?>assets/vendor/fullcalendar/list/main.js'></script>

  <!-- Fullcalendar googleCalendar library -->
  <script src="<?php echo base_url()?>assets/vendor/fullcalendar/google-calendar/main.js"></script>

  <!-- Google API js file -->
  <!-- <script src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script> -->
 <!-- <script src="https://apis.google.com/js/client.js" type="text/javascript"></script> -->
  <!-- <script src="<?php echo base_url()?>assets/vendor/googleAPI/client.js?onload=handleClientLoad" type="text/javascript"></script> -->
  <!-- <script async defer src="https://apis.google.com/js/api.js"
      onload="this.onload=function(){};handleClientLoad()"
      onreadystatechange ="if (this.readyState === 'complete') this.onload()">
  </script> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> -->
  <!-- <script src="https://apis.google.com/js/client.js"></script> -->


  <!-- FUllCalendar with google calendar custom script -->
  <script src="<?php echo base_url()?>assets/js/gCalendar.js"></script>

  <script type="text/javascript">
      //declaring global variable
      var base_url = "<?php echo base_url(); ?>";

      //setting up autocomplete by stating the controller that will perform the search
      //the autocomplete plugin will always submit it as a GET method reason being for having the '?' after the 'search'
      $(document).ready(function(){
          $( "#applicant" ).autocomplete({
            source: "<?php echo site_url('search?');?>"
          });
      });
      // ?onload=handleClientLoad
  </script>
    
</body>
</html>