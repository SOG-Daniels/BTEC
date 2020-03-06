// my jquery code for all pages

// defining global variables 
var eList = [];
// var cList = [];


// end of definition 

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
    $('#saveUserInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        var formData = $("#userInfoForm").serialize();
        var base_url = $("#userInfoForm").attr('action');
        $.post(base_url, formData, function(data){
           
            console.log(data);
            alert(data);

            $("#userInfoForm :input").attr("readOnly", true);
            $("#editUser").css("display", "block");
            $("#saveUserInfo").css("display", "none");
            $("input.action").attr("disabled", true);


        });


        

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
                createList(response[0]);    
                //     $('#enrolledListBody').html('');
                //     //$('#enrolledListBody').dataTable().fnDestroy();
                //    let trHTML = '';
                //     $.each(response, function (i, item) {
                //         //let list = {"data":response[0] };

                //         // $('#enrolledList').DataTable({
                //         //     "data" : list.data,
                //         //     "columns" :
                //         //     [
                //         //         { "data": "id" },
                //         //         { "data": "first_name" },
                //         //         { "data": "last_name" },
                //         //         { "data": "ssn" },
                //         //         { "data": "dob"},
                //         //         { "data": "email" },
                //         //         { "data": "mobile_phone" },
                //         //         { "data": "view" },
                //         //         { "data": "edit" }

                //         //     ]
                //         // });

                //         console.log(item[i].length);
                //         if (item[i].length > 0 ){

                //             let gradeEdit = '<a  href="'+ base_url+'client-grade/'+ item[i][0].id +'">Edit</a>';
                //             let viewProfile = '<a href="'+ base_url+'client-info/'+ item[i][0].id +'">View</a>';
                //             let editProfile = '<a href="'+ base_url+'edit-client-info/'+ item[i][0].id +'">Edit</a>';

                //             trHTML +=    '<tr><td>' + item[i][0].id + '</td>' +
                //             '<td>' + item[i][0].first_name + ' ' + item[i][0].last_name + '</td><td>' + item[i][0].programme +
                //             '</td><td>' + item[i][0].enrolled_in + '</td><td>' + item[i][0].dob + '</td><td>' + item[i][0].mobile_phone +
                //             '</td><td>' + gradeEdit + '</td><td>' + viewProfile +'&nbsp&nbsp'+ editProfile +'</td></tr>';
                //             //console.log(item);

                //         }else{
                //             trHTML  = '<tr><td colspan="8" class="text-center">No Results found! No one is enrolled in the program.</td><tr>'
                //         }
                //         console.log(item);
                //     });
                //     $('#enrolledListBody').html(trHTML);
                    //$('#enrolledListBody').append(trHTML);

                console.log('success');
                //console.log(response);
            },
            error: function (e) {
                console.log('failed');
                console.log(e);
            }
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
        for (i = 0; i < eTempList.data.length; i++) {

            eTempList.data[i][0].full_name = eTempList.data[i][0].first_name + ' ' + eTempList.data[i][0].last_name;
            eTempList.data[i][0].pActions = ((hasView == 1)? '<a href ="'+base_url+'client-info/'+eTempList.data[i][0].id+'">View</a>':"")+
            ((hasEdit == 1)? '&nbsp'+'<a href ="'+base_url+'edit-client-info/'+eTempList.data[i][0].id+'"> Edit</a>' : ""); 
            
            eTempList.data[i][0].gView =((hasGradeEdit == 1)? '<a href ="'+base_url+'view-client-grade/'+(eTempList.data[i][0].programme.replace(/\s/g , "-")).replace(/'/g,"")+'/'+eTempList.data[i][0].id+'">View</a>' : "");

            eList.push(eTempList.data[i][0]);
        }
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
            let gView = (hasGradeEdit == 1)? { "data": "gView", "sortable" : false } : '';
            let pAction = (hasView == 1 || hasEdit == 1)? { "data": "pActions", "sortable" : false } : '';
            $('#enrolledList').DataTable({
                    "data" : data,
                    "columns" :[
                    
                    { "data": "id" , "sortable" : true },
                    { "data": "full_name" , "sortable" : true},
                    { "data": "programme" , "sortable" : false, "width": "25%"},
                    { "data": "enrolled_in", "sortable" : false },
                    { "data": "dob", "sortable" : true},
                    { "data": "mobile_phone" , "sortable" : false},
                    gView,
                    pAction
                    ],
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
