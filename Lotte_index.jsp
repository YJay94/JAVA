<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <base href="/">

    <meta charset="utf-8">
    <meta name="Referrer" content="origin">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=1440">
    <meta name="description" content="나에게 딱 맞는 상품을, 나에게 딱 맞는 가격으로! 쇼핑의 모든 것 LOTTE ON!">
    <title>롯데ON</title>
    <meta property="og:title" content="롯데ON">
    <meta property="og:url" content="https://www.lotteon.com/p/display/main/lotteon?mall_no=1">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="롯데ON">
    <meta property="og:description" content="나에게 딱 맞는 상품을, 나에게 딱 맞는 가격으로! 쇼핑의 모든 것 LOTTE ON!">
    <meta property="og:image" content="https://static.lotteon.com/p/common/assets/favicon/1/metaimg-1000.png">
    <meta name="google-site-verification" content="Ce-MYL0xVo1OM255ganW8E5IT4jdhepBdPMQEpbtMkM">
    <meta name="naver-site-verification" content="c481154d0d73a21c8acd8353cc07bba345e5db37">

    <!-- Include Area -->
    <!-- generics -->
    <link rel="icon" sizes="32x32" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-32.png">
    <link rel="icon" sizes="57x57" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-57.png">
    <link rel="icon" sizes="76x76" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-76.png">
    <link rel="icon" sizes="96x96" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-96.png">
    <link rel="icon" sizes="128x128" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-128.png">
    <link rel="icon" sizes="192x192" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-192.png">
    <link rel="icon" sizes="228x228" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-228.png">

    <!-- Windows 8 IE 10-->
    <meta name="msapplication-TileColor" content="#FFFFFF">
    <meta name="msapplication-TileImage" href="https://static.lotteon.com/p/common/assets/favicon/1/favicon-144.png">

    <!-- Windows 8.1 + IE11 and above -->
    <meta name="msapplication-config" content="https://static.lotteon.com/p/common/assets/favicon/1/browserconfig.xml">

    <!-- Preload -->
    <link href="https://static.lotteon.com/p/common/foCommon/foCommon.v1.0.css?202007141030" rel="preload" as="style">
    <link href="https://static.lotteon.com/p/display/plugin/displayModules.v2.0.css?1654144377804" rel="preload"
        as="style">
    <link href="https://static.lotteon.com/p/member/plugin/memberDeliveryPopup.v1.0.css" rel="preload" as="style">
    <!-- <link href="https://static.lotteon.com/p/product/plugin/productCartLayer.v1.0.css" rel="preload" as="style"> -->
    <link href="https://static.lotteon.com/p/delivery/plugin/DeliveryPrmmSpotPop.v1.0.css" rel="preload" as="style">
    <link href="https://static.lotteon.com/p/delivery/plugin/DeliveryMartSpotPop.v0.8.css" rel="preload" as="style">

    <link href="https://static.lotteon.com/p/common/foCommon/vue.min.js" rel="preload" as="script">
    <link href="https://static.lotteon.com/p/common/foCommon/foCommon.v1.0.umd.min.js?202007141030" rel="preload"
        as="script">
    <link href="https://static.lotteon.com/p/display/plugin/displayModules.v2.0.umd.min.js?1654144377804" rel="preload"
        as="script">

    <link href="https://static.lotteon.com/p/member/plugin/memberDeliveryPopup.v1.0.umd.min.js" rel="preload"
        as="script">
    <!-- <link href="https://static.lotteon.com/p/product/plugin/productCartLayer.v1.0.umd.min.js" rel="preload" as="script"> -->
    <link href="https://static.lotteon.com/p/delivery/plugin/DeliveryFreshSpotPop.v1.0.umd.min.js" rel="preload"
        as="script">
    <link href="https://static.lotteon.com/p/delivery/plugin/DeliveryPrmmSpotPop.v1.0.umd.min.js" rel="preload"
        as="script">
    <link href="https://static.lotteon.com/p/delivery/plugin/DeliveryMartSpotPop.v0.8.umd.min.js" rel="preload"
        as="script">
    <link href="https://cdn.fyusion.com/assets/fyu-viewer-latest.js" rel="preload" as="script">

    <!-- Page Preload-->
    <link rel="preload" as="style"
        href="https://static.lotteon.com/p/display/assets/css/chunk-display/main/lotteon-vendors.css">
    <link rel="preload" as="style"
        href="https://static.lotteon.com/p/display/main/lotteon/assets/css/main.e4547c98.css">
    <link rel="preload" as="script"
        href="https://static.lotteon.com/p/display/main/lotteon/assets/js/chunk-vendors.47ae84c0.js">
    <link rel="preload" as="script" href="https://static.lotteon.com/p/display/main/lotteon/assets/js/main.33cf2b09.js">

    <!-- Page CSS-->
    <link rel="stylesheet"
        href="https://static.lotteon.com/p/display/assets/css/chunk-display/main/lotteon-vendors.css">
    <link rel="stylesheet" href="https://static.lotteon.com/p/display/main/lotteon/assets/css/main.e4547c98.css">

    <!-- CSS -->
    <link rel="stylesheet" href="https://static.lotteon.com/p/common/foCommon/foCommon.v1.0.css?202007141030">
    <!-- Module Plugin -->
    <link rel="stylesheet" href="https://static.lotteon.com/p/display/plugin/displayModules.v2.0.css?1654144377804">

    <link rel="stylesheet" href="https://static.lotteon.com/p/member/plugin/memberDeliveryPopup.v1.0.css">
    <!-- <link rel="stylesheet" href="https://static.lotteon.com/p/product/plugin/productCartLayer.v1.0.css" /> -->
    <link rel="stylesheet" href="https://static.lotteon.com/p/delivery/plugin/DeliveryPrmmSpotPop.v1.0.css">
    <link rel="stylesheet" href="https://static.lotteon.com/p/delivery/plugin/DeliveryMartSpotPop.v0.8.css">
    <!-- 기타 이 페이지에서만 사용되는 요소는 하단에 선언 -->

