<?php
/*
 * Created on 2011-2-7
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */  
 class OrderMgr
 {
 	private static $instance = null;
	public static $dbmgr = null;
	public static $webServiceClient = null;
	public static function getInstance() {
		return self :: $instance != null ? self :: $instance : new OrderMgr();
	}

	private function __construct() {
		
	}
	
	public  function __destruct ()
	{
		
	}

	public function getVaccineAppointmentByOrderNo($order_no){
		Global $SysLangCode,$SysUser;

		$order_no=mysql_real_escape_string($order_no);
		$doctor_id=$SysUser["doctor_id"];

		$sql="select main.*,t.name order_rtime,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address ,
		TO_DAYS(NOW()) - TO_DAYS(main.order_date) expire_days
		  from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.order_no='$order_no' and main.doctor_id=$doctor_id";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 

		return $result;
	}

	public function getVaccineAppointmentByGuid($key,$guid){
		Global $SysLangCode,$SysUser;

		$guid=mysql_real_escape_string($guid);
		$doctor_id=$SysUser["doctor_id"];
		$sql="select main.*,t.name order_rtime,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address ,
		TO_DAYS(NOW()) - TO_DAYS(main.order_date) expire_days
		  from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.guid='$guid' and main.doctor_id=$doctor_id";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 

		return $result;
	}

	public function approveVaccineAppointment($id){
		Global $SysUser;
		
		$user_id=$SysUser["id"];
		$doctor_id=$SysUser["doctor_id"];
		$id=mysql_real_escape_string($id);

		$sql="update dr_tb_member_vaccine_order set updated_user=$user_id,updated_date=now(),status='F' 
		where id=$id and doctor_id=$doctor_id ";
		$query = $this->dbmgr->query($sql);
	}
	
	public function cancelVaccineAppointment($id){
		Global $SysUser;
		
		$user_id=$SysUser["id"];
		$doctor_id=$SysUser["doctor_id"];
		$id=mysql_real_escape_string($id);

		$sql="update dr_tb_member_vaccine_order set updated_user=$user_id,updated_date=now(),status='C'
		where id=$id and doctor_id=$doctor_id ";
		$query = $this->dbmgr->query($sql);
	}
 }
 
 $orderMgr=OrderMgr::getInstance();
 $orderMgr->dbmgr=$dbmgr;
 
 
 
 
?>