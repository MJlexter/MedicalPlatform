<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  require ROOT.'/classes/modelmgr/DoctorVaccineXmlModel.cls.php';
  $action=$_REQUEST["action"];
  $model=new DoctorVaccineXmlModel("doctorvaccine.php");
  
  $smarty->assign("MyModule","info");

  if($action=="save"){
	if($_REQUEST["doctor_id"]!=$SysUser["doctor_id"]){
		echo $_REQUEST["doctor_id"]."hack".$SysUser["doctor_id"];
	}
  }else if($action=="edit"){

  }else if($action=="search"){
	$_REQUEST["doctor_id"]=$SysUser["doctor_id"];
  }else{
	$_REQUEST["key"]="doctor_id";
	$_REQUEST["id"]=$SysUser["doctor_id"];
  }


  $model->DefaultShow($smarty,$dbmgr,$action,"doctorvaccine",$_REQUEST);
?>