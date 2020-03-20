<?php
// defined('BASEPATH') OR exit('No direct script access allowed');
// This class will manage the users which are the admin and the general users 
// that do not have administrative priviledge
class User extends CI_Controller{

    //data Members
        protected $data;
        protected $userId;
        protected $username;
        protected $user_actions;
        protected $message;
        protected $programTables;
        protected $userIdent;
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
        $this->load->model('client_model'); 

        $this->userId = $this->session->userdata('userid');
        $this->data['name'] = $this->session->userdata('name');
        $this->user_actions = $this->session->userdata('action');
        $this->userIdent = $this->session->userdata('userIdentity');

        $this->programTables = array(
            'Introduction-to-Barbering' => 'barbering',
            'Bartending' => 'bartending',
            'Business-Process-Outsourcing' => 'bpo',
            'Child-Care-Training' => 'child_care',
            'Computers-For-Everyday-Use' => 'computer_basics',
            'Event-Planning' => 'event_planning',
            'Front-Desk-Training' => 'front_desk',
            'Home-Health-Training' => 'home_health',
            'House-Keeping' => 'house_keeping',
            'Landscaping' => 'landscaping',
            'Life-Guard-Training' => 'life_guard',
            'Nail-Tech' => 'nail_tech',
            'Wait-Staff-Training' => 'wait_staff'
        );
        

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
            redirect('login');
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
     /**
     * 
     * Will call and populate the view that displays all the applicants in the system
     * 
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */ 
    public function view_enrolled_list(){
        

        if($this->is_session_set() && in_array(5, $this->user_actions)){
           
            $this->data['title'] = 'Enrolled List';
            $this->data['active'] = 'applicants';

            $this->data['selected'] = '1';
          
            if (!empty($this->input->post('program'))){
                //echo "<pre>";
                //echo jason_encode($this->input->post());
                //echo "</pre>";
                // // Passing the post values with xxs filterig to the get_enrolled_list model
                $this->data['enrolledList'] = array($this->client_model->get_enrolled_list($this->input->post('program', TRUE)));
                //$this->data['enrolledList']['selected'] = $this->input->post('program');
                $this->data['enrolledList']['hasGradeEdit'] = (in_array(6,$this->session->userdata('action')))? 1 : 0;
                $this->data['enrolledList']['hasView'] = (in_array(2,$this->session->userdata('action')))? 1 : 0;
                $this->data['enrolledList']['hasEdit'] = (in_array(6,$this->session->userdata('action')))? 1 : 0;
                $this->data['enrolledList']['base_url'] = base_url();

                echo json_encode($this->data['enrolledList'],JSON_HEX_TAG);//providing the data to the ajax request;
                // $data['selected'] = $this->input->post('program');
                
            }else{

                $this->data['enrolledList'] = $this->client_model->get_enrolled_list();
                
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/enrollList', $this->data);
                $this->load->view('templates/footer', $this->data);
                
            }
        
                


        }else{
            // session not set call login page 
            redirect('login');
        }

    }

