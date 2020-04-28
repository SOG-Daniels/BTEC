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

        if ($clientId !== NULL){

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
                $result2 = $sql2->row_array();
                $result[0]['imgPath'] = $result2['path'];//$sql2->row()->path;

            }
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }
            
            return $result;

        }else{
            return FALSE;
        }
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

            //getting clients personal info 
            $data = $this->get_personal_info($clientId);
            if ($data === FALSE || empty($data[0])){
                // return 'Unable to get client personal info';
                return 0;
            }
            $this->db->trans_start();

            //Query get are getting all the programs client has taken
            $sql1 = $this->db->query("
            SELECT * FROM barbering WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['barbering'] = (($sql1->num_rows() > 0 )? $sql1->result_array() : '' );
           
            $sql2 = $this->db->query("
            SELECT * FROM bartending WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['bartending'] = (($sql2->num_rows() > 0 )? $sql2->result_array() : '' );
            
            $sql3 = $this->db->query("
            SELECT * FROM bpo  WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['bpo'] = (($sql3->num_rows() > 0 )? $sql3->result_array() : '' );
            
            $sql4 = $this->db->query("
            SELECT * FROM child_care WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['child_care'] = (($sql4->num_rows() > 0 )? $sql4->result_array() : '' );
            
            $sql5 = $this->db->query("
            SELECT * FROM computer_basics WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['computer_basics'] = (($sql5->num_rows() > 0 )? $sql5->result_array() : '' );
            
            $sql6 = $this->db->query("
            SELECT * FROM event_planning WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['event_planning'] = (($sql6->num_rows() > 0 )? $sql6->result_array() : '' );
            
            $sql7 = $this->db->query("
            SELECT * FROM front_desk WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['font_desk'] = (($sql7->num_rows() > 0 )? $sql7->result_array() : '' );
           
            $sql8 = $this->db->query("
            SELECT * FROM home_health WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['home_health'] = (($sql8->num_rows() > 0 )? $sql8->result_array() : '' );

            $sql9 = $this->db->query("
            SELECT * FROM house_keeping WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['house_keeping'] = (($sql9->num_rows() > 0 )? $sql9->result_array() : '' );

            $sql10 = $this->db->query("
            SELECT * FROM landscaping WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['landscaping'] = (($sql10->num_rows() > 0 )? $sql10->result_array() : '' );

            $sql11 = $this->db->query("
            SELECT * FROM life_guard WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['life_guard'] = (($sql11->num_rows() > 0 )? $sql11->result_array() : '' );

            $sql12 = $this->db->query("
            SELECT * FROM nail_tech WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['nail_tech'] = (($sql12->num_rows() > 0 )? $sql2->result_array() : '' );

            $sql13 = $this->db->query("
            SELECT * FROM wait_staff WHERE client_id = ".$clientId." and status = 'Completed' or status = 'participated'
            ");
            $data['programs']['wait_staff'] = (($sql13->num_rows() > 0 )? $sql13->result_array() : '' );

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
               log_messsage('debug', 'A query failed in get_client_profile function inside client_model');
               return FALSE; 
            }
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
       
        select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
		a.ec_name, a.ec_number, a.ec_relation, a.ssn, a.dob, a.is_client,
        bpo.programme as bpo, bpo.status as bpo_status, bpo.enrolled_in as bpo_enrolled, bpo.comments as bpo_comment,
        bar.programme as bartending, bar.status as bar_status, bar.enrolled_in as bar_enrolled, bar.comments as bar_comment,
        ba.programme as barbering, ba.status as ba_status, ba.enrolled_in as ba_enrolled, ba.comments as ba_comment ,
        cc.programme as child_care, cc.status as cc_status, cc.enrolled_in as cc_enrolled, cc.comments as cc_comment,
        cb.programme as computer_basics, cb.status as cb_status, cb.enrolled_in as cb_enrolled, cb.comments as cb_comment,
        ep.programme as event_planning, ep.status as ep_status, ep.enrolled_in as ep_enrolled, ep.comments as ep_comment,
        fd.programme as front_desk, fd.status as fd_status, fd.enrolled_in as fd_enrolled, fd.comments as fd_comment,
        hh.programme as home_health, hh.status as hh_status, hh.enrolled_in as hh_enrolled, hh.comments as hh_comment,
        hk.programme as house_keeping, hk.status as hk_status, hk.enrolled_in as hk_enrolled, hk.comments as hk_comment,
        l.programme as landscaping,  l.status as l_status, l.enrolled_in as l_enrolled, l.comments as l_comment,
        lg.programme as life_guard, lg.status as lg_status, lg.enrolled_in as lg_enrolled, lg.comments as lg_comment,
        nt.programme as nail_tech, nt.status as nt_status, nt.enrolled_in as nt_enrolled, nt.comments as nt_comment ,
        ws.programme as wait_staff, ws.status as ws_status, ws.enrolled_in as ws_enrolled, ws.comments as ws_comment, st.date_offered as st_date_offered
        from applicants a 
        left join bpo on bpo.client_id = a.id 
        left join bartending bar on bar.client_id = a.id 
        left join barbering ba on ba.client_id = a.id
        left join child_care cc on cc.client_id = a.id
        left join computer_basics cb on cb.client_id = a.id
        left join event_planning ep on ep.client_id = a.id
        left join front_desk fd on fd.client_id = a.id
        left join home_health hh on hh.client_id = a.id
        left join house_keeping hk on hk.client_id = a.id
        left join landscaping l on l.client_id = a.id
        left join life_guard lg on lg.client_id = a.id
        left join nail_tech nt on nt.client_id = a.id
        left join wait_staff ws on ws.client_id = a.id
        left join specialized_trainings st on a.id = st.client_id
        where 
		bar.status='completed' or bar.status = 'participated'
        or bpo.status='completed' or bpo.status = 'participated'
        or ba.status='completed' or ba.status = 'participated'
        or cc.status='completed' or cc.status = 'participated'
        or cb.status = 'completed' or cb.status = 'participated'
        or ep.status='completed' or ep.status = 'participated'
        or fd.status='completed' or fd.status = 'participated'
        or hh.status='completed' or hh.status = 'participated'
        or hk.status='completed' or hk.status = 'participated'
        or l.status='completed' or l.status = 'participated'
        or lg.status ='completed' or lg.status = 'participated'
        or nt.status='completed' or nt.status = 'participated'
        or ws.status='completed' or ws.status = 'participated'
        and a.is_client = 1

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
     * @param     clientId the id of the client we are updating
     * @param     data containes all values passed by the post
     * @param     defaultImg keeps track if the image was removed
     *
     * @return    Bool if the query fails then it returns false else it will return true
     */   
    public function update_client_info($clientId = NULL, $data = NULL, $defaultImg = NULL){

        if (isset($data) && isset($clientId)){

            $homePhone = ($data['homePhone'] !== '')? $data['homePhone'] : NULL;

            // loading array with all the data from post
            $input = array(
                
                'first_name'  => trim($data['fname']),
                'last_name'  => trim($data['lname']),
                'middle_name'  => trim($data['mname']),
                'ssn'  => $data['ssn'],
                'street'  => trim($data['street']),
                'ctv'  => trim($data['ctv']),
                'district'  => $data['district'],
                'country'  => trim($data['country']),
                'email'  => trim($data['email']),
                'home_phone'  => $homePhone,
                'mobile_phone'  => $data['mobilePhone'],
                'ec_name'  => trim($data['ecName']),
                'ec_number'  => $data['ecNumber'],
                'ec_relation'  => trim($data['ecRelation']),
                'gender'  => $data['gender'],
                'dob'  => $data['dob'],
                'marital_status'  => $data['maritalStatus'],
                'ref_name1'  => trim($data['refName1']),
                'ref_address1'  => trim($data['refAddress1']),
                'ref_city1'  => trim($data['refCity1']),
                'ref_phone1'  => $data['refPhone1'],
                'ref_name2'  => (isset($data['refName2'])? trim($data['refName2']) : NULL),
                'ref_address2'  => (isset($data['refAddress2'])? trim($data['refAddress2']) : NULL),
                'ref_city2'  => (isset($data['refCity2'])? trim($data['refCity2']) : NULL),
                'ref_phone2'  => (isset($data['refPhone2'])? $data['refPhone2'] : NULL),
                'ref_name3'  => (isset($data['refName3'])? trim($data['refName3']) : NULL),
                'ref_address3'  => (isset($data['refAddress3'])? trim($data['refAddress3']) : NULL),
                'ref_city3'  => (isset($data['refCity3'])? trim($data['refCity3']) : NULL),
                'ref_phone3'  => (isset($data['refPhone3'])? $data['refPhone3'] : NULL),
                'updated_on' => date("Y-m-d H:i:s"),
                'updated_by' => $data['userIdent'],
                'ed_degree' => trim($data['ed_degree']),
                'ed_name' => trim($data['ed_name']),
                'employed_at' => trim($data['company_name']),
                'em_position' => trim($data['postion'])
                                
            );
            
            $this->db->trans_start();//starting transaction
            
            if($defaultImg == 1){
                
                //setting profile pic to default
                $input['profile_img_id'] = $defaultImg;
                
                //selecting current profile_img_id
                $sql = $this->db->query('SELECT profile_img_id as imgID FROM applicants WHERE id = '.$clientId.'');
                $result = $sql->row();

                // setting image status to 0 if its not the default profile pic
                if ($result->imgID != 1){
                    $this->db->update('profile_img', array('status' => 0), array('id' => $result->imgID));
                }
            }

            $this->db->update('applicants', $input, array('id'=>$clientId));

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
               
                // checking if the client attained the 70 passing mark
                $isClient = ($data['preTestAvg'] >= 70 )? 1 : 0;
                
                // 1 means that we will load the default profile pic that is in the database.
                $profileImgId = ($hasImgFile === 1)? NULL : 1;
                
                // homephone not required so passing null if empty string was passed
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
                    'ref_name2'  => (isset($data['refName2'])? $data['refName2'] : NULL),
                    'ref_address2'  => (isset($data['refAddress2'])? $data['refAddress2'] : NULL),
                    'ref_city2'  => (isset($data['refCity2'])? $data['refCity2'] : NULL),
                    'ref_phone2'  => (isset($data['refPhone2'])? $data['refPhone2'] : NULL),
                    'ref_name3'  => (isset($data['refName3'])? $data['refName3'] : NULL),
                    'ref_address3'  => (isset($data['refAddress3'])? $data['refAddress3'] : NULL),
                    'ref_city3'  => (isset($data['refCity3'])? $data['refCity3'] : NULL),
                    'ref_phone3'  => (isset($data['refPhone3'])? $data['refPhone3'] : NULL),
                    'is_client' => $isClient,
                    'profile_img_id' => $profileImgId,
                    'created_on' => date("Y-m-d H:i:s"),
                    'ed_degree' => $data['ed_degree'],
                    'ed_name' => $data['ed_name'],
                    'employed_at' => $data['company_name'],
                    'em_position' => $data['position']
                                    
                );

                //starting transaction
                $this->db->trans_start();
               
                // checking if client is already in through email and SSN (social security number)
                $result = $this->db->query('SELECT id FROM applicants WHERE ssn = "'.$input['ssn'].'"');

                if ($result->num_rows() > 0){
                    //returning -1 so we can identify that the client is already in the system.
                    return -1;
                }

                $this->db->insert('applicants', $input);
                $clientId = $this->db->insert_id();
                
                // inserting client in a program
                if(!$this->set_client_in_program($clientId, $data)){
                    
                    log_message('debug', 'Failed to set_client_in_program in client_model');
                    return FALSE;
                    
                }
               
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
     * sets the client in a program selected 
     *
     * @access    public
     * @param     clientid the id of the client 
     * @param     data array containing the data need to insert client into program
     * 
     * @return    Boolean true/false if the query was successful
     */    
    public function set_client_in_program($clientId, $data){
        
        //checking if user meets the passing mark
        $status = ($data['preTestAvg'] >= 70 )? 'Enrolled' : 'Rejected';

        $this->db->trans_start();

            // input data
            $input2 = array(

                'client_id' => $clientId,
                'pre_test_avg' => $data['preTestAvg'],
                'enrolled_in' => $data['enrolled_in'],
                'created_on' =>  date("Y-m-d H:i:s"),
                'created_by' => $this->session->userdata('userIdentity'),
                'status' => $status

            );

            $this->db->insert($data['program'], $input2);

        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }else{
            return TRUE;
        }
        
    }
    /**
     * updated the client's profile pic
     *
     * @access    public
     * @param     clientid the id of the client in which the profile image belongs to
     * @param     filename the name of the image file
     * 
     * @return    Boolean true/false if the query was successful
     */    
    public function update_client_profile_pic($clientid = NULL, $filename = NULL){

        
        if ($filename !== NULL){
            //Checking to see if user has an existing profile image other than the default
            $this->db->trans_start(); 
            $query = $this->db->query('SELECT a.profile_img_id as imgId FROM applicants a WHERE id = '.$clientid.'');
            $row = $query->result_array();
            
            $input = array(
                'path' => 'upload/'.$filename ,
                'status' => 1
            );

            $this->db->insert('profile_img', $input);
            $pId = $this->db->insert_id();//getting last inserted ID i.e. id of profile_image 
            
            //print_r($row);
            
            // the old image is not the default profile pic
            if ($row[0]['imgId'] != 1){

                //delete old image
                $this->db->update('profile_img',array('status' => 0), 'id= '.$row[0]['imgId'].'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 
            }
            // set new profile image to client
                $this->db->update('applicants',array('profile_img_id'=>$pId), 'id= '.$clientid.'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }else{
                return TRUE;
            }
        }
        return FALSE;

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
    public function get_enrolled_list ($program = NULL, $year = NULL){

        $year = ((!empty($year))? $year : date('Y'));
        $program = (!empty($program)? $program : '1');
        $data = array();
        $this->db->trans_start();

        if ($program !== '1'){
            $sql = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join '.$program.' pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'

                ');
            array_push($data, $sql->result_array());
        }else{
            
            $bar = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join barbering pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($bar->num_rows() > 0) 
                array_push($data, $bar->result_array());

            $bart = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join bartending pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($bart->num_rows() > 0) 
                array_push($data, $bart->result_array());
            $bpo = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join bpo pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($bar->num_rows() > 0) 
                array_push($data, $bpo->result_array());

            $cc = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join child_care pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($cc->num_rows() > 0) 
                array_push($data, $cc->result_array());

            $cb = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join computer_basics pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($cb->num_rows() > 0) 
                array_push($data, $cb->result_array());

            $ep = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join event_planning pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($ep->num_rows() > 0) 
                array_push($data, $ep->result_array());

            $fd = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join front_desk pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($fd->num_rows() > 0) 
                array_push($data, $fd->result_array());

            $hh = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join home_health pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($hh->num_rows() > 0) 
                array_push($data, $hh->result_array());

            $hk = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join house_keeping pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($hk->num_rows() > 0) 
                array_push($data, $hk->result_array());

            $l = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join landscaping pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($l->num_rows() > 0) 
                array_push($data, $l->result_array());
            
            $lg = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join life_guard pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($lg->num_rows() > 0) 
                array_push($data, $lg->result_array());
            
            $nt = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join nail_tech pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($nt->num_rows() > 0) 
            array_push($data, $nt->result_array());

            $ws = $this->db->query('
                select a.id, a.first_name, a.last_name, a.email, a.mobile_phone,
                a.middle_name, a.dob, pro.programme, pro.status, pro.enrolled_in
                from applicants a 
                join wait_staff pro on pro.client_id = a.id
                where 
                pro.status="Enrolled" and pro.enrolled_in = '.$year.'
            ');
            if($ws->num_rows() > 0) 
                array_push($data, $ws->result_array());

        }


        $this->db->trans_complete();
        
        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }

        return $data;
        
    
    }
    public function get_program_list ($clientId = NULL){

        if ($clientId !== NULL){
            
            $this->db->trans_start();

                // querying all the program tables to get client program data 
                $sql1 = $this->db->query("
                SELECT * FROM barbering WHERE client_id = ".$clientId." 
                ");
                // Data was found so we load the program data in the data array
                $data['barbering'] = (($sql1->num_rows() > 0 )? $sql1->result_array() : '' );
            
                $sql2 = $this->db->query("
                SELECT * FROM bartending WHERE client_id = ".$clientId."
                ");
                $data['bartending'] = (($sql2->num_rows() > 0 )? $sql2->result_array() : '' );
                
                $sql3 = $this->db->query("
                SELECT * FROM bpo  WHERE client_id = ".$clientId." 
                ");
                $data['bpo'] = (($sql3->num_rows() > 0 )? $sql3->result_array() : '' );
                
                $sql4 = $this->db->query("
                SELECT * FROM child_care WHERE client_id = ".$clientId." 
                ");
                $data['child_care'] = (($sql4->num_rows() > 0 )? $sql4->result_array() : '' );
                
                $sql5 = $this->db->query("
                SELECT * FROM computer_basics WHERE client_id = ".$clientId." 
                ");
                $data['computer_basics'] = (($sql5->num_rows() > 0 )? $sql5->result_array() : '' );
                
                $sql6 = $this->db->query("
                SELECT * FROM event_planning WHERE client_id = ".$clientId." 
                ");
                $data['event_planning'] = (($sql6->num_rows() > 0 )? $sql6->result_array() : '' );
                
                $sql7 = $this->db->query("
                SELECT * FROM front_desk WHERE client_id = ".$clientId."  
                ");
                $data['font_desk'] = (($sql7->num_rows() > 0 )? $sql7->result_array() : '' );
            
                $sql8 = $this->db->query("
                SELECT * FROM home_health WHERE client_id = ".$clientId." 
                ");
                $data['home_health'] = (($sql8->num_rows() > 0 )? $sql8->result_array() : '' );

                $sql9 = $this->db->query("
                SELECT * FROM house_keeping WHERE client_id = ".$clientId." 
                ");
                $data['house_keeping'] = (($sql9->num_rows() > 0 )? $sql9->result_array() : '' );

                $sql10 = $this->db->query("
                SELECT * FROM landscaping WHERE client_id = ".$clientId." 
                ");
                $data['landscaping'] = (($sql10->num_rows() > 0 )? $sql10->result_array() : '' );

                $sql11 = $this->db->query("
                SELECT * FROM life_guard WHERE client_id = ".$clientId." 
                ");
                $data['life_guard'] = (($sql11->num_rows() > 0 )? $sql11->result_array() : '' );

                $sql12 = $this->db->query("
                SELECT * FROM nail_tech WHERE client_id = ".$clientId." 
                ");
                $data['nail_tech'] = (($sql12->num_rows() > 0 )? $sql12->result_array() : '' );

                $sql13 = $this->db->query("
                SELECT * FROM wait_staff WHERE client_id = ".$clientId." 
                ");
                $data['wait_staff'] = (($sql13->num_rows() > 0 )? $sql13->result_array() : '' );

            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                // one of the queries faild
                return FALSE;
                
            }

            return $data;
        }
        // and status = 'Completed' or status = 'participated' or status = 'Enrolled' or status = 'Rejected'


    }
    /**
     * Gets all info of a client that is stored in the $table provied i.e. the program table   
     *
     * @access    public
     * @param     clientId the id of the client 
     * @param     table contains the name of the table that contains the training information
     * 
     * @return    Array if query was successful it will return an array containing the users grades
     */    
    public function get_client_program_info($clientId = NULL, $table = NULL) {

        if ($clientId !== NULL){

            $this->db->trans_start();
            
            $sql = $this->db->query('
            SELECT a.*, pro.*
            from applicants a
            join '.$table.' pro on pro.client_id = a.id
            where 
            a.id = '.$clientId.' and pro.status = "Enrolled" and pro.enrolled_in = '.date('Y').'
                ');

            if ($sql->num_rows() < 1){
                // error no such user found
                return -1;

            }
            $result = $sql->result_array();

           
            // getting user profile pic
            $sql2 = $this->db->query('
                SELECT p.path as imgPath
                FROM profile_img p
                WHERE p.id = '.$result[0]['profile_img_id'].'
            ');
            $result2 = $sql2->result_array();
            $result[0]['imgPath'] = $result2[0]['imgPath'];

            
            $this->db->trans_complete();

            if ($this->db->trans_status() === FALSE){
                return FALSE;
            }
            
            return $result;

        }else{
            return FALSE;
        }
    }
    /**
     * updates the grades of a user
     *
     * @access    public
     * @param     data the post data  
     * @param     comment the comment made on the client
     * 
     * @return    Boolean true if successful, false if transaction faild
     */    
    public function update_client_grade($data = NULL, $comment = NULL) {

        if (!empty($data)){

            //varaibles used for setting grades
            $average = 0;
            $assSum = 0;
            $assCount = 0;

            $set = array();
            $set['status'] = ($data['status'] == "1" )? 'Enrolled' : $data['status'];

            // set graduated on since status is no longer enrolled
            if($data['status'] != "1"){
                $set['graduated_on'] = $data['graduated_on'];
            }

            $set['comments'] = isset($comment)? $comment : NULL;
            $set['updated_on'] = date("Y-m-d H:i:sa");
            $set['updated_by'] = $this->session->userdata('userIdentity');
            
           
            // in the query for assesmets 1-5 we are checking to see if the input exist by means of checking array keys
            if (array_key_exists('assesGrade', $data)){

                for($i = 0; $i < 5; $i++){

                    if (array_key_exists($i, $data['assesGrade'])){
                        
                        $set['Assesment'.($i + 1)] = $data['assesName'][$i].','.$data['assesGrade'][$i];
                        $assSum += $data['assesGrade'][$i];
                        $assCount++;

                    }

                }

            }else{

                $set['Assesment1'] = NULL;
                $set['Assesment2'] = NULL;
                $set['Assesment3'] = NULL;
                $set['Assesment4'] = NULL;
                $set['Assesment5'] = NULL;
              
            }            
            $set['final_grade'] = ($assSum / $assCount);

            $this->db->trans_start();

            $this->db->update($data['program'], $set, 'client_id= '.$data['clientId'].'');//first arg1 = table, arg2 = SET values, arg3 = WHERE conditions 
            
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
     * function set updated_by and update_on in the choosen table
     *
     * @access    public
     * @param     clientId the client we are uppdating 
     * @param     table the name of the table we will query from  
     * @param     userIdentity the signiture stamp of the user that made the update  
     * 
     * @return    Boolean true if successful, false if transaction faild
     */    
    public function set_client_updateGrade_info($clientId = NULL, $table = NULL, $userIdentity = NULL) {
        
        $this->db->trans_start();
        
        $this->db->update($table, array('updated_on' => date("Y-m-d H:i:sa") , 'updated_by' => $userIdentity), array('id' => $clientId));

        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return TRUE;
    
    }
   /**
     * function set the grade name pertaining to the program the client is enrolled in
     *
     * @access    public
     * @param     clientId the clients ID number
     * @param     tableName the names of the program enrolled in
     * @param     gradeName an array containing the list of names
     * 
     * @return    Boolean true if successful, false if transaction faild
     */    
    public function set_program_grades_names($clientId, $tableName, $gradeNames) {
       
        $set = array(
            'Assesment1' => NULL,
            'Assesment2' => NULL,
            'Assesment3' => NULL,
            'Assesment4' => NULL,
            'Assesment5' => NULL
        );

        $i = 1;
        // getting all the names assigned
        foreach( $gradeNames as $key => $val){
            
            //grade name is stored in database as gradeName,gradeNumber e.g. (practical,70)
            $grade = explode(',', $val);

            if (isset($grade[0]) && $grade[0] != ''){
                //setting grade name and comma separator
                $set['Assesment'.$i] = $grade[0].",";
                $i++;
            }
        }

        $this->db->trans_start();
        
        $this->db->update($tableName, $set, array('client_id' => $clientId));


        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return TRUE;

    } 
    /**
     * function gets the grade name of an enrolled client in a program/training
     *
     * @access    public
     * @param     table the table we are to query from, by default it is barbering
     * @param     status the status of a client in a program
     * 
     * 
     * @return    Boolean true if successful, false if transaction faild
     */    
    public function get_program_grades_names($table = 'barbering', $status = 'Enrolled') {

        

        $this->db->trans_start();
        
            if ($status !== 'Enrolled'){
                $this->db->order_by('enrolled_in');
            }
            $this->db->select('Assesment1, Assesment2, Assesment3, Assesment4, Assesment5');
            $this->db->where(array('status' => $status));
            $query = $this->db->get($table);
            // $query = $this->db->query('');

        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return $query->row_array();

    }

    /**
     * updates the assesment names of all enrolled clients in that program/ training
     *
     * @access    public
     * @param     data the post data  
     * 
     * @return    Boolean true if successful, false if transaction faild
     */    
    public function set_program_asses_name($data = NULL) {
        
        // $assesments = array();
        $set = array();
        $table = $data['program'];

        // clearing all the assesments 
        $set['Assesment1'] = NULL;
        $set['Assesment2'] = NULL;
        $set['Assesment3'] = NULL;
        $set['Assesment4'] = NULL;
        $set['Assesment5'] = NULL;

        // in the query for assesmets 1-5 we are checking to see if the input exist by means of checking array keys
        if (array_key_exists('assesmentName', $data)){

            $assesNum = 1;
            $i = 0;
            
            while( $i < count($data['assesmentName']) ){

                if (array_key_exists($i, $data['assesmentName']) && trim($data['assesmentName'][$i]) != ''){
                    
                    // pushing input data that are not empty
                    $set['Assesment'.$assesNum] = trim($data['assesmentName'][$i]).',';
                    $assesNum++;
                }
                $i++;

            }

        }        
        $this->db->trans_start();
        
        $this->db->update($table, $set, array('status' => 'Enrolled'));

        $affectedRows = $this->db->affected_rows();

        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){//Something went wrong with the query
            return FALSE;
        }
        if($affectedRows === 0){// checking to see if the query ran successfully but no updates made
            return 0;
        }
        
        return TRUE;
    }

    /**
     * Deletes the record from the program table
     *
     * @access    public
     * @param     tableName name of the program table
     * @param     programId the program ID containing the enrolled client info
     * 
     * @return    boolean true or false based on query execution
     */    
    public function remove_enrolled_client($tableName = NULL, $programId = NULL) {
   
        $this->db->trans_start();
            $this->db->delete($tableName, array('id' => $programId));
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return TRUE;
    
    }
    /**
     * get_client() gets all the clients info tha have the first and last name equal to name
     *
     * @access    public
     * @param     name of the clients entered in the search  
     * 
     * @return    Boolean/Array array of records if successful, false if transaction failed
     */    
    public function get_client($name = NULL) {
   
        $this->db->trans_start();
        
        $sql = $this->db->query('
            SELECT a.id, a.first_name, a.middle_name, a.last_name, a.gender, email, mobile_phone,
            CONCAT(a.street,", ",a.ctv, ", ",a.district) as address, a.ec_name, a.ec_number, a.ec_relation,  
            (SELECT p.path FROM profile_img p WHERE p.id = a.profile_img_id) as img_path
            FROM applicants a
            WHERE is_client = 1 and CONCAT(first_name, " ", last_name) LIKE "%'.trim($name).'%"
        ');
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return $sql->result_array();
    
    }
    /**
     * get_client() gets all the clients info tha have the first and last name equal to name
     *
     * @access    public
     * @param     name of the clients entered in the search  
     * 
     * @return    Boolean/Array array of records if successful, false if transaction failed
     */    
    public function get_program_summary($table = NULL, $grade = NULL, $status = NULL, $year = NULL) {
   
        $year = ($year == NULL)? '' : 'AND p.enrolled_in = '.$year;
        $sql = '';
        $this->db->trans_start();
        

            if ($table === 1){
                //query all tables


            }else{
           
                $sql = $this->db->query('
                    SELECT p.programme, COUNT(p.id) as amount
                    From '.$table.' p
                    WHERE p.status = "'.$status.'" '.$grade.' '.$year.'');
            
            }
        
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            return FALSE;
        }
        
        return $sql->result_array();
    
    }
}

?>