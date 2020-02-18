<?php
class Email extends CI_Controller{
    function __construct(){
        parent::__construct();

    }
    //function will send out a costumized email
    public function send_email($sub= NULL, $emailTo = NULL, $mess = NULL){
       
        // $this->set_email_config();
        
        $this->email->from('danielsoncorrea@gmail.com', 'Daniels');
        $this->email->to($emailTo);
        $this->email->subject($sub);
        $this->email->message($mess);

        return $this->email->send();// Will return true if successfull and false if failed to send email
        
    }
   /**
     * Generate a random password. 
     * 
     * get_random_password() will return a random password with length 6-8 of lowercase letters only.
     *
     * @access    public
     * @param     NONE 
     * @return    string 
     */    
    public function set_email_config(){
        
        $config = Array(
            'protocol' => 'mail',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 587,
            'smtp_user' => 'danielsoncorrea@gmail.com',
            'smtp_pass' => '2016114269Emb3r1k99',
            'newline'   => '\r\n',
            'crlf'      => '\r\n'
        );

        // $config = Array(
        //     'protocol' => 'smtp',
        //     'smtp_host' => 'ssl://smtp.googlemail.com',
        //     'smtp_port' => 465,
        //     'smtp_user' => 'danielsoncorrea@gmail.com', // change it to yours
        //     'smtp_pass' => '2016114269Emb3r1k99', // change it to yours
        //     'mailtype' => 'html',
        //     'charset' => 'iso-8859-1',
        //     'wordwrap' => TRUE
        // );
        $this->load->library('email');
        $this->email->initialize($config);

    }
    // will send an email to the users email address with a password reset link 
    public function send_reset_request(){

        $email = $this->input->post('email');
        $userFound = $this->validation_model->get_user_by_email($email);

        if($userFound !== FALSE){

            //alpahnumeric random string is returned
            $token = random_string('alnum', 10);
            // date('U') give the date in seconds and we add 30 min in seconds to it 
            $expires = date('U') + 1800;

            $result = $this->validation_model->set_pass_reset($email, $token, $expires);
            
            if ($result){
                
                $sub = 'Reset Password';
                $mess = 'To reset your password <a href="'.base_url().'change-password/'.$token.'">Click Here</a><br>
                         The link will expire in 30 minutes';

                $emailResult = $this->send_email($sub, $email, $mess);

                if ($emailResult){

                    $data['message'] = '<div class="alert alert-success" role="alert">
                    Please check your email for further instructions.
                    </div>';
                
                }else{

                    $data['message'] = '<div class="alert alert-danger" role="alert">
                    Sorry we could not send the email please try again later :( test 1
                    </div>';
                    echo $this->email->print_debugger();
                    
                }



            }else{

                $data['message'] = '<div class="alert alert-danger" role="alert">
                Sorry we could not send the email please try again later :( test 2
                </div>';
                
            }

        }else{

            $data['message'] = '<div class="alert alert-danger" role="alert">
            Please enter a valid email!
            </div>';


        }
        
        // calling the request email form 
        $this->request_email($data);   

    }
    // Function will display a form that ask for email so that they can change password
    public function request_email($data = NULL){

        $data['title'] = 'Forgot Password';

        $this->form_validation->set_rules('email', 'trim|required|max_length[150]');

        $this->load->view('templates/header', $data);
        $this->load->view('pageContent/forgotPass', $data);
        $this->load->view('templates/footer');
        
    }
    public function send_one_time_password($email){

        


    }
     /**
     * Generate a random password. 
     * 
     * get_random_password() will return a random password with length 6-8 of lowercase letters only.
     *
     * @access    public
     * @param    $chars_min the minimum length of password (optional, default 6)
     * @param    $chars_max the maximum length of password (optional, default 8)
     * @param    $use_upper_case boolean use upper case for letters, means stronger password (optional, default false)
     * @param    $include_numbers boolean include numbers, means stronger password (optional, default false)
     * @param    $include_special_chars include special characters, means stronger password (optional, default false)
     *
     * @return    string containing a random password 
     */    
    

}

?>