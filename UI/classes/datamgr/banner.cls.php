<?php
/*
 * Created on 2011-2-7
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */  
 class BannerMgr
 {
 	private static $instance = null;
	public static $dbmgr = null;
	public static $webServiceClient = null;
	public static function getInstance() {
		return self :: $instance != null ? self :: $instance : new BannerMgr();
	}

	private function __construct() {
		
	}
	
	public  function __destruct ()
	{
		
	}
	
	public function getIndexPromotionBanner(){
		Global $SysLangCode,$CONFIG;
		if($CONFIG['solution_configuration']!="debug"&&isset($_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexpromotion"])){
			return $_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexpromotion"];
		}else{
			$list=$this->getBannerByCode("indexpromotion");
			$_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexpromotion"]=$list;
			return $list;
		}
	}

	public function getIndexSliderBanner(){
		Global $SysLangCode,$CONFIG;

		if($CONFIG['solution_configuration']!="debug"&&isset($_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexslider"])){
			return $_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexslider"];
		}else{
			$list=$this->getBannerByCodeList("'indextop1','indextop2','indextop3','indextop4'");
			$_SESSION[SESSIONNAME]["banner"][$SysLangCode]["indexslider"]=$list;
			return $list;
		}
	}
	
	public function getBannerByCode($code)
	{
		Global $SysLangCode;
		//$codelist=mysql_real_escape_string($codelist);
		$ex=getLangEx();

		$sql="
		select code, title_$ex name,link,pic_$ex pic from dr_tb_banner
		where code ='$code' and status='A'
		 ";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array($query); 
		//print_r($result);
		return $result;
	}

	public function getBannerByCodeList($codelist)
	{
		Global $SysLangCode;
		//$codelist=mysql_real_escape_string($codelist);
		$ex=getLangEx();

		$sql="
		select code, title_$ex name,link,pic_$ex pic from dr_tb_banner
		where code in ($codelist) and status='A'
		 ";

		$query = $this->dbmgr->query($sql);
		$result = $this->dbmgr->fetch_array_all($query); 
		//print_r($result);
		return $result;
	}
	
 }
 
 $bannerMgr=BannerMgr::getInstance();
 $bannerMgr->dbmgr=$dbmgr;
 
 
 
 
?>