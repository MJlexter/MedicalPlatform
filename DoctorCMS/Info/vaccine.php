<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  $action=$_REQUEST["action"];
  $model=new XmlModel("vaccine","vaccine.php");
  
  $action="edit";
  $model->DefaultShow($smarty,$dbmgr,$action,"",$_REQUEST);

?>