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

  $vaccineList=$vaccineMgr->getVaccineList();
  //print_r($vaccineList);
  $smarty->assign("VaccineList",$vaccineList);

  $vaccineCategory=$vaccineMgr->getVaccineCategory();
  $smarty->assign("VaccineCategory",$vaccineCategory);

  $smarty->display(ROOT.'/templates/vaccine/index.html');

?>