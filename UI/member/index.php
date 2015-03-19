<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/member.cls.php';

  if(!isset($_SESSION[SESSIONNAME]["Member"])){
	$_SESSION[SESSIONNAME]["login_require_url"]=$_SERVER["REQUEST_URI"];
	 $smarty->display(ROOT.'/templates/member/login.html');
	exit();
  }
  $member=$_SESSION[SESSIONNAME]["Member"];
  $memberInfo=$memberMgr->getMemberInfo($member["id"]);

  
  $smarty->assign("member",$member);
  $smarty->assign("info",$memberInfo);

  if($memberInfo["is_completed"]!="1"){
	$smarty->display(ROOT.'/templates/member/info_complete.html');
	exit();
  }


  $smarty->display(ROOT.'/templates/member/index.html');
  
?>