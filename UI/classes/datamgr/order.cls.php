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

	public function getBookingDateSelectedTime($office_id,$doctor_id,$order_date){

		$office_id=mysql_real_escape_string($office_id);
		$doctor_id=mysql_real_escape_string($doctor_id);
		$order_date=mysql_real_escape_string($order_date);

		$meetdays=$this->getOpenHour($office_id,$doctor_id,$order_date);

		$sql="select * from dr_tb_time 
where id not in ( 
select order_time from dr_tb_member_vaccine_order o
where o.office_id=$office_id and o.doctor_id=$doctor_id and order_date='$order_date' and status='P'
 ) and id in ($meetdays)";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		return $result;

	}

	public function getOpenHour($office_id,$doctor_id,$order_date){
		$date=getdate(strtotime($order_date));  
		$wday=$date["wday"];
		
		$sql="select meet_day$wday from dr_tb_office_openhour
		where office_id=$office_id and doctor_id=$doctor_id ";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		return $result[0];

	}

	public function genOrderNo($prefix){
		
		$d=date('Ym',time());
		$sql="select seq from dr_order_no_gen
		where prefix='$prefix' and dateremark='$d' ";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		$seq= $result[0];
		if($seq==""){
			$sql="insert into dr_order_no_gen (prefix,dateremark,seq) values ('$prefix','$d',2)";
			$query = $this->dbmgr->query($sql);
			$seq= 1;
		}else{
			$sql="update dr_order_no_gen set seq=seq+1 where prefix='$prefix' and dateremark='$d' ";
			$query = $this->dbmgr->query($sql);
		}
		return $prefix.$d.sprintf("%06d", $seq);

	}

	public function checkBookingUsed($office_id,$doctor_id,$order_date,$order_time){
		
		$sql="select 1 from dr_tb_member_vaccine_order
		where office_id=$office_id and doctor_id=$doctor_id and order_date='$order_date' and order_time=$order_time and status='P'";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 

		return count($result)>0;
	}

	
	public function createVaccineOrder($member_id,$name,$mobile,$email,
	$order_date,$order_time,$vaccine_id,$doctor_id,$office_id,$price,
	$snapshot,$doctor_vaccine_id){
		

		$member_id=mysql_real_escape_string($member_id);
		$name=mysql_real_escape_string($name);
		$mobile=mysql_real_escape_string($mobile);
		$email=mysql_real_escape_string($email);
		$order_date=mysql_real_escape_string($order_date);
		$order_time=mysql_real_escape_string($order_time);
		$vaccine_id=mysql_real_escape_string($vaccine_id);
		$doctor_id=mysql_real_escape_string($doctor_id);
		$office_id=mysql_real_escape_string($office_id);
		$price=mysql_real_escape_string($price);
		$snapshot=mysql_real_escape_string($snapshot);
		
		

		$this->dbmgr->begin_trans();

		while(true){
			$guid=getSimpleGuid();
			$sql="select 1 from dr_tb_member_vaccine_order where guid='$guid' and h_status='P' ";
			$query = $this->dbmgr->query($sql);
			$result = $this->dbmgr->fetch_array_all($query);
			if(count($result)==0){
				break;
			}
		}


		$password=md5($password);
		//$guid=guid();

		$sql="select ifnull(max(id),0)+1 from dr_tb_member_vaccine_order";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		$id=$result[0];

		$order_no=$this->genOrderNo("VC");

		$sql="INSERT INTO `dr_tb_member_vaccine_order`
(`id`,`order_no`,`guid`,`member_id`,`name`,`mobile`,`email`,`order_date`,`order_time`,`vaccine_id`,`doctor_id`,`office_id`,`price`,`status`,`created_time`,`snapshot`,h_status )
VALUES
($id,'$order_no','$guid',$member_id,'$name','$mobile','$email','$order_date',$order_time,$vaccine_id,$doctor_id,$office_id,$price,'P',now(),'$snapshot','P');
 ";
		$query = $this->dbmgr->query($sql);

		$this->updateDoctorBookingCount($doctor_id);
		$this->updateVaccineBookingCount($vaccine_id);

		
		$this->dbmgr->commit_trans();
		$arr["id"]=$id;
		$arr["guid"]=$guid;
		return $arr;

	}

	public function updateDoctorBookingCount($doctor_id){
		
		
		$sql="select 1 from dr_tb_doctor_value
where doctor_id=$doctor_id;
";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		if(count($result)>0){
			$sql="update dr_tb_doctor_value set booking_count=ifnull(booking_count,233)+1 where doctor_id=$doctor_id";

		}else{
			$sql="select ifnull(max(id),0)+1 from dr_tb_doctor_value";
			$query = $this->dbmgr->query($sql);
			$result = $this->dbmgr->fetch_array($query); 
			$id=$result[0];
			
			$sql="insert into dr_tb_doctor_value (id,doctor_id,booking_count) values ($id,$doctor_id,234)";
			
		}
		
		$query = $this->dbmgr->query($sql);
	}

	
	public function updateVaccineBookingCount($vaccine_id){
		
		
		$sql="select 1 from dr_tb_vaccine_value
where vaccine_id=$vaccine_id;
";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		if(count($result)>0){
			$sql="update dr_tb_vaccine_value set booking_count=ifnull(booking_count,233)+1 where vaccine_id=$vaccine_id";

		}else{
			$sql="select ifnull(max(id),0)+1 from dr_tb_vaccine_value";
			$query = $this->dbmgr->query($sql);
			$result = $this->dbmgr->fetch_array($query); 
			$id=$result[0];
			
			$sql="insert into dr_tb_vaccine_value (id,vaccine_id,booking_count) values ($id,$vaccine_id,234)";
		}
		
		$query = $this->dbmgr->query($sql);
	}

	public function getActiveVaccineAppointmentList($member_id){
		Global $SysLangCode;

		$member_id=mysql_real_escape_string($member_id);
		$sql="select main.*,t.name order_rtime,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address 
		 from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.member_id=$member_id and main.status='P'and (TO_DAYS(NOW()) - TO_DAYS(main.order_date))<=0
order by main.order_date,main.order_time";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 

		return $result;
	}

	public function getExpiredVaccineAppointmentList($member_id){
		Global $SysLangCode;

		$member_id=mysql_real_escape_string($member_id);
		$sql="select main.*,t.name order_rtime,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address 
		  from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.member_id=$member_id and (main.status='F' or (TO_DAYS(NOW()) - TO_DAYS(main.order_date))>0) 
order by main.order_date desc,main.order_time";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 

		return $result;
	}

	public function getVaccineAppointment($member_id,$id){
		Global $SysLangCode;

		$member_id=mysql_real_escape_string($member_id);
		$id=mysql_real_escape_string($id);
		$sql="select main.*,t.name order_rtime,doctor.name doctor_name,vaccine.name vaccine_name,office.name office_name,office.address office_address ,
		TO_DAYS(NOW()) - TO_DAYS(main.order_date) expire_days
		  from dr_tb_member_vaccine_order main
inner join (select * from dr_tb_vaccine a left join dr_tb_vaccine_lang b on a.id=b.oid and b.lang='$SysLangCode') vaccine on main.vaccine_id=vaccine.id
inner join (select * from dr_tb_doctor a left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='$SysLangCode') doctor on main.doctor_id=doctor.id
inner join (select * from dr_tb_office a left join dr_tb_office_lang b on a.id=b.oid and b.lang='$SysLangCode') office on main.office_id=office.id
inner join dr_tb_member m on main.member_id=m.id
inner join dr_tb_time t on main.order_time=t.id
where main.member_id=$member_id and main.id=$id";
		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 

		return $result;
	}

	public function getVaccineAppointmentForCheck($member_id,$doctor_id,$vaccine_id){
	
		Global $SysLangCode;
		$sql="select a.order_no,a.price, o.name office_name,a.guid,a.order_date,t.name order_time,a.name clientname,a.mobile clientmobile 
		from dr_tb_member_vaccine_order a
inner join dr_tb_office_lang o on a.office_id=o.oid and o.lang='$SysLangCode'
inner join dr_tb_time t on a.order_time=t.id
where a.member_id=$member_id
and a.doctor_id=$doctor_id
and a.vaccine_id=$vaccine_id
and a.status='P'
order by created_time desc";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 



		return $result;
	}
 }
 
 $orderMgr=OrderMgr::getInstance();
 $orderMgr->dbmgr=$dbmgr;
 
 
 
 
?>