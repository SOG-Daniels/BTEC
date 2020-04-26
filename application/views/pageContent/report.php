<h1 class="h3 mb-2 text-gray-800">Generate a Report</h1>
<div class="card">
    <div class="card-header">
        <h6 class=" font-weight-bold text-primary">Report Options</h6>
    </div>
    <div class="card-body">


    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="client-tab" data-toggle="tab" href="#client" role="tab" aria-controls="client" aria-selected="true">Client Report</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Program Summary Report</a>
        </li>
        <!-- <li class="nav-item">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
        </li> -->
    </ul>
    <div class="tab-content" id="myTabContent">

    <!-- Content for client report in a particular program -->
    <div class="tab-pane fade show active" id="client" role="tabpanel" aria-labelledby="client-tab">

        <form action="" method="POST">
            <br>
                       <div class="alert alert-secondary" role="alert">
                           <i class="fa fa-info-circle"></i>
                           Provides a report of each indivdual client based on the selected displays and filter options.
                           
                       </div>
                <h6>
                    <small class="font-weight-bold text-primary">
                    Choose a program display 
                    <hr>    
                    </small>        
                </h6>
                <div class="row">
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Choose a program:</label>
                        <select class="form-control" name="program"  onfocus='this.size=7;' onblur='this.size=1;' onchange='this.size=1; this.blur();' >
                        <!-- <option  value="1">All Programs</option> -->
                        <option  value="barbering">Introduction to Barbering</option>
                        <option  value="bartending">Bartending</option>
                        <option  value="bpo">Business Process Outsourcing</option>
                        <option  value="child_care">Child Care Training</option>
                        <option  value="computer_basics">Computer's For Everyday Use</option>
                        <option  value="event_planning">Event Planning</option>
                        <option  value="front_desk">Front Desk Training</option>
                        <option  value="home_health">Home Health Training</option>
                        <option  value="house_keeping">House Keeping</option>
                        <option  value="landscaping">Landscaping</option>
                        <option  value="life_guard">Life Guard Training</option>
                        <option  value="nail_tech">Nail Tech</option>
                        <option  value="wait_staff">Wait Staff Training</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Program Compeltion Status:</label>
                        <select class="custom-select" name="programStatus" id="courseStatus" onfocus='this.size=3;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="Completed">Completed</option>
                        <option value="Dropped">Dropped</option>
                        <option value="Participated">Participated</option>
                        </select>
                    
                    </div>
                </div>
                <br>
                <h6>
                    <small class="font-weight-bold text-primary">
                    Choose a Grade info display 
                    <hr>    
                    </small>        
                </h6>

                <div class="row" id="grade-options">
                    <div class="col-12 col-md-4">
                        <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][enrolledOn]" value="1" checked> Year Enrolled</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][graduatedOn]" value="1" checked> Year of Completion</label>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][listAssesments]" value="1"> Assesments with Grade</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][finalAvg]" value="1" checked> Final Average</label>
                        </div>   
                    </div>
                    <div class="col-12 col-md-4">
                        <!-- <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][topTen]" value="1"> Top 10 Final Avg.</label>
                        </div> -->
                        <div class="checkbox">
                            <label><input type="checkbox" name="gradeOption[][comments]" value="1"> Comments</label>
                        </div>   
                    </div>
                </div>
                <br>
                <h6>
                    <small class="font-weight-bold text-primary">
                    Choose a Client info display 
                    <hr>    
                    </small>        
                </h6>

                <div class="row">
                    <div class="col-12 col-md-4">
                        <div class="checkbox">
                                <label><input type="checkbox" name="" value="" checked> Personal Info</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="" value="" checked> Address </label>
                        </div>   
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="checkbox">
                            <label><input type="checkbox" name="" value=""> Emergency Contact Info</label>
                        </div>   
                        <div class="checkbox">
                                <label><input type="checkbox" name="" value=""> References</label>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="checkbox">
                                <label><input type="checkbox" name="" value="" checked> Education Info</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="" value="" checked> Employment Info</label>
                        </div>   
                    </div>

                </div>
                <br>
                <h6>
                    <small class="font-weight-bold text-primary">
                    Additonal filter (optional)
                    <hr>    
                    </small>        
                </h6>

                <div class="row">
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Choose Filter by Year:</label>
                        <select class="custom-select" name="programStatus" id="courseStatus" onfocus='this.size=3;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option selected value="1">All Years</option>
                        <option value="enrolledOn">Enrolled</option>
                        <option value="graduatedOn">Graduated</option>
                        </select>
                    
                    </div>
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Choose a Year:</label>
                        <input type="number" name="completedOn" placeholder="2010..." class="form-control " required>
                    </div>
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Final Average:</label>
                        <select class="custom-select" name="gradeFilter" id="courseStatus" onfocus='this.size=5;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="1">All Grades</option>
                        <option value="100">100</option>
                        <option value="90">90 - 99</option>
                        <option value="80">80 - 89</option>
                        <option value="70">70 -79</option>
                        </select>
                    
                    </div>
                </div>
                <br>
                <button class="btn btn-sm btn-primary float-right"><i class="fa fa-print"></i> Create Report</button>
        </form>
    </div>

    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
        <form action="<?php echo base_url();?>program-summary-report/" method="POST">
        <br>
                       <div class="alert alert-secondary" role="alert">
                           <i class="fa fa-info-circle"></i>
                           Provides a summary of the total amount of clients in a program that meet the selected filters below.
                           
                       </div>
                <h6>
                    <small class="font-weight-bold text-primary">
                    Choose a the filters 
                    <hr>    
                    </small>        
                </h6>
                <div class="row">
                    <div class="col-12 col-md-4">
                        <label class="font-weight-bold">Choose a program:</label>
                        <select class="form-control" name="program"  onfocus='this.size=7;' onblur='this.size=1;' onchange='this.size=1; this.blur();' >
                        <option  value="1">All Programs</option>
                        <option  value="barbering">Introduction to Barbering</option>
                        <option  value="bartending">Bartending</option>
                        <option  value="bpo">Business Process Outsourcing</option>
                        <option  value="child_care">Child Care Training</option>
                        <option  value="computer_basics">Computer's For Everyday Use</option>
                        <option  value="event_planning">Event Planning</option>
                        <option  value="front_desk">Front Desk Training</option>
                        <option  value="home_health">Home Health Training</option>
                        <option  value="house_keeping">House Keeping</option>
                        <option  value="landscaping">Landscaping</option>
                        <option  value="life_guard">Life Guard Training</option>
                        <option  value="nail_tech">Nail Tech</option>
                        <option  value="wait_staff">Wait Staff Training</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-3">
                        <label class="font-weight-bold">Program Status:</label>
                        <select class="custom-select" name="programStatus" onfocus='this.size=3;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="Completed">Completed</option>
                        <option value="Dropped">Dropped</option>
                        <option value="Participated">Participated</option>
                        </select>
                    
                    </div>
                    <div class="col-12 col-md-2">
                        <label class="font-weight-bold">Final Average:</label>
                        <select class="custom-select" name="gradeFilter" id="courseStatus" onfocus='this.size=6;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <option value="1">All Grades</option>
                        <option value="100">100</option>
                        <option value="90">90 - 99</option>
                        <option value="80">80 - 89</option>
                        <option value="70">70 -79</option>
                        <option value="0">< 70</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-3">
                        <label class="font-weight-bold">Choose a Year (optional):</label>
                        <input type="number" name="year" placeholder="2010..." class="form-control " >
                    </div>
                </div>
                <br>
                <button class="btn btn-sm btn-primary float-right"><i class="fa fa-print"></i> Create Report</button>
        </form>
    </div>
    <!-- <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div> -->
    
    </div>
    
       
    </div>
</div>