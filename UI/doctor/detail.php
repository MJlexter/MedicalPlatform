<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';
  require ROOT.'/classes/datamgr/vaccine.cls.php';
  
  $doctor_id=$_REQUEST["id"];
  $office_id=$_REQUEST["oid"];
  $vaccine_id=$_REQUEST["vid"];
  $action=$_REQUEST["action"];

  $info=$doctorMgr->getDoctor($doctor_id);
  $info["pro_title"]=encodeRowText($info["pro_title"]);
  $info["summary"]=encodeLongText($info["summary"]);
  $info["post_process"]=encodeLongText($info["post_process"]);

  $standard=$doctorMgr->getStandardDoctorValue();

  if($info["totle_score"]>$standard["totle_score"]){
	$info["cp_totle_score"]=round(($info["totle_score"]*1.0/$standard["totle_score"])-1,2);
	$info["cp_totle_score_t"]="up";
  }else if($info["totle_score"]<$standard["totle_score"]){
	$info["cp_totle_score"]=round(1-($info["totle_score"]*1.0/$standard["totle_score"]),2);
	$info["cp_totle_score_t"]="down";
  }else{
	$info["cp_totle_score"]=0;
  }

  if($info["service_level"]>$standard["service_level"]){
	$info["cp_service_level"]=round(($info["service_level"]*1.0/$standard["service_level"])-1,2);
	$info["cp_service_level_t"]="up";
  }else if($info["service_level"]<$standard["service_level"]){
	$info["cp_service_level"]=round(1-($info["service_level"]*1.0/$standard["service_level"]),2);
	$info["cp_service_level_t"]="down";
  }else{
	$info["cp_service_level"]=0;
  }

  if($info["pro_level"]>$standard["pro_level"]){
	$info["cp_pro_level"]=round(($info["pro_level"]*1.0/$standard["pro_level"])-1,2);
	$info["cp_pro_level_t"]="up";
  }else if($info["pro_level"]<$standard["pro_level"]){
	$info["cp_pro_level"]=round(1-($info["pro_level"]*1.0/$standard["pro_level"]),2);
	$info["cp_pro_level_t"]="down";
  }else{
	$info["cp_pro_level"]=0;
  }

  if($info["facility_level"]>$standard["facility_level"]){
	$info["cp_facility_level"]=round(($info["facility_level"]*1.0/$standard["facility_level"])-1,2);
	$info["cp_facility_level_t"]="up";
  }else if($info["facility_level"]<$standard["facility_level"]){
	$info["cp_facility_level"]=round(1-($info["facility_level"]*1.0/$standard["facility_level"]),2);
	$info["cp_facility_level_t"]="down";
  }else{
	$info["cp_facility_level"]=0;
  }
  //print_r($info);
  
  $smarty->assign("info",$info);

  $smarty->assign("standard",$standard);

  if($action=="vaccine"){
	
	$smarty->assign("office_id",$office_id);
	$smarty->assign("vaccine_id",$vaccine_id);
	$smarty->assign("doctor_id",$doctor_id);

	$smarty->display(ROOT.'/templates/doctor/vaccinedoctordetail.html');
  }else{

	$vaccine_list=$vaccineMgr->getVaccineListByDoctor($doctor_id);
	$smarty->assign("vaccine_list",$vaccine_list);

	$service_list=$doctorMgr->getDoctorService($doctor_id);
	$smarty->assign("service_list",$service_list);

	$smarty->assign("doctor_id",$doctor_id);
	$smarty->display(ROOT.'/templates/doctor/detail.html');
  }
?>