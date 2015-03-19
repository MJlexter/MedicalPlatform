<?php
/*
 * Created on 2011-2-7
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */  
 class OfficeMgr
 {
 	private static $instance = null;
	public static $dbmgr = null;
	public static $webServiceClient = null;
	public static function getInstance() {
		return self :: $instance != null ? self :: $instance : new OfficeMgr();
	}

	private function __construct() {
		
	}
	
	public  function __destruct ()
	{
		
	}
	
	public function getOfficeOpenHour($id)
	{Global $SysLangCode;
		$id=mysql_real_escape_string($id);
		$sql="select a.id,a.doctor_id,a.office_id,bl.name office_name from dr_tb_office_openhour a
	inner join dr_tb_office b on a.office_id=b.id
	left join dr_tb_office_lang bl on b.id=bl.oid and bl.lang='$SysLangCode' 
	where a.status='A' and b.status='A' and a.id=$id ";
	
	$query = $this->dbmgr->query($sql);
	$result = $this->dbmgr->fetch_array($query);
		return $result;
	}

	public function getOfficeOpenHourList($doctor_id){
	Global $SysLangCode;
		$doctor_id=mysql_real_escape_string($doctor_id);

	$sql="select a.id,a.doctor_id,a.office_id,bl.name office_name from dr_tb_office_openhour a
	inner join dr_tb_office b on a.office_id=b.id
	left join dr_tb_office_lang bl on b.id=bl.oid and bl.lang='$SysLangCode' 
	where a.status='A' and b.status='A' and a.doctor_id=$doctor_id ";

	$query = $this->dbmgr->query($sql);
	$result = $this->dbmgr->fetch_array_all($query);

	return $result;
	}
	
	public function getAppointmentList($office_id,$doctor_id,$start_date,$end_date){
		Global $SysLangCode;

		$office_id=mysql_real_escape_string($office_id);
		$doctor_id=mysql_real_escape_string($doctor_id);
		$start_date=mysql_real_escape_string($start_date);
		$end_date=mysql_real_escape_string($end_date);
		$sql="select main.*,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address ,
		t.name order_rtime,t.start_time,t.end_time
		 from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.office_id=$office_id and main.doctor_id=$doctor_id ";
if($start_date!="" && $end_date!=""){
 $sql=$sql." and main.order_date>='$start_date' and main.order_date<='$end_date' ";
 }else{
	$sql=$sql."  and (TO_DAYS(NOW()) - TO_DAYS(main.order_date))<=0 ";
 }
 $sql=$sql." order by main.order_date,main.order_time";

//
//inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
//inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 

		return $result;
	}
 }
 
 $officeMgr=OfficeMgr::getInstance();
 $officeMgr->dbmgr=$dbmgr;
 
 
 
 
?>