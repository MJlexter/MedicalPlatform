<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="ui-mobile">
<head>
    <meta charset="utf-8"></head>
<body>
<?php

function getip(){ 
    if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) 
        $ip = getenv("HTTP_CLIENT_IP"); 
    else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")) 
        $ip = getenv("HTTP_X_FORWARDED_FOR"); 
    else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) 
        $ip = getenv("REMOTE_ADDR"); 
    else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")) 
        $ip = $_SERVER['REMOTE_ADDR']; 
    else 
        $ip = "unknown"; 
    return($ip); 
} 
function getIPLoc_sina($queryIP){ 
    $url = 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip=' . $queryIP; 
    $ch = curl_init($url);//初始化url地址 
    curl_setopt($ch, CURLOPT_ENCODING, 'utf8');//设置一个cURL传输选项 
    curl_setopt($ch, CURLOPT_TIMEOUT, 10); 
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // 获取数据返回 
    $location = curl_exec($ch);//执行一个cURL会话 
    $location = json_decode($location);//对 JSON 格式的字符串进行编码 
    curl_close($ch);//关闭一个cURL会话 
    $loc = ""; 
	print_r( $location);


    if ($location === FALSE) return "地址不正确"; 
    if (empty($location->desc)) { 
        $loc = $location->city;
    } else { $loc = $location->province;} 
    return $loc; 
} 
 
$SA_IP=getip();
$city = getIPLoc_sina($SA_IP);
echo "<br />";
echo "<br />";
echo "<br />";
echo "<br />";
echo "<br />";
echo "<br />";
echo "<br />";
echo "<br />";
echo $SA_IP;
echo "<br />";
echo $city;
?>
</body>
</html>