    // displays the list of clients registered into the system.
    public function view_clients(){
        
        if($this->is_session_set() && in_array(2, $this->user_actions)){


            $this->data['title'] = 'Client List';
            $this->data['active'] = 'clientList';
            $this->data['cList'] = $this->client_model->get_client_list();
        
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


        if($this->is_session_set() && in_array(1, $this->user_actions)){
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
            
            $this->form_validation->set_rules('company_name', 'Company Name:', 'required|trim');
            $this->form_validation->set_rules('position', 'Position/Job Title:', 'required|trim');
            
            $this->form_validation->set_rules('ed_name', 'Insititution Name:', 'required|trim');
            $this->form_validation->set_rules('ed_degree', 'Highest level of Education:', 'required|trim');
            
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

            $this->form_validation->set_rules('preTestAvg', 'Address Ref#3:', 'trim');
            $this->form_validation->set_rules('enrolled_on', 'Year Enrolled:', 'trim');
            // Data that will be passed to the view 
            $this->data['title'] = 'Add Client';
            $this->data['active'] = 'addClient';

            if($this->input->post('action') === 'addClient' && $this->form_validation->run() === TRUE){
                // process the data given in the form
                // print_r($this->input->post());

                $hasImgFile = (!empty($_FILES['clientImg']['name']))? 1 : 0;
                
                $post = $this->input->post(NULL, TRUE);
                $clientId = $this->client_model->enter_client($post, $hasImgFile);//Calling the user's modal method enter_client to add client to the system

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
                    if ($hasImgFile){


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

                            $result = $this->client_model->set_client_profile_pic($clientId, $filename);

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
                
                // calling views to structure the addClient form  
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/addClient', $this->data);
                $this->load->view('templates/footer', $this->data);

            }else{


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
    public function set_client_pic($hasImgFile = 0, $post = NULL, $clientId = NULL){
            if ($hasImgFile){
                //print_r($post);

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

                    $result = $this->client_model->update_client_profile_pic($clientId, $filename);

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
            }

    }
    /**
     * Adds user to the system and emails them a password to login 
     * 
     * get_random_password() will return users back to the dashboard/home providing a success or failure message
     *
     * @access    public
     * @param     clientId
     *
     * @return    NONE 
     */
    public function update_client($clientId = NULL){
        if ($this->is_session_set() && in_array( 1, $this->user_actions)){
                // session is set and has privilege to update users
            $this->data['title'] = 'Update Client';
            
            if ($this->input->post('action') === 'updateClient'){
                
                
                $post = $this->input->post(NULL, TRUE);

                $hasImgFile = (!empty($_FILES['clientImg']['name']))? 1 : 0;//checking if image was uploaded
                $result = $this->client_model->update_client_info($clientId, $post, $hasImgFile);
                $result2 = $this->client_model->update_client_program_list($clientId, $this->input->post('programList', TRUE)); 
                $result3 = $this->set_client_pic($hasImgFile, $post, $clientId);
                // echo "<pre>";
                // print_r($this->input->post());
                // echo "</pre>";
                if ($result){
                    $message = '
                    
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-smile"></i> Success!</strong> User was updated.<h5>
                    </div>
                    
                    
                    ';
                }else{

                    $message = '
                    
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-frown"></i> We\'re Sorry!</strong> Some of the changes were not saved.<h5>
                    </div>
                    
                    
                    ';
                }
                    $this->session->set_flashdata('message',$message);
                    redirect('edit-client-info/'.$clientId) ;

            }else{

                $clientData = $this->client_model->get_personal_info($clientId);
                $programList = $this->client_model->get_program_list($clientId);
            

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

                $this->form_validation->set_rules('preTestAvg', 'Address Ref#3:', 'trim');
                $this->form_validation->set_rules('enrolled_on', 'Year Enrolled:', 'trim');

                // Result was return lets go in the if 
                if ($clientData !== FALSE && $programList !== FALSE){

                    $this->data['clientData'] = $clientData;
                    $this->data['programList'] = $programList;

                }

                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/updateClient', $this->data);
                $this->load->view('templates/footer', $this->data);

            }

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

        
        if($this->is_session_set() && in_array(3, $this->user_actions)){
            // session is set allow access to add clients

            $post = $this->input->post(NULL, TRUE);//returns all post items with XSS filter

            // setting title to the view
            $this->data['title'] = 'Add User';
            
            if ($post !== NULL ){
                //passing post data to the model 
                $result = $this->user_model->enter_user($post);

                if($result === FALSE){
                    $this->message = '
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5>
                    <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> The user was not added to the system! 
                    <h5>
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
                    $config['email'] = Array( 
                        'protocol'  => 'smtp', 
                        'smtp_host' => 'smtp.mailtrap.io', 
                        'smtp_port' =>  2525, 
                        'smtp_user' => '0077e845401d5e', 
                        'smtp_pass' => '736b4e111764b4', 
                        'crlf'      => "\r\n", 
                        'newline'   => "\r\n"
                        );
                    $this->email->initialize($config);

                    $this->email->from('danielsoncorrea@gmail.com', 'Daniels');
                    $this->email->to($emailTo);
                    $this->email->subject($sub);
                    $this->email->message($mess);

                    if ($this->email->send()){
                        
                        $this->message = '
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5><strong><i class="fa fa-2x fa-smile"></i> Success!</strong>  The user was added to the System and has been notified via email!<h5>
                        </div>
                        ';


                    }else{
                        $mess ='';
                        
                        if ($this->user_model->set_user_default_pass($result) === TRUE){
                            $mess = 'User defualt password is: <strong>Passw0rd</strong>';
                        }
                        $this->message = '   
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5>
                        <strong><i class="fa fa-2x fa-exclamation-triangle"></i> Whoops!</strong> The user was added to the system but not notified via Email! '.$mess.'
                        <h5>
                        </div>
                        ';
                    }            

                }else{

                    $this->message = '
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5><strong><i class="fa fa-2x fa-exclamation-triangle"></i> Notice!</strong> The user is already in the system please <a href="'.base_url().'user-info/'.$result.'">check here</a> to view their profile.<h5>
                    </div>
                    ';
                    // <a class="btn btn-link nav-link" data-target="#addUserModal" data-toggle="modal" data-backdrop="static" data-keyboard="false" >
                    // <i class="fas fa-fw fa-user-plus "></i>
                    // <span> Try again?</span>
                    // </a>

                    
                }
                $this->session->set_flashdata('addUserMessage', $this->message);
                // returning back to home  page
                redirect('dashboard');
                // $this->load->view('templates/header', $this->data);
                // $this->load->view('templates/sidebar', $this->data);
                // $this->load->view('templates/topbar', $this->data);
                // $this->load->view('pageContent/home', $this->data);
                // $this->load->view('templates/footer', $this->data);
            }

            
        }else{
            // session not set call login page 
            redirect('login');
        }

    }
    // This function will display all the users in the system in a table
    public function view_users(){

        
        if($this->is_session_set() && in_array(4, $this->user_actions)){
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
        
        if($this->is_session_set() && in_array(4, $this->user_actions) ){
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
    /**
     * Will add user based on the id the hidden input value had
     *
     * @access    public
     * @param     NONE
     *
     * @return    NONE 
     */    
    public function update_user_profile(){
        if( $this->is_session_set() && in_array(4, $this->user_actions)){
            
            //going to update the user profile
            if ($this->input->post('action') === 'saveUserInfo' && !empty($this->input->post('userId'))){
            
                $postData = $this->input->post(NULL, TRUE);
                $result = $this->user_model->update_user_info($postData);
                $result2 = $this->user_model->set_user_update_info($this->input->post('userId', TRUE), $this->userIdent);

                if ($result2 === FALSE){
                    log_message('debug', 'set_user_update_info() returned false, unable to set updated_on and updated by');
                }
                if ($result === FALSE){
                    echo 'Opps! some of modifications have not been saved!';
                }else{
                    echo 'Success! Profile is updated.';
                }
                

            }

        }else{
            echo 'didnt work';
        }

    }
    // shows a more detailed description of what the system has on the user
    public function view_client_profile($clientId = NULL){

        if( $this->is_session_set() && in_array(2, $this->user_actions)){
            //Session is set user can view client profile 
            $this->data['title'] = 'Client Details';
            // getting client data to pass to view 
            $this->data['name'] = $this->session->userdata('name');

            //requesting data from model
            $this->data['clientData'] = $this->client_model->get_client_profile($clientId);

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

                echo "Failed to make changes";

            }else{

                echo "Success! Changes were made.";
            }

            

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
     * Will allow user to view clients grade and modify them
     *
     * @access    public
     * @param     NONE
     *
     * @return    String An alpha numeric string 
     */    
    public function view_client_grade($program = NULL, $clientId = NULL){

        if ($this->is_session_set() && in_array(2, $this->user_actions)){

            $this->data['title'] = "Grades";

            $result = $this->client_model->get_client_program_info($clientId, $this->programTables[$program]);

            // appending the parameters to the result array as we will need it to update client grade
            $result[0]['program'] = $this->programTables[$program];
            $result[0]['clientId'] = $clientId;
            $result[0]['slug'] = $program.'/'.$clientId;

            if ($result === FALSE){
                $result = 0;
            }
            $this->data['programInfo'] = $result;

            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/grades', $this->data);
            $this->load->view('templates/footer', $this->data);


        }else{
            redirect('login');
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
    /**
     * Will remove user from system and reload the userlist
     *
     * @access    public
     * @param     userId the ide of the user selected 
     *
     * @return    NONE
     */    
    public function remove_user($userId = NULL){
        
        if ($this->is_session_set() && in_array(8, $this->user_actions)){

            $result = $this->user_model->set_user_status($userId);

            if (!$result){
                $this->data['message'] = '
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5>
                    <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> Unable to remove users. 
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
                    <strong><i class="fa fa-2x fa-smile"></i> Success!</strong> The users has been removed from the system. 
                    <h5>
                    </div>
                ';

            }
            $this->session->set_flashdata('message', $this->data['message']);
            redirect('user-list');


        }else{
            redirect('login');
        }
    }   
    /**
     * WIll update the program based on the inputs recieved 
     *
     * @access    public
     * @param     NONE 
     *
     * @return    NONE
     */    
    public function update_client_grade(){
        
        if ($this->is_session_set() && in_array(6, $this->user_actions)){

            if (!empty($this->input->post())){
                //passing post data to client model to update info
                // echo "<pre>";
                // print_r($this->input->post());
                // echo "</pre>";
                $comment = $this->input->post('comment');
                echo "<pre>";
                echo $comment;
                echo "</pre>";

                
                $result = $this->client_model->update_client_grade($this->input->post(NULL, TRUE), $comment);

                //Below are messages that will be flashed to the view once
                if ($result === FALSE){

                    $this->data['message'] = '
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5>
                        <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> Something went wrong trying to update the grades. 
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
                        <strong><i class="fa fa-2x fa-smile"></i> Success!</strong> Updates have been saved. 
                        <h5>
                        </div>
                    ';

                    $result2 = $this->client_model->set_client_updateGrade_info($this->input->post('clientId', TRUE),$this->input->post('program', TRUE),$this->userIdent);
                    if ($result2 == FALSE){
                        log_message('debug', 'User.php update_client_grade() : Could not ser client updated_on and updated by');
                    }

                }

                $this->session->set_flashdata('message', $this->data['message']);//setting a message that will only be flashed once to the UI

                if($this->input->post('status') != "1"){
                //  status is not enrolled so we will go to the enrolled list
                    redirect('user-list');
                
                }else{
                // the user is still enrolled so we will reload the same page
                    redirect('view-client-grade/'.$this->input->post('slug'));

                }

            }


        }else{
            redirect('login');
        }

    
    }
    /**
     * WIll update the program based on the inputs recieved 
     *
     * @access    public
     * @param     NONE 
     *
     * @return    NONE
     */    
    public function activate_user(){
        
        if (!empty($this->input->post())){
            
            $result = $this->user_model->activate_user($this->input->post('userId'), TRUE);
            if ($result == FALSE){
                echo 'Unable to Activate User';
                // log_message('error','Unable to activate user');
            }else{
                echo 'Success! User has been activated.';
            }
        }else{
            
            log_message('debug', 'User.php active_user(), empty post recieved');

        }
    }
    /**
     * calls upon a model to get the list of potential equal values to that of what is being searched
     *
     * @access    public
     * @param     NONE 
     *
     * @return    jasonEncode data that was found to be a match
     */    
    public function auto_complete(){

        // if($this->client_model->)
        if( $this->is_session_set() ){

            if ($this->input->get('term')){
                
            }
            
            // echo '<script>alert("test");</script>';
            // echo '<script>alert('.$this->input->get('term', TRUE).');</script>';
            $result = $this->user_model->autocomplete_search( $this->input->get('term', TRUE));

            if ($result === FALSE){
                log_message('debug', 'Auto complete query returned false');
            }else{
                echo jason_encode($result); 
                // echo "<pre>";
                // print_r($result);
                // echo "</pre>";
            }

        }else{
            redirect('login');
        }
    }
    /* program_setup will allow admin/users to setup the grades or availability of functions
     *
     * @access    public
     * @param     NONE 
     *
     * @return    jasonEncode data that was found to be a match
     */    
    public function program_setup(){
    
        if ($this->is_session_set()){
           
            // echo "<pre>";
            // print_r($this->input->post());
            // echo "</pre>";

            // checking to see if ajax has sent a post request
            if (!empty($this->input->post()) && !empty($this->input->post('program'))){

                $result = $this->client_model->get_program_grades_names($this->input->post('program'), TRUE);
                echo json_encode($result);
                // echo jason_encode($this->data['programInfo']);
                // echo 'test';     
            }else{// No ajax post sent, then we will just load the default 

                // $table = (!empty($this->input->post('program'))? $this->input->post('program') : 'barbering');
                $this->data['programInfo'] = $this->client_model->get_program_grades_names();
                
                $this->data['title'] = "Program Setup";
                
                $this->load->view('templates/header', $this->data);
                $this->load->view('templates/sidebar', $this->data);
                $this->load->view('templates/topbar', $this->data);
                $this->load->view('pageContent/programSetup', $this->data);
                $this->load->view('templates/footer', $this->data);
                // echo 'does not send the post';
                // echo '<pre>';
                // print_r($this->input->post());
                // echo '</pre>';


            }
            // echo "<pre>";
            // print_r($this->data['programInfo']);
            // echo "</pre>";



        }else{
            redirect('login');
        }
    }
    /* save_assesments_name will save the names of the assesments listed
     *
     * @access    public
     * @param     NONE 
     *
     * @return    NONE
     */    
    public function save_assesment_name(){
    
        if ($this->is_session_set()){

            if(!empty($this->input->post()) && !empty($this->input->post('program'))){

                $result = $this->client_model->set_program_asses_name($this->input->post(NULL, TRUE));
 
                if ($result === FALSE){

                    $this->data['message'] = '
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5>
                        <strong><i class="fa fa-2x fa-frown"></i> Oh Snap!</strong> Something went wrong trying to update the assesment names. 
                        <h5>
                        </div>
                    ';

                }else if ($result === 0){
                    
                    $this->data['message'] = '
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5>
                    <strong><i class="fa fa-2x fa-exclamation-mark"></i> Notice: </strong> The training/program you have selected does not have anyone enrolled at the moment.
                    Please refer to the <a href="'.base_url().'enrolled-list"> enrolled list</a> or <a href="'.base_url().'client-list">add a client </a>
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
                        <strong><i class="fa fa-2x fa-smile"></i> Success!</strong> The assesment names were saved. 
                        <h5>
                        </div>
                        ';

                }

                $this->session->set_flashdata('message', $this->data['message']);
                redirect('program-setup');


            }else{
                redirect('program-setup');
            }

        }else{
            redirect('login');
        }
    }
    
}

?>
