<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  //require 'inc.php';
  require ROOT.'/classes/datamgr/member.cls.php';

  $action=$_REQUEST["action"];

  
  $member=$_SESSION[SESSIONNAME]["Member"];
  if($member["id"]==""){
	echo "HACK";
	exit;
  }

  if($action=="update_field"){
	$field=$_REQUEST["field"];
	$value=$_REQUEST["value"];
	$memberMgr->updateMemberInfo($member["id"],$field,$value);
	
	if($field=="name"){
		$member["name"]=$value;
		$_SESSION[SESSIONNAME]["Member"]=$member;
	}

	echo "SUCCESS";
  }
  
  


?>