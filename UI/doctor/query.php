<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';

  if(!isset($_SESSION[SESSIONNAME]["Member"])){
	$_SESSION[SESSIONNAME]["login_require_url"]=$_SERVER["REQUEST_URI"];
	 $smarty->display(ROOT.'/templates/member/login.html');
	exit();
  }
  
  $action=$_REQUEST["action"];
  if($action=="submit"){

  }else{
  
	  $doctor_id=$_REQUEST["id"];
	  $smarty->assign("doctor_id",$doctor_id==""?0:$doctor_id);
	  $smarty->display(ROOT.'/templates/doctor/query.html');

  }

?>