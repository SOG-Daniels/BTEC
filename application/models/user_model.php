<?php
class User_model extends CI_Model{

    function __construct(){
        parent::__construct();

        $this->load->database();
    }
/**
     * 
     * get_user_action() will return all users actions/privilhe/she has within the system.
     *
     * @access    public
     * @param     $userID is the ID of the user in the system
     *
     * @return    Array that contains a list of all the privileges by id
     */    
    public function get_user_action($userId){

        $this->db->trans_start();
        $sql = $this->db->query('SELECT privilege_id FROM action  WHERE user_id = '.$userId.'');
        $this->db->trans_complete();

        if($this->db->trans_status() === FALSE){
            return FALSE;
        }else{
            return $sql->result_array();
        }
        
        
        return FALSE;

    }
    /**
     * 
     * get_user_info() will return all users data that the system has excluding password
     *
     * @access    public
     * @param     NONE
     *
     * @return    Array that contains a list of all the data the user has in the system 
     */    
    public function get_user_info($userId){

        $sql = $this->db->query('SELECT id, fname, lname, email, username, phone FROM users u WHERE id = '.$userId.'');
        $row = $sql->num_rows();
        if ($row === 1){

            $privi = $this->get_user_action($userId);

            if ($privi === FALSE){
                return FALSE;
            }
            $result = array_merge($sql->row_array(), array('action' => $privi));
            return $result;
        }
        
        return FALSE;

    }
    /**
     * updates the current users profile by updating what he/she has in the system 
     *
     * @access    public
     * @param     USERID the user's id that is used to identify him in the database
     * @param     DATA  the data that is to be updated.(data within the POST)
     *
     * @return    BOOLEAN true/flase if upate was successful or not
     */    
    public function update_user_profile($userid = NULL, $data = NULL){
        
        if (isset($userid) && $data !== NULL){

            $this->db->trans_start();
            $query = $this->db->query('
            UPDATE users 
            SET fname = "'.$data['fname'].'", 
            lname = "'.$data['lname'].'", 
            username = "'.$data['username'].'", 
            phone = "'.$data['phone'].'" 
            WHERE id = '.$userid.'');
            $this->db->trans_complete();
            
            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }

            return TRUE;

        }else{

            return FALSE;
        }

    }
    /**
     * Gets all users that are within the system  
     *
     * @access    public
     * @param     NONE
     *
     * @return    Array that contains a list of all the users in the system 
     */    
    public function get_user_list(){

        $this->db->trans_start();
        $this->db->select('id, fname, lname, email, phone, username');
        $query = $this->db->get('users');
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){

            return FALSE;

        }else{

            return $query->result();
            
        }

    }
    // Parameter is a Post array and that data is then loaded into the user table
    public function enter_user($data = NULL){

        if ($data !== NULL){

            // /data from form submission 
            $fname = (isset($data['fname'])? trim($data['fname']): '');
            $lname = (isset($data ['lname'])? trim($data['lname']) : '');
            $uname = (isset($data['uname'])? trim($data['uname']) : '');
            $email = (isset($data['email'])? trim($data['email']) : '');
            $phone = (isset($data['phone'])? trim($data['phone']) : '');
            
            $priviledges = (!empty($data['privileges']))? $data['privileges'] : NULL;
            
            //Checking to see if user exist in the database by email
            $this->db->select('id');
            $this->db->where('email', $email);
            $query = $this->db->get('users');
            $row = $query->num_rows();
            //$size = count($data['privileges']);
           
            if($row < 1){
                // user does not exist lets add him to the system
                $input = array(
                    'fname'  => $fname,
                    'lname'  => $lname,
                    'username'  => $uname,
                    'email'  => $email,
                    'phone'  => $phone
                
                    
                );  

                $this->db->trans_start();//starting transaction
                $this->db->insert('users', $input);
                $actionData['user_id'] = $this->db->insert_id();
                $actionData['status'] = 1;

                foreach ($data['privileges'] as $val){

                    $actionData['privilege_id'] = $val;
                    $this->db->insert('action', $actionData);

                }
                $this->db->trans_complete();//ending transaction

                if($this->db->trans_status() === FALSE){//checking to see if an error occured during transaction

                    return FALSE;

                }else{

                    return TRUE;
                }

                
            }else{
                return 0;//returning 0 to identify that user is int he system
            }
           

        }else{

            return FALSE;
        }
    }

    public function enter_client($data = array()){
        
        if (isset($data)){
                
                // loading array with all the data from post
                $input = array(
                    
                    'first_name'  => $data['fname'],
                    'last_name'  => $data['lname'],
                    'middle_name'  => $data['mname'],
                    'ssn'  => $data['ssn'],
                    'street'  => $data['street'],
                    'ctv'  => $data['ctv'],
                    'district'  => $data['district'],
                    'country'  => $data['country'],
                    'email'  => $data['email'],
                    'home_phone'  => $data['homePhone'],
                    'mobile_phone'  => $data['mobilePhone'],
                    'ec_name'  => $data['ecName'],
                    'ec_number'  => $data['evNumber'],
                    'ec_relation'  => $data['ecRelation'],
                    'gender'  => $data['gender'],
                    'dob'  => $data['dob'],
                    'marital_status'  => $data['maritalStatus'],
                    'ref_name1'  => $data['refName1'],
                    'ref_address1'  => $data['refAddress1'],
                    'ref_city1'  => $data['refCity1'],
                    'ref_phone1'  => $data['refPhone1'],
                    'ref_name2'  => $data['refName2'],
                    'ref_address2'  => $data['refAddress2'],
                    'ref_city2'  => $data['refCity2'],
                    'ref_phone2'  => $data['refPhone2'],
                    'ref_name3'  => $data['refName3'],
                    'ref_address3'  => $data['refAddress3'],
                    'ref_city3'  => $data['refCity3'],
                    'ref_phone3'  => $data['refPhone3']              
                                    
                );

                $this->db->trans_start();//starting transaction
                $this->db->insert('clients', $input);
                $this->db->trans_complete();//ending transaction

                if($this->db->trans_status() === FALSE){//checking to see if an error occured during transaction

                    return FALSE;

                }else{

                    return TRUE;

                }
            
        }else{

            return FALSE;

        }


    }






}

?>