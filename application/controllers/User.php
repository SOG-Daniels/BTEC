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
        
        $this->userId = $this->session->userdata('userid');
     

        

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

        }

        
        
    }
    // displayed the pageContent for viewing one's profile 
    public function profile(){

        $this->data['title'] = 'Profile';
        $this->data['name'] = $this->session->userdata('name');
        
        $this->load->view('templates/header', $this->data);
        $this->load->view('templates/sidebar', $this->data);
        $this->load->view('templates/topbar', $this->data);
        $this->load->view('pageContent/profile', $this->data);
        $this->load->view('templates/footer', $this->data);

    }
    // displays the list of clients registered into the system.
        public function view_clients(){

        $this->data['title'] = 'Client List';
        $this->data['name'] = $this->session->userdata('name');
        $this->data['active'] = 'clientList';
       
        $this->load->view('templates/header', $this->data);
        $this->load->view('templates/sidebar', $this->data);
        $this->load->view('templates/topbar', $this->data);
        $this->load->view('pageContent/clients', $this->data);
        $this->load->view('templates/footer', $this->data);

    }
    // will add a new client to the database.
    public function add_client(){

        $this->data['active'] = 'addClient';
        
        $fname = $this->input->post();
        print_r($fname);
    }
    // will add a new user to the system
    public function add_users(){

        

    }
    // Calling the view to view users in the system
    public function view_users(){

        
    
        if ($this->is_session_set()){
            
            $this->data['title'] = 'User List';
            $this->data['name'] = $this->session->userdata('name');
            $this->data['active'] = 'userList';
        
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('pageContent/users', $this->data);
            $this->load->view('templates/footer', $this->data);


        }
        

    }
    public function view_user_profile($clientId = NULL){
        
        if($this->is_session_set()){

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


    }
    public function view_client_profile($clientId = NULL){

        if( $this->is_session_set()){

            $this->data['title'] = 'Client Details';
            // getting client data to pass to view 
            $this->data['name'] = $this->session->userdata('name');

            // display the data on the view     
            $this->load->view('templates/header', $this->data);
            $this->load->view('templates/sidebar', $this->data);
            $this->load->view('templates/topbar', $this->data);
            $this->load->view('user/clientInfo', $this->data);
            $this->load->view('templates/footer', $this->data);

        }



    }
    public function update_my_profile(){
       
        if( $this->is_session_set()){



        }


    }

    // return true or false whether the session is set or not 
    public function is_session_set(){

        if( isset($this->userId) ){

            return TRUE;

        }else{

            return FALSE;
        }

    }


}

?>
