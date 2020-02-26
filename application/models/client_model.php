<?php
class Client_model extends CI_Model{

    function __construct(){
        parent::__construct();

        $this->load->database();
    }
    /**
     * 
     * Function will all clients personal info or a specifice client based on parameter
     *
     * @access    public
     * @param     clientId is the ID of the user in the system
     * @param     checkStatus requires a 1 or 0, 1 checks status, 0 does not
     *
     * @return    Array that contains a list of all the privileges by id
     */
    public function get_personal_info($clientId = NULL) {

        $this->db->trans_start();
        
        $sql = $this->db->query('
            SELECT *
            FROM applicants a
            where '.(($clientId !== NULL)? 'a.id='.$clientId.'' : '' ).' 
            ');
        $result = $sql->result_array();
        if (isset($result[0]['profile_img_id'])){

            $sql2 = $this->db->query('
                SELECT p.path
                FROM profile_img p
                where p.id = '.$result[0]['profile_img_id'].' and p.status = 1
                ');
            $result[0]['imgPath'] = $sql2->row()->path;

        }
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return $result;
    }
    /**
     * 
     * Function will query all the clients in the database that have completed atleast one program
     *
     * @access    public
     * @param     clientid is the ID of the user in the system
     *
     * @return    Array that contains a list of all the privileges by id
     */ 
    public function get_client_profile($clientId = NULL){

        if ($clientId !== NULL){
            $data = array();

            $data = $this->get_personal_info($clientId);
            if ($data === FALSE){
                return 'Unable to get client personal info';
            }
            $this->db->trans_start();

            $sql1 = $this->db->query("
            SELECT * FROM barbering WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['barbering'] = (($sql1->num_rows() > 0 )? $sql1->result_array() : '' );
           
            $sql2 = $this->db->query("
            SELECT * FROM bartending WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['bartending'] = (($sql2->num_rows() > 0 )? $sql2->result_array() : '' );
            
            $sql3 = $this->db->query("
            SELECT * FROM bpo  WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['bpo'] = (($sql3->num_rows() > 0 )? $sql3->result_array() : '' );
            
            $sql4 = $this->db->query("
            SELECT * FROM child_care WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['child_care'] = (($sql4->num_rows() > 0 )? $sql4->result_array() : '' );
            
            $sql5 = $this->db->query("
            SELECT * FROM computer_basics WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['computer_basics'] = (($sql5->num_rows() > 0 )? $sql5->result_array() : '' );
            
            $sql6 = $this->db->query("
            SELECT * FROM event_planning WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['event_planning'] = (($sql6->num_rows() > 0 )? $sql6->result_array() : '' );
            
            $sql7 = $this->db->query("
            SELECT * FROM front_desk WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['font_desk'] = (($sql7->num_rows() > 0 )? $sql7->result_array() : '' );
           
            $sql8 = $this->db->query("
            SELECT * FROM home_health WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['home_health'] = (($sql8->num_rows() > 0 )? $sql8->result_array() : '' );

            $sql9 = $this->db->query("
            SELECT * FROM house_keeping WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['house_keeping'] = (($sql9->num_rows() > 0 )? $sql9->result_array() : '' );

            $sql10 = $this->db->query("
            SELECT * FROM landscaping WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['landscaping'] = (($sql10->num_rows() > 0 )? $sql10->result_array() : '' );

            $sql11 = $this->db->query("
            SELECT * FROM life_guard WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['life_guard'] = (($sql11->num_rows() > 0 )? $sql11->result_array() : '' );

            $sql12 = $this->db->query("
            SELECT * FROM nail_tech WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['nail_tech'] = (($sql2->num_rows() > 0 )? $sql2->result_array() : '' );

            $sql13 = $this->db->query("
            SELECT * FROM wait_staff WHERE client_id = ".$clientId." and status = 'Completed'
            ");
            $data['programs']['wait_staff'] = (($sql13->num_rows() > 0 )? $sql13->result_array() : '' );

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return 'error: Coul not get client programs';
                
            }

            //print_r($data);
            return $data;
            //combining data together

        }else{
            return FALSE;
        }

    }   

    /**
     * 
     * Function will query all the clients in the database that have completed atleast one program
     *
     * @access    public
     *
     * @return    Bool/Array returns false if query fails or else returns query result if successful 
     */    
    public function get_client_list(){

        $this->db->trans_start();

        $query = $this->db->query("
        select a.id, a.first_name, a.last_name, a.email, a.mobile_phone, a.ec_name, a.ec_number, a.ec_relation,
        bpo.programme as bpo, bar.programme as bartending, ba.programme as barbering, cc.programme as child_care,
        cb.programme as computer_basics, ep.programme as event_planning, fd.programme as front_desk, hh.programme as home_health,
        hk.programme as house_keeping, l.programme as landscaping, lg.programme as life_guard, nt.programme as nail_tech, ws.programme as wait_staff, st.organization as specialized_trainings
        from applicants a 
        left join bpo on bpo.client_id = a.id and bpo.status='completed'
        left join bartending bar on bar.client_id = a.id and bar.status='completed'
        left join barbering ba on ba.client_id = a.id and ba.status='completed'
        left join child_care cc on cc.client_id = a.id and cc.status='completed'
        left join computer_basics cb on cb.client_id = a.id and cb.status='completed'
        left join event_planning ep on ep.client_id = a.id and ep.status='completed'
        left join front_desk fd on fd.client_id = a.id and fd.status='completed'
        left join home_health hh on hh.client_id = a.id and hh.status='completed'
        left join house_keeping hk on hk.client_id = a.id and hk.status='completed'
        left join landscaping l on l.client_id = a.id and l.status='completed'
        left join life_guard lg on lg.client_id = a.id and lg.status='completed'
        left join nail_tech nt on nt.client_id = a.id and nt.status='completed'
        left join wait_staff ws on ws.client_id = a.id and ws.status='completed'
        left join specialized_trainings st on a.id = st.client_id
        where bar.status='completed' or bpo.status='completed' or ba.status='completed' or cc.status='completed'
        or cb.status = 'completed' or ep.status='completed' or fd.status='completed' or hh.status='completed'
        or hk.status='completed' or l.status='completed' or lg.status ='completed' or nt.status='completed'
        or ws.status='completed'
        ");
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return $query->result_array();
    }
    /**
     * 
     * Function will query all the clients in the database that have completed atleast one program
     *
     * @access    public
     * @param     data containes all values passed by the post
     *
     * @return    Bool/clientId if the query fails then it returns false else it will return the id just inserted into the database
     */    
    public function enter_client($data = array(), $hasImgFile = 1){
        
        if (isset($data)){
               
                // Performing a Validation check if strings are empty
                $isClient = ($data['preTestAvg'] >= 70 )? 1 : 0;
                $status = ($data['preTestAvg'] >= 70 )? 'Enrolled' : 'Rejected';
                $profileImgId = ($hasImgFile === 1)? NULL : 1;// One means that we will load the default profile pic that is in the database.

                // $data['comment'] = ($data['comment'] !== '')? $data['comment'] : NULL;

                // $data['refName2'] = ($data['refName2'] !== '')? $data['refName2'] : NULL;
                // $data['refAddress2'] = ($data['refAddress2'] !== '')? $data['refAddress2'] : NULL;
                // $data['refCity2'] = ($data['refCity2'] !== '')? $data['refCity2'] : NULL;
                // $data['refPhone2'] = ($data['refPhone2'] !== '')? $data['refPhone2'] : NULL;

                // $data['refName3'] = ($data['refName3'] !== '')? $data['refName3'] : NULL;
                // $data['refAddress3'] = ($data['refAddress3'] !== '')? $data['refAddress3'] : NULL;
                // $data['refCity3'] = ($data['refCity3'] !== '')? $data['refCity3'] : NULL;
                // $data['refPhone3'] = ($data['refPhone3'] !== '')? $data['refPhone3'] : NULL;
                
                $homePhone = ($data['homePhone'] !== '')? $data['homePhone'] : NULL;

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
                    'home_phone'  => $homePhone,
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
                    'ref_phone3'  => $data['refPhone3'],
                    'is_client' => $isClient,
                    'profile_img_id' => $profileImgId
                                    
                );

                $this->db->trans_start();//starting transaction
                // checking if client is already in through email and SSN (social security number)
                $result = $this->db->query(
                'SELECT id FROM applicants WHERE ssn = "'.$input['ssn'].'" 
                ');
                if ($result->num_rows() > 0){
                    return -1;//returning -1 so we can identify that the client is already in the system.
                }
                $this->db->insert('applicants', $input);
                $clientId = $this->db->insert_id();

                $input2 = array(

                    'client_id' => $clientId,
                    'pre_test_avg' => $data['preTestAvg'],
                    'enrolled_in' => $data['enrolled_in'],
                    'comments' => $data['comment'],
                    'status' => $status

                );
                $this->db->insert($data['program'], $input2);
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

            $this->db->update('applicants',array('profile_img_id'=>$pId), 'id= '.$clientid.'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 

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