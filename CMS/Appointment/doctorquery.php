<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  $action=$_REQUEST["action"];
  $model=new XmlModel("doctorquery","doctorquery.php");
  
	$smarty->assign("MyModule","appointment");
  
  
  $model->DefaultShow($smarty,$dbmgr,$action,"doctorquery",$_REQUEST);

?>