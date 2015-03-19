<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  $action=$_REQUEST["action"];
  $model=new XmlModel("appointment","appointment.php");
  
	$smarty->assign("MyModule","appointment");

  if($action=="edit"){

  }else if($action=="search"){
	$_REQUEST["doctor_id"]=$SysUser["doctor_id"];
  }else if($action=="list"){

  }
  
  $model->DefaultShow($smarty,$dbmgr,$action,"appointment",$_REQUEST);

?>