<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/order.cls.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';
  require ROOT.'/classes/datamgr/vaccine.cls.php';

  if(!isset($_SESSION[SESSIONNAME]["Member"])){
	$_SESSION[SESSIONNAME]["login_require_url"]=$_SERVER["REQUEST_URI"];
	 $smarty->display(ROOT.'/templates/member/login.html');
	exit();
  }

  $action=$_REQUEST["action"];

  if($action=="vaccine"){
	
	$doctor_id=$_REQUEST["did"];
	$vaccine_id=$_REQUEST["vid"];

	$info=$doctorMgr->getVaccineDoctor($vaccine_id,$doctor_id);
	$info["doctor_pro_title"]=encodeRowText($info["doctor_pro_title"]);
	$smarty->assign("info",$info);
	$member=$_SESSION[SESSIONNAME]["Member"];
	$smarty->assign("member",$member);
	$smarty->assign("doctor_id",$doctor_id);
	$smarty->assign("vaccine_id",$vaccine_id);
	$smarty->display(ROOT.'/templates/order/order.html');
  }
?>