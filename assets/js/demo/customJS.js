// my jquery code for all pages

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

    $("#newPass, #confirmPass").keyup(checkPasswordMatch);

    //Make all inputs in the clientinfoform readonly
    // $("#clientInfoForm :input").attr("readOnly", true);
    $("#profileForm :input").attr("readOnly", true);
    $("#userForm :input").attr("readOnly", true);
    
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
        $("#userForm :input").attr("readOnly", false);
        $("#editUser").css("display", "none");
        $("#saveUserInfo").css("display", "block");
        $("input.action").attr("disabled", false);

    });
    $('#saveUserInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        
        
        $("#userForm :input").attr("readOnly", true);
        $("#editUser").css("display", "block");
        $("#saveUserInfo").css("display", "none");
        $("input.action").attr("disabled", true);


        

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