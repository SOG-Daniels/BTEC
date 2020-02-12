// my jquery code for all pages
$(document).ready(function() {

    //Make all inputs in the clientinfoform readonly
    $("#clientInfoForm :input").attr("readOnly", true);
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
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });

    $('#editClient').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //
        $("#clientInfoForm :input").attr("readOnly", false);
        $("#editClient").css("display", "none");
        $("#saveClientInfo").css("display", "block");

    });
    $('#saveClientInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        $("#clientInfoForm :input").attr("readOnly", true);
        $("#editClient").css("display", "block");
        $("#saveClientInfo").css("display", "none");

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
        $("#profileForm :input").attr("readOnly", true);
        $("#editProfile").css("display", "block");
        $("#saveProfileInfo").css("display", "none");

        //send out the input feilds that were modified and update the database 
        

    });
    $('#editUser').click(function(e){
        
        e.preventDefault();//if the button is to submit it will not do it //
        $("#userForm :input").attr("readOnly", false);
        $("#editUser").css("display", "none");
        $("#saveUserInfo").css("display", "block");

    });
    $('#saveUserInfo').click(function(e){

        e.preventDefault();//if the button is to submit it will not do it //
        $("#userForm :input").attr("readOnly", true);
        $("#editUser").css("display", "block");
        $("#saveUserInfo").css("display", "none");

        //send out the input feilds that were modified and update the database 
        

    });

});