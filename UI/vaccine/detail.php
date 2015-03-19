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

  $vaccine=$vaccineMgr->getVaccine($_REQUEST["id"]);
  $vaccine["summary"]=encodeLongText($vaccine["summary"]);
  $vaccine["effect"]=encodeLongText($vaccine["effect"]);
  $vaccine["used_group"]=encodeLongText($vaccine["used_group"]);
  $vaccine["caution"]=encodeLongText($vaccine["caution"]);
  $vaccine["bad_effect"]=encodeLongText($vaccine["bad_effect"]);
  $vaccine["bad_effect_resolve"]=encodeLongText($vaccine["bad_effect_resolve"]);
  //echo  $vaccine["summary"];
  $smarty->assign("info",$vaccine);

  $smarty->display(ROOT.'/templates/vaccine/detail.html');

?>