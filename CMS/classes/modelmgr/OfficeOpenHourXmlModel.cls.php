<?php

class OfficeOpenHourXmlModel extends XmlModel{
	
	public function __construct($pagename){
		parent::__construct("officeopenhour",$pagename);
	}

	public function Save($dbMgr,$request,$sysuser){
	Global $SysLang; 
		$id=0;
		if($request["primary_id"]!=""){
			$id=$request["primary_id"];
		}

		
			$doctor_id=$request["doctor_id"];
			$office_id=$request["office_id"];
		
			$id=mysql_real_escape_string($id);
			$doctor_id=mysql_real_escape_string($doctor_id);
			$office_id=mysql_real_escape_string($office_id);
			$sql="select * from dr_tb_office_openhour where doctor_id=$doctor_id and office_id=$office_id and id<>$id ";
			$query = $dbMgr->query($sql);
			$userRows = $dbMgr->fetch_array_all($query); 
			if(count($userRows)>0){
				return $SysLang["doctor"]["duplicatedoctoroffice"];
			}

		return parent::Save($dbMgr,$request,$sysuser);

	}

}

?>