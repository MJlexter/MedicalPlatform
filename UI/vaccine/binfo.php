<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require 'inc.php';
  require ROOT.'/classes/datamgr/vaccine.cls.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';

  if(!isset($_SESSION[SESSIONNAME]["Member"])){
	
	echo "WITHOUTLOGIN";

  }else{
	$id=$_REQUEST["id"];
	$VaccineST=$vaccineMgr->getVaccineDoctor($id);
	$doctor_id=$VaccineST["doctor_id"];
	$vaccine_id=$VaccineST["vaccine_id"];

	$member=$_SESSION[SESSIONNAME]["Member"];
	
	$doctor=$doctorMgr->getDoctor($doctor_id);
	$officeList=$doctorMgr->getOfficeListByDoctor($doctor_id);

	
	$vaccine=$vaccineMgr->getVaccine($vaccine_id);
	
	$smarty->assign("id",$id);
	$smarty->assign("vaccine",$vaccine);
	$smarty->assign("vaccineST",$VaccineST);
	$smarty->assign("member",$member);
	$smarty->assign("doctor",$doctor);
	$smarty->assign("office_count",count($officeList));
	$smarty->assign("office_list",$officeList);
	$smarty->display(ROOT.'/templates/order/vaccinebookinginfo.html');
  }

?>