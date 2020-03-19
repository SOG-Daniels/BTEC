// my jquery code for all pages

// defining global variables 
var eList = [];
var clist = [];
var hasView;
var hasEdit;
var inputCount = 2;
var userInfoFormData;

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
$(document).ready(function() {

    $('#saveProSettings').click(function (e){

        e.preventDefault();
        $('#assesNames').submit();

    });
    //setting up the summer not plugin my specifying the components it should have
    $('#programComment').summernote({

        placeholder: 'Enter a comment...',
        tabsize: 2,
        height: 250,
        toolbar: [
            // [groupName, [list of button]]
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
        //e.preventDefault;
        // $('#gradeForm').submit();

        //checking if the status has been changed
        if ($('#courseStatus').val() != 1){
        
            $('#triggerConfirmModal').click();
            
            // $('#modalProgramConfirm').modal('show');
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
          console.log('5 assesments are the maximum');
        }

    });
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
    
    $('#selectAll').change(function() {
        if($(this).is(':checked')){
            //setting all selects indside div to checked
            for (i = 1; i <= 8; i++){

                $('#privi'+i).attr("checked", true);
        
            }
        
        }
        if(!$(this).is(':checked')){
            //removing checked from all selects inside div
            for (i = 1; i <= 8; i++){

                $('#privi'+i).attr("checked", false);
            }
            
        }
      });

    $('#removeUser').click(function(e){
        e.preventDefault();
        let url = $(this).attr('href');
        console.log(url);
        $('#confirmUserDelete').attr('href', url);
    });

    $("#newPass, #confirmPass").keyup(checkPasswordMatch);

    //Make all inputs in the clientinfoform readonly
    // $("#clientInfoForm :input").attr("readOnly", true);
    $("#profileForm :input").attr("readOnly", true);
    
    //form for modifying a user profile
    $("#userInfoForm :input").attr("readOnly", true);
    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    // When uploading a profile picture this code is triggered
    $(".file-upload").on('change', function(){
        readURL(this);
        var data = new FormData(document.getElementById("upload-img-form"));
        // sending a ajax request to update the profile image of the user
        $.ajax({
            url: 'update-profile-picture',  
            type: 'POST',
            data: data,
            success:function(data){
                console.log(data);
                alert(data);
                location.reload(true);//reloading the current webpage we are in
            },
            cache: false,
            contentType: false,
            processData: false
        });
        
        

    });
    // when uploading a profile picture of a client
    $(".client-img-upload").on('change', function(){
        readURL(this);

    });

    $('#editClient').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //
        $("#clientInfoForm :input").attr("readOnly", false);
        $("#editClient").css("display", "none");
        $("#saveClientInfo").css("display", "block");
        $("#upload-img").css("display", "block");

    });
    $('#saveClientInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        $("#clientInfoForm :input").attr("readOnly", true);
        $("#editClient").css("display", "block");
        $("#saveClientInfo").css("display", "none");
        $("#upload-img").css("display", "none");

        //send out the input feilds that were modified and update the database 

    });
    $('#editProfile').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //
        
        $("#profileForm :input").attr("readOnly", false);
        $("#editProfile").css("display", "none");
        $("#saveProfileInfo").css("display", "block");

    });
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
        $("#editUser").css("display", "none");
        $("#saveUserInfo").css("display", "block");
        $("input.action").attr("disabled", false);

    });
    get_UserInfoFormData = function() {
        //saving current userInfoForm for to check if changes were made to it later
        var userInfoForm = $('#userInfoForm');

        // Find disabled inputs, and remove the "disabled" attribute
        var disabled = userInfoForm.find(':input:disabled').removeAttr('disabled');

        // serialize the form
        userInfoForm.data('serialize', userInfoForm.serialize());
        userInfoFormData = $(userInfoForm).data('serialize');

        // re-disabled the set of inputs that you previously enabled
        disabled.attr('disabled','disabled');
        
        console.log(userInfoFormData);
        console.log('userinfo');

    }
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

