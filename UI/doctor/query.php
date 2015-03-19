<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';

  if(!isset($_SESSION[SESSIONNAME]["Member"])){
	$_SESSION[SESSIONNAME]["login_require_url"]=$_SERVER["REQUEST_URI"];
	 $smarty->display(ROOT.'/templates/member/login.html');
	exit();
  }
  
  $member=$_SESSION[SESSIONNAME]["Member"];
  $member_id=$member["id"];
  
  $action=$_REQUEST["action"];
  if($action=="submit"){
  
	$doctor_id=$_REQUEST["doctor_id"];

	
	$info=$doctorMgr->GetQuestion($doctor_id,$member_id);
	if($info["id"]>0){
		echo "DUPLIC";
		exit;
	}

	$description=$_REQUEST["description"];
	$is_male=$_REQUEST["is_male"];
	$age=$_REQUEST["age"];
	$img_1=$_REQUEST["img_1"];
	$img_2=$_REQUEST["img_2"];
	$img_3=$_REQUEST["img_3"];

	$doctorMgr->SubmitAQuestion($doctor_id,$member_id,$member["name"],$member["mobile"],
	$description,$is_male,$age,$img_1,$img_2,$img_3);

	echo "SUCCESS";
	exit;
  }else{
		
	  $doctor_id=$_REQUEST["id"];
	  $doctor_id=$doctor_id==""?0:$doctor_id;

	  $smarty->assign("doctor_id",$doctor_id==""?0:$doctor_id);
	  $info=$doctorMgr->GetQuestion($doctor_id,$member_id);
  
	  $smarty->assign("info",$info);

	  $smarty->display(ROOT.'/templates/doctor/query.html');

  }

?>