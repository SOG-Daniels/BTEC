<?php 
class Validation_model extends CI_Model{

    public function __construct(){

       $this->load->database();

    }
    public function get_user($email, $pass){

        $sql = $this->db->query('SELECT user_id, name, email FROM user u WHERE u.email = "'.$email.'" and u.password = "'.$pass.'" ');
        $row = $sql->num_rows();
        if ($row === 1){
            return $sql->row_array();
        }
        
        return FALSE;

    }
    public function get_user_by_email($email = NULL){

        $sql = $this->db->query('SELECT user_id FROM user u WHERE u.email = "'.$email.'"');
        $row = $sql->num_rows();
        
        if ($row > 0){
            return TRUE;
        }
    
        return FALSE;

        
    }
    public function set_pass_reset($email = NULL, $token = NULL, $expires = NULL ){

        if(isset($email) && isset($token) && isset($expires)){

            $sql = $this->db->query('SELECT user_id, email FROM user u WHERE u.email = "'.$email.'"');
            $result = $sql->row();
            $rowCount = $sql->num_rows();

            if ($rowCount > 0){

                $data = array(
                    'token' => $token,
                    'expires' => $expires
                );

                //updating the token and expires column in the passreset table
                $this->db->trans_start();
                $this->db->where('id', $result->user_id);
                $this->db->update('passreset', $data);
                $this->db->trans_complete();// just keeps track if there was any errors during transaction

                return ($this->db->trans_status() === FALSE )? FALSE : TRUE;

            }
            //inserting into the passreset table
            $data = array(
                'email' => $email,
                'token' => md5($token),
                'expiringDate' => $expires

            ); 
            
            return ($this->db->insert('passreset', $data))? TRUE : FALSE;
            
        }else{
            echo 'Parameters are needed to be set';
        }

    }

    public function set_new_pass($pass){



    }
    public function check_valid_token($token = NULL){
        
        $timeInSeconds = date('U');
        
        if (isset($token)){
            
            $this->db->where('token', md5($token));
            $this->db->select('email', 'expires');
            $sql = $this->db->get('passreset');
    
            $result = $sql->row();
            $rowCount = $sql->num_rows();
    
            if ($rowCount > 0 && $result->expires <= $timeInSeconds){
    
                return $result;
    
            }

        }

        return FALSE;

        

    }
    


}


?>