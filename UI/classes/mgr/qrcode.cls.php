<?php
/*
 * Created on 2010-11-17
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 
 
 include ROOT."/libs/qrcode/qrlib.php";  
 
 function GenQRCode($data){
 Global $CONFIG;
 $errorCorrectionLevel=$CONFIG['qr_code']['level'];
 $matrixPointSize=$CONFIG['qr_code']['size'];

 $PNG_TEMP_DIR=ROOT."/".$CONFIG['qr_code']['folder']."/";
 $filename = md5($data.'|'.$errorCorrectionLevel.'|'.$matrixPointSize).'.png';
 QRcode::png($data, $PNG_TEMP_DIR.$filename, $errorCorrectionLevel, $matrixPointSize, 2);




 return $CONFIG["rootpath"]."/".$CONFIG['qr_code']['folder']."/".$filename;
 }
 
?>
