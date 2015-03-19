<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  require ROOT.'/classes/datamgr/order.cls.php';
  

  $smarty->assign("MyModule","appointment");
  $smarty->assign("MyMenuId","vaccineapponitment");

  //print_r($_REQUEST);
  $action=$_REQUEST["action"];
  if($action=="approve"){
	$id=$_REQUEST["id"];
	$orderMgr->approveVaccineAppointment($id);
  }

  $order_no=$_REQUEST["order_no"];
  $key=$_REQUEST["key"];
  $guid=$_REQUEST["guid"];
  if(isset($_REQUEST["order_no"])||isset($_REQUEST["key"])){
	  if($order_no!=""){
		$info=$orderMgr->getVaccineAppointmentByOrderNo($order_no);
	  }else{
		$info=$orderMgr->getVaccineAppointmentByGuid($key,$guid);
	  }
  }
  if(isset($info)){
	if($info["id"]==""){
		$smarty->assign("result","nodata");
	}else{
		$order_no=$info["order_no"];
		$smarty->assign("order_no",$order_no);
		$smarty->assign("info",$info);
	}
  }
  
    $smarty->display(ROOT.'/templates/appointment/qrcodereader.html');


?>