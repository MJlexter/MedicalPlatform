<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/member.cls.php';
  
  $action=$_REQUEST["action"];
  $mobile=$_REQUEST["mobile"];

  $memberlist=$memberMgr->getMemberByEmailMobile("noemail",$mobile);

  if($action=="reg"){

	  if(count($memberlist)>0){
		echo "HASREG";
	  }else{
	
		echo "SUCCESS";
	
	  }
  }else if($action=="valid"){
  
	$verify_code=$_REQUEST["verify_code"];
	if($verify_code=="123456"){
		echo "SUCCESS";
	}else{
		echo "INVALID";
	}
  }

?>