</head>

<body>
    <div id="app">
        

    </div>
    <input type="hidden" id="memInfo" name="memInfo" value="{&quot;adltAthnYn&quot;:&quot;N&quot;}">
    <input type="hidden" id="chCsfCd" name="chCsfCd" value="">

    <!-- Page JS-->
    <!-- JS -->
    <script src="https://static.lotteon.com/p/common/foCommon/vue.min.js"></script>
    <script src="https://static.lotteon.com/p/common/foCommon/foCommon.v1.0.umd.min.js?202007141030"></script>
    <!-- Module Plugin -->
    <script src="https://static.lotteon.com/p/display/plugin/displayModules.v2.0.umd.min.js?1654144377804"></script>
    <script src="https://static.lotteon.com/p/member/plugin/memberDeliveryPopup.v1.0.umd.min.js"></script>
    <!-- <script src="https://static.lotteon.com/p/product/plugin/productCartLayer.v1.0.umd.min.js"></script> -->
    <script src="https://static.lotteon.com/p/delivery/plugin/DeliveryFreshSpotPop.v1.0.umd.min.js"></script>
    <script src="https://static.lotteon.com/p/delivery/plugin/DeliveryPrmmSpotPop.v1.0.umd.min.js"></script>
    <script src="https://static.lotteon.com/p/delivery/plugin/DeliveryMartSpotPop.v0.8.umd.min.js"></script>
    <script src="https://cdn.fyusion.com/assets/fyu-viewer-latest.js"></script>
    <script src="https://static.lotteon.com/p/display/main/lotteon/assets/js/chunk-vendors.47ae84c0.js"></script>
    <script src="https://static.lotteon.com/p/display/main/lotteon/assets/js/main.33cf2b09.js"></script>
    <script>

        var section1s = document.getElementsByClassName("accountArea");
        var section1 = section1s.item(0);
        var section2 = section1.getElementsByTagName("a");
        el = section2[0];
        el.href = "http://localhost:8080/BBS/Lotte_login.jsp"

    </script>
</body>

</html>