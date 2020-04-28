// my jquery code for all pages

// defining global variables 
var eList = [];
var clist = [];
var hasView;
var hasEdit;
var inputCount = 2;
var userInfoFormData;
var PRIVI_SIZE = 10;

// var cList = [];


// end of definition 


/////////////function definitions starts///////////////////

//function sets the value of the inputCount that is used to enter the number of assesments//
function setInputCount(value){
    inputCount = value;
    console.log('inputCount = '+inputCount);
}
// function for validation if passwords match before submission and checks if requirements for 
// new password are met
function checkPasswordMatch() {
    
    //$('#submit-button').prop('disabled', true);
    var decimal =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/;//rules that govern what is required of a password
    var password = $("#newPass").val();
    var confirmPassword = $("#confirmPass").val();

    if (password != confirmPassword && confirmPassword != ''){
     
        $('#change-pass-btn').prop('disabled', true);
        $("#divCheckPasswordMatch").html("<span class='text-danger ml-4'>Passwords do not match!</span>");
    
    }else if(password == '' || confirmPassword == ''){

        $("#divCheckPasswordMatch").html(" ");
        $("#passRequirement").html(" ");
        $('#change-pass-btn').prop('disabled', true);
    
    }else{
        
        $("#divCheckPasswordMatch").html("<span class='text-success ml-4'> Passwords match.</span>");
        
        if (password.match(decimal)){

            $("#passRequirement").html(" ");
            $('#change-pass-btn').prop('disabled', false);

        }else{

            $("#passRequirement").html("<span class='text-danger ml-4'>Please meet the requirement stated above!</span>");

        }
    }
}
// function creates the enrolled structuring it into an object and so that it can be used by the datatable
function createList (jsonData, base_url, hasGradeEdit, hasEdit, hasView){

    //clearing old eList
    eList = [];

    if (jsonData[0].length > 0){

        var eTempList = { "data" : jsonData};
        var i;

        // loops used to get inner array data  
        for (var i in eTempList.data){
            for (var sub in eTempList.data[i]){
                eTempList.data[i][sub].full_name = eTempList.data[i][sub].first_name + ' ' + eTempList.data[i][sub].last_name;
                eTempList.data[i][sub].pActions = ((hasView == 1)? '<a href ="'+base_url+'client-info/'+eTempList.data[i][sub].id+'">View</a>':"")+
                ((hasEdit == 1)? '&nbsp'+'<a href ="'+base_url+'edit-client-info/'+eTempList.data[i][sub].id+'"> Edit</a>' : ""); 
                
                eTempList.data[i][sub].gView =((hasGradeEdit == 1)? '<a href ="'+base_url+'view-client-grade/'+(eTempList.data[i][sub].programme.replace(/\s/g , "-")).replace(/'/g,"")+'/'+eTempList.data[i][sub].id+'">Edit</a>' : "");

                //enrolled list object
                eList.push(eTempList.data[i][sub]);//we take the arrays that are embeded and list them out into one array 
            }

        }
    
        // console.log(eList); // checking if we have the correct data to display in the datatables
        initializeDatatable(eList);

    }else{
        //No record was returned so set parameter as 0 - false
        initializeDatatable(0);
    }

}
// This function initializes the data table plugin with the object created from the createList function
function initializeDatatable(data){

    $(document).ready(function(){
        if ($.fn.DataTable.isDataTable("#enrolledList")) {
            $('#enrolledList').DataTable().clear().destroy();
        }
        if (data != 0){
            let columns = [
                { "data": "id" , "sortable" : true },
                { "data": "full_name" , "sortable" : true},
                { "data": "programme" , "sortable" : false, "width": "25%"},
                { "data": "enrolled_in", "sortable" : false },
                { "data": "dob", "sortable" : true},
                { "data": "mobile_phone" , "sortable" : false}
            ];
            //we are gonna push the data for the colum if they have the privileges
            (hasGradeEdit == 1)? columns.push({ "data": "gView", "sortable" : false }) : '';
            (hasView == 1 || hasEdit == 1)? columns.push({ "data": "pActions", "sortable" : false }) : '';

            
            // columns.data = pAction;
            // console.log(columns)
            $('#enrolledList').DataTable({
                    "data" : data,
                    "columns" :columns,
                    "order": [[1, 'asc']]

            });    
        }else{

            $('#enrolledList').DataTable( {
                "language": {
                    "emptyTable":     "No records  were found!"
                }
            } );

        } 
        
    });

}

$(document).ready(function() {

  /***********start of custom function declaration **************/

    // function declared inside $(docuemnt).ready because it uses jquery 
    get_UserInfoFormData = function() {
        //saving current userInfoForm for to check if changes were made to it later
        var userInfoForm = $('#userInfoForm');

        // Find disabled inputs, and remove the "disabled" attribute
        var disabled = userInfoForm.find(':input:disabled').removeAttr('disabled');

        // serialize the form
        userInfoForm.data('serialize', userInfoForm.serialize());
        userInfoFormData = $(userInfoForm).data('serialize');// saving the current state of the userInfoForm

        //disabled the set of inputs that you previously enabled
        disabled.attr('disabled','disabled');
        
        //used for testing purposes
        // console.log(userInfoFormData);
        // console.log('userinfo');

    }

    //function gets the image uploaded and displayes it on the profile pic image tag
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
            
            $('#remove-client-img').show();//displaying remove image button for editing a client
            $('#remove-appli-img').show(); //displaying remove image button for adding a client
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    /**************End of function declaration************/

    // triggered in the edit grade page - unenrolling a user
    $('#removeClientFromProgram').click(function (e){
        e.preventDefault();
        //loading modal

        $('#unenrollClientModal').modal('show');

    });
    $('#confirmClientUnenroll').click(function (e){
        e.preventDefault();

        // console.log('confirm unenroll');
        $('#removeEnrolledClientForm').submit();

    });
    // triggered upon clicking the remove imag link in edit-client-info page
    $('#remove-img ').on('click', '#remove-client-img', function (e){
        e.preventDefault();

        $('#imgId').val(1);//setting default profile image ID 
        $('#profilePic').attr('src', base_url+'upload/default_profile_img.png');//bass_url is defined in footer.php as a global variable
        $('.client-img-upload').val('');
        $('#remove-client-img').hide();
       

    });

    // triggered when user clicks the remove button
    $('#remove-user-img').click(function (e){
        e.preventDefault();

        var data = $('#upload-img-form').serialize();
        
        //sending an ajax request as post to remove profile pic
        $.post(base_url+'remove-profile-picture', data, function(data){
            
            location.reload(true);//reloading current page from server and not from cache
            
            //hiding the remove button
            $(this).hide();

        });
       

    });
    // triggered when admin tries to change a user image 
    $('#remove-user-img-2').click(function (e){
        e.preventDefault();

        var data = $('#upload-img-form-2').serialize();
        console.log(data);

        //sending an ajax request as post to remove profile pic
        $.post(base_url+'remove-profile-picture', data, function(data){
         
            location.reload(true);//reloading current page from server and not from cache
            
            //hiding the remove button
            $(this).hide();

        });
       

    });

    // // on submitting the program assesmetn form
    // $('#assesNames').on('submit', function (e){


    //     let modifiedFormData = $('#assesNames').serialize();
       
    //     // console.log(assesNameForm);
    //     // console.log('break');
    //     // console.log(modifiedFormData);

    //     // checking to see if the form has changed
    //     //assesNameForm is defined in programSetup
    //     if(modifiedFormData !== assesNameForm){
            
    //         //submitting the form
    //         // $('#assesNames').submit();
    //         console.log('form not the same');

    //     }else{
            
    //         e.preventDefault();
    //         alert('No changes were made!');
    //     }

    // });

    //setting up the summernote plugin by specifying the components it should have
    $('#programComment').summernote({

        placeholder: 'Enter a comment...',
        tabsize: 2,
        height: 250,
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']]
          ]
    });

    //when the activation button is click it will send the activation form to the user.php controller
    //check form action to identify controller method
    $('#activateUser').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        var formData = $("#activationForm").serialize();
        var url = $("#activationForm").attr('action');

        //using jquery post ajax to send the form 
        $.post(url, formData, function(data){
           
            // console.log(data);
            location.reload(false);
            alert(data);


        }).fail(function(){
            alert('Something went wrong while trying to complete your request');
        }); 


        

    });
    // submitting form upon confirmation of modal
    $('#confirmProgComp').click(function(e){
        
        $('#gradeForm').submit();
        

    });

    //submitting grade changes that were made
    $('#saveGradeChanges').click(function(e){
       
        //checking if the status has been changed
        if ($('#courseStatus').val() != 1){
        
            $('#triggerConfirmModal').click();
            
            // alert('is not enrolled');

        }else{

            $('#gradeForm').submit();
            // alert('is enrolled');

        }


    });
    $('.add-more-asses').click(function(e){
        e.preventDefault();
        let html = '';   
        // alert(inputCount);
        if (inputCount <= 5) {
            
            html = '<div id="asses-input'+inputCount+'" class="row">';
            html += '<div class="col-12 col-md-12">';
            html += '<label >Assesment Name:</label>';
            html += '<div class="input-group">';
            html += '<input type="text" class="form-control" name="assesmentName[]" id="assesment'+inputCount+'" placeholder="Enter a name...." required    >';
            html += '<span class="input-group-append ">';
            html += '<span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>';
            html += '</span>';
            html += '</div>';
            html += '</div>';
            html += '</div>';
            
            $('#assesments').append(html);

            inputCount++;

        }else{
            
            alert('5 assesments are the maximum');
            console.log('5 assesments are the maximum');
        }

    });
    // used for adding more grades
    $('.add-more').click(function(e){
        e.preventDefault();
        let html = '';   
        // alert(inputCount);
        if (inputCount <= 5) {
            
            html = '<div id="asses-input'+inputCount+'" class="row">';
            html += '<div class="col-12 col-md-6">';
            html += '<label >Assesment Name:</label>';
            html += '<input type="text" class="form-control" name="assesName[]" id="assesName1" place="Practical" required>';            
            html += '</div>';
            html += '<div class="col-12 col-md-6">';
            html += '<label >Assesment Grade:</label>';
            html += '<div class="input-group">';
            html += '<input type="number" class="form-control" name="assesment[]" id="assesment'+inputCount+'" placeholder="Enter a grade....">';
            html += '<span class="input-group-append ">';
            html += '<span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>';
            html += '</span>';
            html += '</div>';
            html += '</div>';
            html += '</div>';
            
            $('#assesments').append(html);
            inputCount++;
        }else{
          console.log('5 assesments are the maximum');
        }

    });
    $('#assesments').on('click','.add-grade', function(e){
        e.preventDefault();
        var html = '';
        if (inputCount <= 5){

            //creating an input field
            html = '<div id="asses-input'+inputCount+'" class="row">';
            html += '<div class="col-12 col-md-6">';
            html += '<label >Assesment Name:</label>';
            html += '<input type="text" class="form-control" name="assesName[]" id="assesName1" place="Practical" required>';            
            html += '</div>';
            html += '<div class="col-12 col-md-6">';
            html += '<label >Assesment Grade:</label>';
            html += '<div class="input-group">';
            html += '<input type="number" class="form-control" name="assesment[]" id="assesment'+inputCount+'" placeholder="Enter a grade....">';
            html += '<span class="input-group-append ">';
            html += '<span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>';
            html += '</span>';
            html += '</div>';
            html += '</div>';
            html += '</div>';
            
            $('.add-grade').removeClass('bg-primary');
            $('.add-grade').addClass('bg-danger');
            
            $('.add-grade i').removeClass('fa-plus');
            $('.add-grade i').addClass('fa-minus');

            $('.add-grade').addClass('remove-grade');
            $(this).removeClass('add-grade');

            $('#assesments').append(html);
            
            inputCount++;
        }else{
          console.log('5 assesments are the maximum');
        }
        

    });
    $('#assesments').on('click','.remove-grade', function(){

        $(this).parent().parent().parent().parent().remove();
        inputCount--;

    });
    
    // Function below works for the select all for adding a user
    // selects all the privileges when the checkbox select all is selected and likewise
    // removes the uncheck off all privileges upon unchecking the checkbox

    $('#selectAll').change(function() {
        if($(this).is(':checked')){
            //setting all checkbox indside div to checked
            for (i = 1; i <= PRIVI_SIZE; i++){

                $('#privi'+i).attr("checked", true);
        
            }
        
        }
        if(!$(this).is(':checked')){
            //removing checked from all checkbox inside the div
            for (i = 1; i <= PRIVI_SIZE; i++){

                $('#privi'+i).attr("checked", false);
            }
            
        }
      });

      // triggered when the deleteing a user is click and assignes the modals confirm 
      // delete button the same href as the delete button link that was clicked
    $('#removeUser').click(function(e){
        e.preventDefault();
        let url = $(this).attr('href');
        console.log(url);
        $('#confirmUserDelete').attr('href', url);
    });

    //Used for changing a password in the user profile page.
    //it calls to the checkPasswordMatch() function to validate passwords
    $("#newPass, #confirmPass").keyup(checkPasswordMatch);

    // $("#clientInfoForm :input").attr("readOnly", true);//not used
    
    //Make all inputs in the clientinfoform readonly
    $("#profileForm :input").attr("readOnly", true);
    
    //form for updating a user profile is set to readonly
    $("#userInfoForm :input").attr("readOnly", true);
    
    //used for admin updating user profile pic
    $(".file-upload-2").on('change', function(){
        readURL(this);
        var data = new FormData(document.getElementById("upload-img-form-2"));
        
        console.log('form-2');
        console.log(data);

        //sends a request to the change_profile_pic() function in the user controller
        // to change the users profile pic
        $.ajax({
            url: base_url+'update-profile-picture',  
            type: 'POST',
            data: data,
            success:function(data){
                // location.reload(true);//reloading the current page from server not from cache
                location.reload(true);//reloading current page from server and not from cache
                console.log(data);
                alert(data);
            },
            cache: false,
            contentType: false,
            processData: false
        });
        
        

    });
   
    $(".file-upload").on('change', function(){
        readURL(this);
        var data = new FormData(document.getElementById("upload-img-form"));
        console.log('form-1');
        console.log(data);
        //sends a request to the change_profile_pic() function in the user controller
        // to change the users profile pic
        $.ajax({
            url: base_url+'update-profile-picture',  
            type: 'POST',
            data: data,
            success:function(data){
                location.reload(true);//reloading the current page from server not from cache
                console.log(data);
                alert(data);
            },
            cache: false,
            contentType: false,
            processData: false
        });
        
        

    });

    // used for user updating their profile pic
    // When uploading a profile picture this code is triggered
    $('#upload-img').click(function (e){
        //e.preventDefault();
        $('.file-upload').click();

    });

    //used for admin updating user profile pic
    $('#upload-img-2').click(function (e){
        //e.preventDefault();
        $('.file-upload-2').click();

    });

    // Used in the edit my profile page, makes all input fields writable
    $('#editProfile').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //
        
        $("#profileForm :input").attr("readOnly", false);
        $("#editProfile").css("display", "none");
        $("#saveProfileInfo").css("display", "block");

    });

    // Used in the edit my profile page.
    // sends an jquery ajax post to update the users profile 
    // and upon success makes all input fields readonly
    $('#saveProfileInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //

        
        var formData = $("#profileForm").serialize();
        //send out the input feilds that were modified and update the database 
        
        $.post("update-profile", formData, function(data){
           
            console.log(data);
            alert(data);
            $("#profileForm :input").attr("readOnly", true);
            $("#editProfile").css("display", "block");
            $("#saveProfileInfo").css("display", "none");
        
        });
        
        //send out the input feilds that were modified and update the database 
        

    });
    $('#editUser').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //

        $("#userInfoForm :input").attr("readOnly", false);
        $("#editUser").css("display", "none");//hiding the edit button
        $("#saveUserInfo").css("display", "block");//displaying the save button 
        $("input.action").attr("disabled", false);//finding all input with class called action. 

    });

    $('#saveUserInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        
        var formData = $("#userInfoForm").serialize();
        var base_url = $("#userInfoForm").attr('action');

        $('#userInfoForm').data('serialize',$('#userInfoForm').serialize());


        if(formData != userInfoFormData){
            // Form has changed!!!
            $.post(base_url, formData, function(data){
            
                console.log(data);
               alert(data);
                $("#userInfoForm :input").attr("readOnly", true);
                $("#editUser").css("display", "block");
                $("#saveUserInfo").css("display", "none");
                $("input.action").attr("disabled", true);
                get_UserInfoFormData();
            });

            console.log('Form was modified ');
        }else{
            $("#userInfoForm :input").attr("readOnly", true);
            $("#editUser").css("display", "block");
            $("#saveUserInfo").css("display", "none");
            $("input.action").attr("disabled", true);
            console.log('No changes were made.');
        }



        

    });
   
    $('#enrolledProgram').change(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        let base_url = $('#trainingList').attr('action');
        let formData = $('#trainingList').serialize();
        // console.log(link);
        $.ajax({
            type: "POST",
            url: base_url + 'enrolled-list',
            data: formData,
            //contentType: "application/json; charset=utf-8",
            dataType: "json",                    
            cache: false,                       
            success: function(response) {                        
                createList(response[0],response['base_url'], response['hasGradeEdit'], response['hasEdit'], response['hasView']);
                console.log(response);   
                console.log('success');
                //console.log(response);
            },
            error: function (e) {
                console.log('failed');
                console.log(e);
            }
        });  



        

    });

    // The functionality is triggered when the select option is changed in the program setting page   
    $('#programs').change(function(e){

        e.preventDefault();//if the button is to submit it will not do it //

        // let url = 'http://localhost/CI_miniproject/program-setup';//we will use the form URL
        // let tableSelected = $('#assesNames').val();//the selected option from the select input
        let formData = $('#assesNames').serialize();

        // sending a jquery ajax post to the url declared
        $.post(base_url+'program-setup', formData, function(data){
        
            let inputs = '';
            inputCount = 1;
            
            //We are clearing all the child elements of the parent element, i.e. the div that holds all the input fields
            $('#assesments').empty();
            
                console.log(data);
            if (data != 0){
                
                // console.log(JSON.parse(data));
                
                //Lopping through the jason object we have recieved 
                //NOTE: using JSON.parse() on returned data to prevent a error trigger
                //JSON.parse convers the data recieved into jason object format so we can then use the $.each()
                $.each(JSON.parse(data), function(key, value) {
                    
                    //Spliting the value to separate the assesment name and grade
                    if ( value !== null && value !== ""){

                        //splitting the value since we have it set in database as assesmentName-gradeValue
                        let asses = value.split(',');

                        // creating an input element
                        let html = '<div id="asses-input'+inputCount+'" class="row">';
                        html += '<div class="col-12 col-md-12">';
                        html += '<label >Assesment Grade:</label>';
                        html += '<div class="input-group">';
                        html += '<input type="text" class="form-control" name="assesmentName[]" id="assesment'+inputCount+'" value="'+asses[0]+'" required>';
                        html += '<span class="input-group-append ">';
                        html += '<span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>';
                        html += '</span>';
                        html += '</div>';
                        html += '</div>';
                        html += '</div>';

                        inputs += html;
                        inputCount++;

                    }
                });
            }else{
                console.log('no grade names availabe');
            }
              // If there were no grade assesments names then we will print out an empty input field
              if( inputCount == 1){
                let html = '<div id="asses-input'+inputCount+'" class="row">';
                html += '<div class="col-12 col-md-12">';
                html += '<label >Assesment Grade:</label>';
                html += '<div class="input-group">';
                html += '<input type="text" class="form-control" name="assesmentName[]" id="assesment'+inputCount+'" placeholder="Enter a name...." required>';
                html += '<span class="input-group-append ">';
                html += '<span class="input-group-text bg-danger remove-grade"><i class="fa fa-minus text-white"></i></span>';
                html += '</span>';
                html += '</div>';
                html += '</div>';
                html += '</div>';
                inputs += html;
                inputCount++;
              }
              $('#assesments').html(inputs);
     
        });

    });

    // when uploading a profile picture of a client
    $(".client-img-upload").on('change', function(){
        readURL(this);

    });
    // triggered when uploading a clients pic on updating their profile
    $('#upload-client-img').click(function (e){
        //e.preventDefault();
        $('.client-img-upload').click();
        

    });
    //removes image uploaded to addAppliant form
    $('#remove-appli-img').click(function (){

        $('.client-img-upload').val('');
        $('#appli-img').attr('src', base_url+'upload/default_profile_img.png');
        $('#remove-appli-img').hide();

    });
    

});