<?php
/*
 * Created on 2010-5-11
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
function encode($str)
{
	return mb_convert_encoding($str,'UTF-8');
}
function parameter_filter($param)
{
	$arr=array("'"=>"''");
	$param = strtr($param,$arr);
	return $param;
}
function ParentRedirect($url)
{
	//Header("Location: $url");
	echo "<script languate=\"javascript\">";
	echo "parent.location.href='".$url."'";
	echo "</script>";
	exit();
}
function WindowRedirect($url)
{
	//Header("Location: $url");
	echo "<script languate=\"javascript\">";
	echo "window.location.href='".$url."'";
	echo "</script>";
	exit();
}

/*
 function name：remote_file_exists
 function：valid remote file is exists
 params： $url_file - remote file URL
 return：exists return true，else return false
 */
function remote_file_exists($url_file){
	if(@fclose(@fopen($url_file,"r")))
	{
		return true;
	}
	else
	{
		return false;
	}
}

function getMenuJson($menu){
	
	
$item["current"]=true;
$item["title"]="管理工具";
$item["link"]="#";
foreach ($menu as $val){
	
	$sm=$val["sub_function"];
	$subitemcontent=null;
	foreach ($sm as $vc){
		$url=null;
		$url["name"]=$vc["function_name"];
		$url["urlPathinfo"]=$vc["function_link"];
		$subitemcontent[$vc["function_link"]]=$url;
	}
	$list[$val["function_name"]]=$subitemcontent;
	
	
}
$item["list"]=$list;

return json_encode($item);
}

function ResetNameWithLang($arr,$lang){
	
	if(isset($arr["name"])&&isset($arr["name_".$lang])){
		$arr["name"]=$arr["name_".$lang];
	}

	foreach ($arr as $key => $value){
		if(is_array($arr[$key])){
			$arr[$key]=ResetNameWithLang($arr[$key],$lang);
		}
	}
	return $arr;

}
function getSimpleGuid(){
	$size=4;
	$length=4;

	$code="";

	$maxnumber=1;
	for($i=0;$i<$length;$i++){
		$maxnumber=$maxnumber*10;
	}

	for($i=0;$i<$size;$i++){
		 $tmp=sprintf("%0".$length."s",rand(0,$maxnumber));
		 if($code!=""){
		 $code.="-";
		 }
		 $code.=$tmp;
	}
	return $code;

}
 function guid($namespace = '') {     
    static $guid = '';
    $uid = uniqid("", true);
    $data = $namespace;
    $data .= $_SERVER['REQUEST_TIME'];
    $data .= $_SERVER['HTTP_USER_AGENT'];
    $data .= $_SERVER['LOCAL_ADDR'];
    $data .= $_SERVER['LOCAL_PORT'];
    $data .= $_SERVER['REMOTE_ADDR'];
    $data .= $_SERVER['REMOTE_PORT'];
    $hash = strtoupper(hash('ripemd128', $uid . $guid . md5($data)));
    $guid = '' .   
            substr($hash,  0,  8) . 
            '-' .
            substr($hash,  8,  4) .
            '-' .
            substr($hash, 12,  4) .
            '-' .
            substr($hash, 16,  4) .
            '-' .
            substr($hash, 20, 12) .
            '';
    return $guid;
  }
  
function getLangEx(){
Global $SysLangCode;
		$ex="sc";
		if($SysLangCode=="zh-cn"){
			$ex="sc";	
		}elseif($SysLangCode=="zh-hk") {
			$ex="tc";
		}elseif($SysLangCode=="en-us") {
			$ex="en";
		}

		return $ex;
}


function getListIdStr($arr,$key){
	$list="0";
		foreach ($arr as $value){
			$list.=",".$value[$key];
		}
	return $list;
}

function encodeLongText($str){
	$arr=explode("\n",$str);
	$ret="";
	foreach ($arr as $value){
			$ret.="<p> $value </p>";
	}

	return $ret;
}

function encodeRowText($str){
	$arr=explode("\n",$str);
	$ret="";
	foreach ($arr as $value){
			$ret.="$value<br />";
	}

	return $ret;
}
?>
