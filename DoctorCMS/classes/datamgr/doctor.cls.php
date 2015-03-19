<?php
/*
 * Created on 2011-2-7
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */  
 class DoctorMgr
 {
 	private static $instance = null;
	public static $dbmgr = null;
	public static $webServiceClient = null;
	public static function getInstance() {
		return self :: $instance != null ? self :: $instance : new DoctorMgr();
	}

	private function __construct() {
		
	}
	
	public  function __destruct ()
	{
		
	}
	
	public function getSpecialistDoctorList()
	{
		$sql="
select a.id doctor_id, a.licence_code,b.name doctor_name,pl.name specialist_name from dr_tb_doctor a
left join dr_tb_doctor_lang b on a.id=b.oid and b.lang='zh-cn'
inner join dr_tb_specialist p on  a.is_general='N' and a.specialist_id=p.id
left join dr_tb_specialist_lang pl on p.id=pl.oid and pl.lang='zh-cn'
where  a.status='A' and p.status='A'
order by a.licence_code,b.name
		  ";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		

		return $result;
	}

	public function getSpecialistDoctorServiceEffectId($doctor_id){
	
	
		$doctor_id=mysql_real_escape_string($doctor_id);
	$sql="
select p.* from dr_tb_doctor a
inner join dr_tb_specialist p on  a.is_general='N' and a.specialist_id=p.id
where  a.id=$doctor_id
		  ";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		
		$effect_list=$result["effect_list"];

		if($effect_list==""){
			$effect_list="0";
		}

		return $effect_list;
	}

	public  function getSpecialistDoctorService($doctor_id){
			
	
		$effect_list=$this->getSpecialistDoctorServiceEffectId($doctor_id);
		
		$sql="
select e.id effect_id,el.name effect_name,ifnull(s.doctor_id,'0') doctor_id,s.price,s.web_price from dr_tb_effect e
left join dr_tb_effect_lang el on e.id=el.oid and el.lang='zh-cn'
left join dr_tb_doctor_service s on e.id=s.effect_id and s.doctor_id=$doctor_id
where e.status='A' and e.id in ($effect_list)
order by el.name
		  ";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		return $result;
	}

	public function updatedDoctorService($request,$sysUserId){
	
		$this->dbmgr->begin_trans();
		$doctor_id=$request["doctor_id"];

		$doctor_id=mysql_real_escape_string($doctor_id);
		
		$effect_list=$this->getSpecialistDoctorServiceEffectId($doctor_id);
		$effect_list=explode(",",$effect_list);

		$sql="delete from dr_tb_doctor_service where doctor_id=$doctor_id ";
		$query = $this->dbmgr->query($sql);

		foreach ($effect_list as $value){
			
			$effect_id=$value;
			$effect_id=mysql_real_escape_string($effect_id);
			
			$selected=$request["effect_".$effect_id."_select"];
			$price=$request["effect_".$effect_id."_price"];
			$web_price=$request["effect_".$effect_id."_web_price"];
			
			$price=mysql_real_escape_string($price);
			$web_price=mysql_real_escape_string($web_price);

			if($selected=="Y"){
				
				$sql="
				insert into dr_tb_doctor_service (`effect_id`,`doctor_id`,`price`,`web_price`,`updated_user`,`updated_date`)
				values ($effect_id,$doctor_id,$price,$web_price,$sysUserId,now())";
				
				$query = $this->dbmgr->query($sql);
			}

		}
		$this->dbmgr->commit_trans();

		return "SUCCESS";

	}
	
 }
 
 $doctorMgr=DoctorMgr::getInstance();
 $doctorMgr->dbmgr=$dbmgr;
 
 
 
 
?>