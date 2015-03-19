<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';

  $action=$_REQUEST["action"];
  $smarty->assign("MyModule","info");
  $smarty->assign("MyMenuId",$menuId."doctor_service");
  
  if($action==""){
  
	$result=$doctorMgr->getSpecialistDoctorService($SysUser["doctor_id"]);
	$smarty->assign("result",$result);
    $smarty->display(ROOT.'/templates/info/service.html');

  }else if($action=="save"){
	//print_r($_REQUEST);
	$_REQUEST["doctor_id"]=$SysUser["doctor_id"];
	$result=$doctorMgr->updatedDoctorService($_REQUEST,$SysUser["id"]);
	echo $result;
  }

?>