// The functionality is triggered when the select option is changed in the program setup UI   
    $('#programs').change(function(e){

        e.preventDefault();//if the button is to submit it will not do it //

        let url = 'http://localhost/CI_miniproject/program-setup';//we will use the form URL
        // let tableSelected = $('#assesNames').val();//the selected option from the select input
        let formData = $('#assesNames').serialize();

        // sending a jquery ajax post to the url declared
        $.post(url, formData, function(data){
        
            //console.log(JSON.parse(data));
            // let i = '1';
            let inputs = '';
            inputCount = 1;

            $('#assesments').empty();//We are clearing all the child elements of the parent element, i.e. the div that holds all the input fields
            
            //Lopping through the jason object we have recieved 
            //NOTE: using JSON.parse() on returned data to prevent a error trigger
            //JSON.parse convers the data recieved into jason format
            console.log(JSON.parse(data));
            $.each(JSON.parse(data), function(key, value) {
                // console.log(value);
                //Spliting the value to separate the assesment name and grade


                if ( value !== null && value !== ""){

                    //splitting the value since we have it set in database as assesmentName-gradeValue
                    let asses = value.split(',');

                    // console.log(asses);

                    let html = '<div id="asses-input'+inputCount+'" class="row">';
                    html += '<div class="col-12 col-md-12">';
                    html += '<label >Assesment Grade:</label>';
                    html += '<div class="input-group">';
                    html += '<input type="text" class="form-control" name="assesmentName[]" id="assesment'+inputCount+'" value="'+asses[0]+'">';
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
              // If there were no grade assesments names then we will print out an empty input field
              if( inputCount == 1){
                let html = '<div id="asses-input'+inputCount+'" class="row">';
                html += '<div class="col-12 col-md-12">';
                html += '<label >Assesment Grade:</label>';
                html += '<div class="input-group">';
                html += '<input type="text" class="form-control" name="assesmentName[]" id="assesment'+inputCount+'" placeholder="Enter a grade....">';
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


            // console.log(data['Assesment'+i]);   
            // alert(data);
     
        });

    });
    // $('#addClient').click(function (e){

    //     e.preventDefault();
    //     $('#clientInfoForm').submit();

    // });
    $('#upload-img').click(function (e){
        //e.preventDefault();
        $('.file-upload').click();

    });
    $('#upload-client-img').click(function (e){
        //e.preventDefault();
        $('.client-img-upload').click();

    });
});
// function creates the enrolled structuring it into an object and so that it can be used by the datatable
function createList (jsonData, base_url, hasGradeEdit, hasEdit, hasView){
  eList = [];
  console.log(jsonData);

    if (jsonData[0].length > 0){

        var eTempList = { "data" : jsonData};
        var i;

        // loops used to get inner arrays 
        for (var i in eTempList.data){
            for (var sub in eTempList.data[i]){
                eTempList.data[i][sub].full_name = eTempList.data[i][sub].first_name + ' ' + eTempList.data[i][sub].last_name;
                eTempList.data[i][sub].pActions = ((hasView == 1)? '<a href ="'+base_url+'client-info/'+eTempList.data[i][sub].id+'">View</a>':"")+
                ((hasEdit == 1)? '&nbsp'+'<a href ="'+base_url+'edit-client-info/'+eTempList.data[i][sub].id+'"> Edit</a>' : ""); 
                
                eTempList.data[i][sub].gView =((hasGradeEdit == 1)? '<a href ="'+base_url+'view-client-grade/'+(eTempList.data[i][sub].programme.replace(/\s/g , "-")).replace(/'/g,"")+'/'+eTempList.data[i][sub].id+'">Edit</a>' : "");

                eList.push(eTempList.data[i][sub]);//we take the arrays that are embeded and list them out into one array 
            }

        }
        console.log(eList);
        // for (i = 0; i < eTempList.data.length; i++) {

        //     eTempList.data[i][0].full_name = eTempList.data[i][0].first_name + ' ' + eTempList.data[i][0].last_name;
        //     eTempList.data[i][0].pActions = ((hasView == 1)? '<a href ="'+base_url+'client-info/'+eTempList.data[i][0].id+'">View</a>':"")+
        //     ((hasEdit == 1)? '&nbsp'+'<a href ="'+base_url+'edit-client-info/'+eTempList.data[i][0].id+'"> Edit</a>' : ""); 
            
        //     eTempList.data[i][0].gView =((hasGradeEdit == 1)? '<a href ="'+base_url+'view-client-grade/'+(eTempList.data[i][0].programme.replace(/\s/g , "-")).replace(/'/g,"")+'/'+eTempList.data[i][0].id+'">Edit</a>' : "");

        //     eList.push(eTempList.data[i][0]);
        // }
        initializeDatatable(eList);
    }else{
        //No record was returned so set parameter as 0 - false
        initializeDatatable(0);
    }

}
// This function initializes the data table api with the object created from the createList function
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
