<?php
/*
 * Created on 2011-2-7
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */  
 class MemberMgr
 {
 	private static $instance = null;
	public static $dbmgr = null;
	public static $webServiceClient = null;
	public static function getInstance() {
		return self :: $instance != null ? self :: $instance : new MemberMgr();
	}

	private function __construct() {
		
	}
	
	public  function __destruct ()
	{
		
	}

	public function getMemberByEmailMobile($email,$mobile){
		Global $SysLangCode;

		$email=mysql_real_escape_string($email);
		$mobile=mysql_real_escape_string($mobile);

		$sql="select * from dr_tb_member
where status='A' and (  mobile='$mobile' )";//email='$email' or
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		return $result;

	}
	

	public function addMember($email,$mobile,$password,$name){
		
		$this->dbmgr->begin_trans();

		$email=mysql_real_escape_string($email);
		$mobile=mysql_real_escape_string($mobile);
		$password=mysql_real_escape_string($password);
		$name=mysql_real_escape_string($name);
		//logger_mgr::logDebug("a $password b");
		$password=md5($password);

		$sql="select ifnull(max(id),0)+1 from dr_tb_member";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		$id=$result[0];

		$sql="insert into dr_tb_member (id,email,mobile,password,name,status) values
		($id,'$email','$mobile','$password','$name','A')   ";
		$query = $this->dbmgr->query($sql);

		
		$this->dbmgr->commit_trans();

		return true;

	}

	public function getMemberInfo($member_id){
		
		$member_id=mysql_real_escape_string($member_id);

		$sql="select * from dr_tb_member_info where member_id=$member_id ";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 

		return $result;

	}

	public function updateMemberInfo($member_id,$field,$value){
	
		$member_id=mysql_real_escape_string($member_id);
		$field=mysql_real_escape_string($field);
		$value=mysql_real_escape_string($value);

		if($field=="name"){
			$sql="update dr_tb_member set name='$value' where id=$member_id ";
			$query = $this->dbmgr->query($sql);
		}else{

			$sql="select 1 from dr_tb_member_info where member_id=$member_id ";
			$query = $this->dbmgr->query($sql);
			$result = $this->dbmgr->fetch_array_all($query); 
			if(count($result)>0){
				$sql="update dr_tb_member_info set `$field`='$value' where member_id=$member_id ";
			}else{
				$sql="insert into dr_tb_member_info (member_id,`$field`) values ($member_id,'$value')";
			}
			
			$query = $this->dbmgr->query($sql);
		}


	}

 }
 
 $memberMgr=MemberMgr::getInstance();
 $memberMgr->dbmgr=$dbmgr;
 
 
 
 
?>