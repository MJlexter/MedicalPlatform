<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';

  $vaccine_id=$_REQUEST["id"];
  $action=$_REQUEST["action"];

  if($action=="vaccine"){
	$drlist=$doctorMgr->getVaccineDoctorList($vaccine_id);
	$doctor_list=getListIdStr($drlist,"doctor_id");
	$districtCondition=$doctorMgr->getDistrictCondition($doctor_list);
	//print_r($districtCondition);
	$smarty->assign("vaccine_id",$vaccine_id);
	$smarty->assign("doctorlist",$drlist);
	$smarty->assign("district_condition",$districtCondition);
	$smarty->display(ROOT.'/templates/doctor/vaccinedoctor.html');
  }else{
	$drlist=$doctorMgr->getDoctorList();
	$smarty->assign("doctor_list",$drlist);

	$doctor_list=getListIdStr($drlist,"doctor_id");
	$districtCondition=$doctorMgr->getDistrictCondition($doctor_list);
	$smarty->assign("district_condition",$districtCondition);

	$smarty->display(ROOT.'/templates/doctor/index.html');
  }
?>