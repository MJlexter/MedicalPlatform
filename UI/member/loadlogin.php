<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require 'inc.php';

  //unset($_SESSION[SESSIONNAME]["Member"]);
  
  if($_SESSION[SESSIONNAME]["login_require_url"]!=""){
	$url=$_SESSION[SESSIONNAME]["login_require_url"];
	$_SESSION[SESSIONNAME]["login_require_url"]=null;
	unset($_SESSION[SESSIONNAME]["login_require_url"]);
	WindowRedirect($url);
  }else{
	WindowRedirect($CONFIG['smarty']['rootpath']."/member/index.php");
  }

?>