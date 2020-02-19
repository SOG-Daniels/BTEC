<?php
// defined('BASEPATH') OR exit('No direct script access allowed');
// This class will manage the users which are the admin and the general users 
// that do not have administrative priviledge
class User extends CI_Controller{

    //data Members
        protected $data;
        protected $userId;
        protected $username;

    // protected $data = array();
    // protected $session = array();


    //end of data members
    public function __construct(){

        //calls parent contructor and executes what ever is in it. THis is not needed if no construct
        //is created in the child class i.e. the User class
        parent::__construct();
        $this->load->library('session');
       // $this->session = array($this->session->all_userdata());
        //$this->data['name'] = $this->session['userid'];
        $this->load->model('user_model'); 

        $this->userId = $this->session->userdata('userid');
        $this->data['name'] = $this->session->userdata('name');
        

        

    }
    // displays the main home page upon login 
    public function get_dashboard(){

        
    // setting session so only logged in users have access
        if( $this->is_session_set()){

            $this->data['title'] = 'Dashboard';
            $this->data['active'] = 'dashboard';
            $this->data['name'] = $this->session->userdata('name');
            
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/home', $this->data);//pageContent
            $this->load->view('templates/footer', $this->data);

        }else{
            //if there is no session direct them back to the login 
            //print_r($this->session->all_userdata());
            // redirect('login');
        }

        
        
    }
    // displayed the pageContent for viewing one's profile 
    public function profile($slug = NULL){

        if($this->is_session_set()){

            $this->data['title'] = 'Profile';
            // getting client data to pass to view 
            $this->data['name'] = $this->session->userdata('name');

            $result = $this->user_model->get_user_info($this->session->userdata('userid'));

            if ($result === FALSE){
                echo "cannot retrieve profile data";
            }

            $this->data['profileData'] = $result;

            if ($this->session->flashdata('message')){

                $this->data['message'] = $this->session->flashdata('message');
                
            }
            $this->data['title'] = 'profile';
            

            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/profile', $this->data);
            $this->load->view('templates/footer', $this->data);

            
            

        }else{
            //session not set call login page 
            redirect('login');
        }

    }
    // displays the list of clients registered into the system.
    public function view_clients(){
        
        if($this->is_session_set()){
            $this->data['title'] = 'Client List';
            $this->data['active'] = 'clientList';
        
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/clients', $this->data);
            $this->load->view('templates/footer', $this->data);
        }else{
            // session not set call login page 
            redirect('login');
        }

    }
     /**
     * Adds a client to the system 
     * 
     * get_random_password() will add client to the system
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */ 
    public function add_client(){


        if($this->is_session_set()){
            // session is set allow access to add clients
            $this->data['active'] = 'test';//setting menu option addclient to be highlighted on the sidebar

            // form validation of input attributes 
            $this->form_validation->set_rules('fname', 'First Name:', 'required|trim');
            $this->form_validation->set_rules('lname', 'Last Name:', 'required|trim');
            $this->form_validation->set_rules('mname', 'Middle Name:', 'trim');
            // $this->form_validation->set_rules('mname', '', 'trim');
            $this->form_validation->set_rules('country', 'Country:', 'required|trim');
            $this->form_validation->set_rules('ctv', 'City/Town/Village:', 'required|trim');
            $this->form_validation->set_rules('ssn', 'SSN:', 'required|trim');
            $this->form_validation->set_rules('homePhone', 'Home Phone #:', 'trim');
            $this->form_validation->set_rules('mobilePhone', 'Mobile Phone #:', 'required|trim');
            $this->form_validation->set_rules('street', 'Street Address:', 'required|trim');
            
            $this->form_validation->set_rules('ecName', 'Emergency Contact Name:', 'required|trim');
            $this->form_validation->set_rules('ecNumber', 'Emergency Contact Number:', 'required|trim');
            $this->form_validation->set_rules('ecRelation', 'Emergency Contact Relation:', 'required|trim');
            
            $this->form_validation->set_rules('refName1', 'Name Ref#1:', 'required|trim');
            $this->form_validation->set_rules('refAddress1', 'Address Ref#1:', 'required|trim');
            $this->form_validation->set_rules('refCity1', 'City Ref#1:', 'required|trim');
            $this->form_validation->set_rules('refPhone1', 'Phone Ref#1:', 'required|trim');

            $this->form_validation->set_rules('refName2', 'Name Ref#2:', 'trim');
            $this->form_validation->set_rules('refAddress2', 'Address Ref#2:', 'trim');
            $this->form_validation->set_rules('refCity2', 'City Ref#2:', 'trim');
            $this->form_validation->set_rules('refPhone2', 'Phone Ref#2:', 'trim');

            $this->form_validation->set_rules('refName3', 'Name Ref#3:', 'trim');
            $this->form_validation->set_rules('refAddress3', 'Address Ref#3:', 'trim');
            $this->form_validation->set_rules('refCity3', 'City Ref#3:', 'trim');
            $this->form_validation->set_rules('refPhone3', 'Phone Ref#3:', 'trim');

            if($this->input->post('action') === 'addClient' && $this->form_validation->run() === TRUE){
                // process the data given in the form

                
                $post = $this->input->post(NULL, TRUE);
                $clientId = $this->user_model->enter_client($post);//Calling the user's modal method enter_client to add client to the system
               
                if ( $clientId === -1){
                    
                    $this->data['addClientMessage'] = '
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-frown"></i>Notice:</strong>
                    Client has already been entered into the system, refer to the clients table please.<h5>
                    </div>
                    ';


                }else if ( $clientId ){
                //checking if a valid id was returned (positive value)

                $this->data['addClientMessage'] = '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5><strong><i class="fa fa-2x fa-smile"></i> Success</strong>, Client has be registers!<h5>
                </div>
                ';
                
                //Checking if an image was uploaded to insert it to the database. 
                
                    
                    $newFileName = $post['fname'].'_'.$post['lname'].'_'.time();
                    
                    $config['upload_path'] = './upload/';
                    $config['allowed_types'] = 'jpg|png';
                    $config['file_name'] = $newFileName;
                    // $config['max_size'] = 2000;
                    // $config['max_width'] = 1500;
                    // $config['max_height'] = 1500;
            
                    $this->load->library('upload', $config);

                    if($this->upload->do_upload('clientImg')){
                        
                        $uploadInfo = $this->upload->data();
                        $filename = $uploadInfo['file_name'];

                        $result = $this->user_model->set_client_profile_pic($clientId, $filename);

                        if ($result === FALSE){
                            
                            $this->data['addClientMessage'] = '
                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5><strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong>
                            Client was added but was unable to upload image!<h5>
                            </div>
                            ';

                        }

                    }else{
                            $this->data['addClientMessage'] = '
                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5><strong><i class="fa fa-2x fa-frown"></i> We\'re sorry!</strong>
                            Client was added but was unable to upload image!<h5>
                            </div>
                            ';
                    //    echo $this->upload->display_errors();
                    }


                }else{

                    $this->data['addClientMessage'] = '
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-frown"></i> Opps!</strong>
                      Unable to add the client at the moment!<h5>
                    </div>
                    ';
                    

                }
                
                $this->data['title'] = 'Add Client';
                // calling views to structure the addClient form  
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/addClient', $this->data);
                $this->load->view('templates/footer', $this->data);

            }else{


                $this->data['title'] = 'Add Client';
                // Display the form 
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/addClient', $this->data);
                $this->load->view('templates/footer', $this->data);
            }
           
        
        }else{
            // session not set call login page 
            redirect('login');
        }

        
        
    }
    /**
     * Adds user to the system and emails them a password to login 
     * 
     * get_random_password() will return users back to the dashboard/home providing a success or failure message
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */
    public function update_user($userID){

        if ($this->is_session_set()){


        }else{
            redirect('login');
        }
    }    
    /**
     * add_user() will return users back to the dashboard/home providing a success or failure message
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */    
    public function add_user(){

        
        if($this->is_session_set()){
            // session is set allow access to add clients

            $post = $this->input->post(NULL, TRUE);//returns all post items with XSS filter

            // setting title to the view
            $this->data['title'] = 'Add User';
            
            if ($post !== NULL ){
                //passing post data to the model 
                $result = $this->user_model->enter_user($post);

                if($result === 0){
                    $this->data['addUserMessage'] = '
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-exclamation-triangle"></i> Notice!</strong> The user is already in the system please check the user list to confirm.<h5>
                    </div>
                    ';
                    
                }elseif ($result === TRUE){

                    $oneTimePass = $this->generate_random_pass();
                    $sub = 'Welcome '.$post['fname'].' '.$post['lname'].' to the BTEC Family!';
                    $mess = 'To access the BTEC system you can click <a href="'.base_url().'">here </a><br>
                    To change your password you can:<br>
                    Sign in with this password <strong>'.$oneTimePass.'</strong> with your email. <br>
                    Then navigate to your profile to find the change password option. 

                    Thank you have a nice day. 
                    - Intern Daniels
                    
                    ';
                    $emailTo = $post['email'];

                    $this->email->from('danielsoncorrea@gmail.com', 'Daniels');
                    $this->email->to($emailTo);
                    $this->email->subject($sub);
                    $this->email->message($mess);

                    if ($this->email->send()){
                        
                        $this->data['addUserMessage'] = '
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5><strong><i class="fa fa-2x fa-smile"></i> Success!</strong>  The user was added to the System and has been notified via email!<h5>
                        </div>
                        ';


                    }else{

                        $this->data['addUserMessage'] = '   
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5>
                        <strong><i class="fa fa-2x fa-frown"></i> Whoops!</strong> The user was added to the system but not notified via Email! 
                        <h5>
                        </div>
                        ';



                    }            

                    


                }else{

                    // <a class="btn btn-link nav-link" data-target="#addUserModal" data-toggle="modal" data-backdrop="static" data-keyboard="false" >
                    // <i class="fas fa-fw fa-user-plus "></i>
                    // <span> Try again?</span>
                    // </a>

                    $this->data['addUserMessage'] = '
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5>
                    <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> The user was not added to the system! 
                    <h5>
                    </div>
                    ';
                }
                
                // returning back to home  page
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/home', $this->data);
                $this->load->view('templates/footer', $this->data);
            }

            
        }else{
            // session not set call login page 
            redirect('login');
        }

    }
    // This function will display all the users in the system in a table
    public function view_users(){

        
        if($this->is_session_set()){
            // session is set allow access to view users 

            $this->data['title'] = 'User List';
            $this->data['name'] = $this->session->userdata('name');
            $this->data['active'] = 'userList';

            $result = $this->user_model->get_user_list();
            
            if ($result === FALSE){

                $this->data['userListMessage'] = '
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5>
                <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> Unable to display users. 
                <h5>
                </div>
                ';

            }else{
            
                $this->data['userList'] = $result;

            }
            
        
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/users', $this->data);
            $this->load->view('templates/footer', $this->data);

        }else{
            // session not set call login page 
            redirect('login');
        }
    

    }
    // Functions displays information the system has on the user
    public function view_user_profile($userId = NULL){
        
        if($this->is_session_set()){
            //Session is set user can view_user_profile

            if ($userId !== NULL){

                // getting user data from user_model 
                $result = $this->user_model->get_user_info($userId);
                
                if($result === FALSE){

                    echo 'Unable to retrieve user data';

                }else{

                    $this->data['userData'] = $result;
                    $this->data['title'] = 'User Details';
                    // getting client data to pass to view 
                    $this->data['name'] = $this->session->userdata('name');

                    // display the data on the view     
                    $this->load->view('templates/header', $this->data);
                    $this->load->view('templates/sidebar', $this->data);
                    $this->load->view('templates/topbar', $this->data);
                    $this->load->view('user/userInfo', $this->data);
                    $this->load->view('templates/footer', $this->data);

                }



            }else{
                echo "Cannot view the profile at the moment";
            }



        }else{
            // session not set call login page
            redirect('login');
        }


    }
    // shows a more detailed description of what the system has on the user
    public function view_client_profile($clientId = NULL){

        if( $this->is_session_set()){
            //Session is set user can view client profile 
            $this->data['title'] = 'Client Details';
            // getting client data to pass to view 
            $this->data['name'] = $this->session->userdata('name');

            // display the data on the view     
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('user/clientInfo', $this->data);
            $this->load->view('templates/footer', $this->data);

        }else{

            redirect('login');
        }



    }
    /**
     * Will update the current users profile 
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */    
    public function update_my_profile(){
       
        if( $this->is_session_set()){
            
            $userid = $this->session->userdata('userid');
            $postData = $this->input->post(NULL, TRUE);

            $result = $this->user_model->update_user_profile($userid, $postData);

            if ($result === FALSE){

                return "Failed to make changes";

            }
            return "Success! Changes were made.";

            

        }else{
            // session not set call login page 
            redirect('login');
        }
    }
    public function change_profile_pic(){
        
        if ($this->is_session_set()){

            if(!empty($_FILES['profileImg']['name'])){
                
                $newFileName = trim($this->session->userdata('name'), ' ').'_'.time();
                
                $config['upload_path'] = './upload/';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['file_name'] = $newFileName;
                // $config['max_size'] = 2000;
                // $config['max_width'] = 1500;
                // $config['max_height'] = 1500;
        
                $this->load->library('upload', $config);

                if($this->upload->do_upload('profileImg')){
                    
                    $uploadInfo = $this->upload->data();

                    $filename = $uploadInfo['file_name'];
                    $userId = $this->session->userdata('userid');

                    $result = $this->user_model->set_profile_pic($userId, $filename);

                    if ($result === FALSE){

                        echo "Profile Image was not updated";
                        
                    }else{

                        $this->session->set_userdata('imgPath', 'upload/'.$filename);
                        echo "Profile Image was updated!";

                    }

                }else{
                    echo $this->upload->display_errors();
                }



            }else{
                 print_r($_FILES);
            }

        }else{

            redirect('login');
        }

    }

