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

        $sql = $this->db->query(
        'SELECT u.id, fname, lname, email, username, phone, p.path as imgPath
        FROM users u, profile_img p WHERE u.id = '.$userId.' and u.profile_img_id = p.id and p.status = 1'
        );
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
                    'ec_number'  => $data['ecNumber'],
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
                // checking if client is already in through email and SSN (social security number)
                $result = $this->db->query(
                'SELECT id FROM clients WHERE ssn = "'.$input['ssn'].'" 
                ');
                if ($result->num_rows() > 0){
                    return -1;//returning -1 so we can identify that the client is already in the system.
                }
                $this->db->insert('clients', $input);
                $clientId = $this->db->insert_id();
                $this->db->trans_complete();//ending transaction

                if($this->db->trans_status() === FALSE){//checking to see if an error occured during transaction

                    return FALSE;

                }else{

                    return $clientId;

                }
            
        }else{

            return FALSE;

        }


    }


    /**
     * Sets the profile pic in the database's profile_img table
     *
     * @access    public
     * @param     userid the id of the users in which the profile image belongs to
     * @param     filename the name of the image file
     * 
     * @return    Boolean true/false if the query was successful
     */    
    public function set_profile_pic($userid = NULL, $filename = NULL){

            //Checking to see if user has an existing profile image other than the default
            $this->db->trans_start(); 
           
            $sql = $this->db->query(
            'SELECT u.id, profile_img_id as p_id FROM users u WHERE u.id = '.$userid.''
            );
            $result = $sql->row_array();

            if ($result['p_id'] === 1){

                $input = array(
                    'path' => 'upload/'.$filename ,
                    'status' => 1
                );
                $this->db->insert('profile_img', $input);
                $pId = $this->db->insert_id();//getting last inserted ID i.e. id of profile_image 

                $this->db->update('users',array('profile_img_id'=>$pId), 'id= '.$userid.'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 

            }else{
                //it's not the default img we'll set that p_id status to zero an insert a new image or the user
               
                // creating a new profile_image 
                $input = array(
                    'path' => 'upload/'.$filename ,
                    'status' => 1
                );
                $this->db->insert('profile_img', $input);
                $pId = $this->db->insert_id();//getting last inserted ID i.e. id of profile_image 

                $this->db->update('users',array('profile_img_id'=>$pId), 'id= '.$userid.'');
                
                //deleting the old image by setting old image status to 0 meaning false 
                $this->db->update('profile_img',array('status'=>0), 'id= '.$result['p_id'].'');
            }

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }else{
                return TRUE;
            }


    }

    /**
     * Sets the profile pic of a client in the database
     *
     * @access    public
     * @param     clientid the id of the client in which the profile image belongs to
     * @param     filename the name of the image file
     * 
     * @return    Boolean true/false if the query was successful
     */    
    public function set_client_profile_pic($clientid = NULL, $filename = NULL){

        if ($filename !== NULL){
            //Checking to see if user has an existing profile image other than the default
            $this->db->trans_start(); 

            $input = array(
                'path' => 'upload/'.$filename ,
                'status' => 1
            );

            $this->db->insert('profile_img', $input);
            $pId = $this->db->insert_id();//getting last inserted ID i.e. id of profile_image 

            $this->db->update('clients',array('profile_img_id'=>$pId), 'id= '.$clientid.'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }else{
                return TRUE;
            }
        }else{
            $input = array(
                'path' => 'upload/'.$filename ,
                'status' => 1
            );
            $this->trans_start();
            //setting user a default profile image
            $this->db->update('clients',array('profile_img_id'=>1), 'id= '.$clientid.'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 
            $this->trans_complete();
            
            if ($this->trans_status() === FALSE){
                return FALSE;
            }else{
                return TRUE;
            }

        }


    }



}

?>