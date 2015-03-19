<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require 'include/common.inc.php';
  require ROOT.'/classes/datamgr/banner.cls.php';
  require ROOT.'/classes/datamgr/doctor.cls.php';
  require ROOT.'/classes/datamgr/vaccine.cls.php';
  //echo strtotime("2014-12-12");
  //$date=getdate(strtotime("2014-1-14"));  
  //print_r($date); 
  
  $promotedBanner=$bannerMgr->getIndexPromotionBanner();
  $smarty->assign("promotedbanner",$promotedBanner);

  $topbannerlist=$bannerMgr->getIndexSliderBanner();
  $smarty->assign("topbanner",$topbannerlist);

  $promoteddoctorlist=$doctorMgr->getPromotedDoctorList();
  $smarty->assign("promoteddoctorlist",$promoteddoctorlist);

  $promotedvaccinelist=$vaccineMgr->getPromotedVaccineList();
  $smarty->assign("promotedvaccine1",$promotedvaccinelist[0]);
  $smarty->assign("promotedvaccine2",$promotedvaccinelist[1]);
  $smarty->display(ROOT.'/templates/index.html');
  
?>