<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require '../include/common.inc.php';
  require ROOT.'/classes/datamgr/order.cls.php';

  $office_id=$_REQUEST["office_id"];
  $doctor_id=$_REQUEST["doctor_id"];
  $order_date=$_REQUEST["order_date"];

  $timelist=$orderMgr->getBookingDateSelectedTime($office_id,$doctor_id,$order_date);

  $smarty->assign("timelist",$timelist);
  $smarty->assign("timelistcount",count($timelist));
  
  $smarty->display(ROOT.'/templates/order/gettime.html');
  


?>