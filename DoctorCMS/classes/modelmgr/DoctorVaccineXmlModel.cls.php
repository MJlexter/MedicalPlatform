<?php

class DoctorVaccineXmlModel extends XmlModel{
	
	public function __construct($pagename){
		parent::__construct("doctorvaccine",$pagename);
	}

	public function Save($dbMgr,$request,$sysuser){
	Global $SysLang; 
		if($request["primary_id"]==""){
			$doctor_id=$request["doctor_id"];
			$vaccine_id=$request["vaccine_id"];

			$doctor_id=mysql_real_escape_string($doctor_id);
			$vaccine_id=mysql_real_escape_string($vaccine_id);

			$sql="select * from dr_tb_doctor_vaccine where doctor_id=$doctor_id and vaccine_id=$vaccine_id ";
			$query = $dbMgr->query($sql);
			$userRows = $dbMgr->fetch_array_all($query); 
			if(count($userRows)>0){
				return $SysLang["doctor"]["addvaccineduplicate"];
			}
		}

		return parent::Save($dbMgr,$request,$sysuser);

	}

}

?>