    // Checks if the session is set by returning TRUE or FALSE
    public function is_session_set(){

        if ( isset($this->userId) ){

            return TRUE;

        }else{

            return FALSE;
        }

    }
  
    /**
     * Will generate a random password that is 7 char long containing numbers and letters
     *
     * @access    public
     * @param     NONE
     *
     * @return    String An alpha numeric string 
     */    
    public function generate_random_pass(){

        return random_string('alnum', 7); 

    }
    
  
    /**
     * Will change the current users password one the old passwords match
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */    
    public function change_pass(){

        if ($this->is_session_set()){
            
            // getting post input and performing a XSS filtering 
            $pass = $this->input->post('oldPass' , TRUE);
            $newPass = $this->input->post('confirmPass', TRUE);

            // getting data about user stored in session
            $email = $this->session->userdata('email');
            $uid = $this->session->userdata('userid');

            //calling the verificaiton model to check if users old pass is correct
            $result = $this->validation_model->get_user($email, $pass);

            if ($result === FALSE){

                $this->data['message'] = '
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5>
                <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> The old password entered is not correct. 
                <h5>
                </div>
                ';
            
                
            }else{

                $this->data['message'] = '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5>
                <strong><i class="fa fa-2x fa-smile"></i> Success!</strong> Password has been changed! 
                <h5>
                </div>
                ';
                //requesting to change password
                $result = $this->validation_model->set_new_pass($uid, $newPass);

                if ($result === FALSE){

                    $this->data['message'] = '
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5>
                    <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> Unable to update password at the moment. 
                    <h5>
                    </div>
                    ';
                }   
            }
            $this->session->set_flashdata('message', $this->data['message']);
            redirect('profile');

        }else{
            redirect('login');
        }

    }


}

?>
