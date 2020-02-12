<?php 
class Verification extends CI_Controller{

    // data members
    protected $userEmail;


    // end of data members
    function __contruct(){

        parent::__construct();//calling parent contructor
        // These only work when loaded in the autoload.php file
        // $this->load->library('session');        //starting the session 
        // $this->load->helper('url');
        //$this->load->model('validation_model'); 
        
        
    }
    public function login(){
        
        $data['title'] = 'Login';

        if ( $this->session->has_userdata('userid') ){
            
            redirect('dashboard');

        }else{

            // if login button was clicked
            
            if($this->input->post('action') === 'login'){
                
                $email = $this->input->post('email');
                $pass = $this->input->post('pass');
                $result = $this->validation_model->get_user($email, $pass);

                echo $result;
                if($result === FALSE){

                    $data['message'] = '<div class="alert alert-danger" role="alert">
                    Please make sure email and password are correct
                    </div>';
                    
                    $this->load->view('templates/header', $data);
                    $this->load->view('pageContent/login', $data);
                    $this->load->view('templates/footer');
                   
                }else{

                    $this->session->set_userdata('userid', $result['user_id']);
                    $this->session->set_userdata('name', $result['name']);
                    $this->session->set_userdata('email', $result['email']);

                    redirect('dashboard');
                }
            }
            else{
                // loading the login
                $this->load->view('templates/header', $data);
                $this->load->view('pageContent/login', $data);
                $this->load->view('templates/footer');
               

            }

        }
    }
    public function logout(){


        if($this->session->userdata('userid')){
           
            $session = $this->session->all_userdata();
            $this->session->unset_userdata($session);
            $this->session->sess_destroy();

        }

        $data['title'] = 'Login';

        // loading the login view
        redirect('login');
        
        $this->load->view('templates/header', $data);
        $this->load->view('pageContent/login', $data);
        $this->load->view('templates/footer');



    }
    public function change_password($token = NULL){
        
        $data['title'] = 'Change Password';
        
        if($this->input->post('action') === 'changePass' && isset($this->userEmail)){  

            $newPass = $this->input->post('newPass');
            $confirmPass = $this->input->post('confirmPass');

            if($newPass === $confirmPass){
                
                $data['message'] = '<div class="alert alert-success" role="alert">
                Please login with your new password
                </div>';
            
                $this->load->view('templates/header', $data);
                $this->load->view('pageContent/login', $data);
                $this->load->view('templates/footer');

                return;
            }
            
            $data['message'] = '<div class="alert alert-danger" role="alert">
            Passwords do not match!
            </div>';

        }

        //will execute once when the link is clicked and token has not expired
        if(!isset($this->userEmail)){
            
            $result = $this->validation_model->check_valid_token($token);
            $this->userEmail = $result['email'];

            if(empty($result)){
                
                $this->load->view('templates/header', $data);
                $this->load->view('pageContent/expiredToken', $data);
                $this->load->view('templates/footer');

                return 0;
            }
            
        }

        $this->load->view('templates/header', $data);
        $this->load->view('pageContent/changePass', $data);
        $this->load->view('templates/footer');

    }

  

    


}


?>