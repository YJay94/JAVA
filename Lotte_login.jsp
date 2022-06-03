<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="Referrer" content="origin">
  <meta http-equiv="Content-Script-Type" content="text/javascript">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=1440">

  <meta name="description" content="나에게 딱 맞는 상품을, 나에게 딱 맞는 가격으로! 쇼핑의 모든 것 LOTTE ON!">
  <title>롯데ON 로그인 : 롯데ON</title>
  <meta property="og:title" content="롯데ON 로그인 : 롯데ON">
  <meta property="og:url" content="https://www.lotteon.com/p/member/login/common">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="롯데ON">
  <meta property="og:description" content="나에게 딱 맞는 상품을, 나에게 딱 맞는 가격으로! 쇼핑의 모든 것 LOTTE ON!">
  <meta property="og:image" content="https://static.lotteon.com/p/common/assets/favicon/1/metaimg-1000.png">

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

  <!-- CSS -->
  <link rel="stylesheet" href="//static.lotteon.com/p/common/foCommon/foCommon.v1.0.css?20200713110000">

  <!-- JS -->
  <script src="//static.lotteon.com/p/common/foCommon/vue.min.js"></script>
  <script src="//static.lotteon.com/p/common/foCommon/foCommon.v1.0.umd.min.js"></script>

  <!-- 기타 이 페이지에서만 사용되는 요소는 하단에 선언 -->

  <link href="//code.jquery.com/jquery-3.4.1.min.js" rel="preload" as="script">
  <link href="//members.lpoint.com/api/js/serialize.object.js" rel="preload" as="script">
  <link href="//members.lpoint.com/api/js/json2.js" rel="preload" as="script">
  <link href="//members.lpoint.com/api/js/lotte.sso.api.js" rel="preload" as="script">
  <!--소셜 네이버-->
  <link href="//static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" rel="preload" as="script">
  <!-- 소셜 카카오-->
  <link href="//developers.kakao.com/sdk/js/kakao.min.js" rel="preload" as="script">
  <!-- 소셜 페이스북-->
  <link href="//connect.facebook.net/ko_KR/sdk.js" id="facebook-jssdk" rel="preload" as="script">


  <script src="//code.jquery.com/jquery-3.4.1.min.js" sync></script>
  <script src="//members.lpoint.com/api/js/serialize.object.js" sync></script>
  <script src="//members.lpoint.com/api/js/json2.js" sync></script>
  <script src="//members.lpoint.com/api/js/lotte.sso.api.js" sync></script>
  <!-- 소셜 네이버-->
  <script src="//static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" sync></script>
  <!-- 소셜 카카오-->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js" sync></script>
  <!-- 소셜 페이스북-->
  <script src="//connect.facebook.net/ko_KR/sdk.js" sync></script>

  <link href="//static.lotteon.com/p/member/login/common/assets/css/main.c738d892.css" rel="preload" as="style">
  <link href="//static.lotteon.com/p/member/login/common/assets/js/chunk-vendors.e9ca4f07.js" rel="preload" as="script">
  <link href="//static.lotteon.com/p/member/login/common/assets/js/main.d15ed84f.js" rel="preload" as="script">
  <link href="//static.lotteon.com/p/member/login/common/assets/css/main.c738d892.css" rel="stylesheet">
</head>

<body class="app">

  <div id="mainLayout" class="wrap emptySide">
    <div id="skipNav"><a href="#content">본문 바로가기</a></div>
    <!---->
    <!---->
    <nav role="navigation"></nav>
    <div class="dimContainer innerContent"></div>
    <main id="content" role="main" class="contentArea on">
      <div class="loginContent">
        <div class="loginWrap lotteOn">
          <h2 class="titLogin">
            로그인
          </h2>
          <form method="post" action="Lotte_loginAction.jsp">
            <div class="section input loginForm">
              <div class="inputSet login">
                <div><input type="hidden" id="tempid" name="tempid"><input name="userID" type="text"
                    placeholder="아이디 또는 이메일 아이디" id="inId" title="아이디 또는 이메일 입력">
                  <div class="alertTxt">
                    <!---->
                  </div>
                </div>
                <div class="inputSet login">
                  <div class="passwordWrap"><input type="hidden" id="tempPwd" name="tempPwd"><input id="Password"
                      type="password" placeholder="8~15자리 영문+숫자+특수문자 조합" name="userPassword" autocomplete="new-password"
                      title="비밀번호 입력 (8~15자리 영문+숫자+특수문자 조합)"><button type="button"><span class="blind">비밀번호 보이기
                        토글버튼</span></button></div>
                  <div class="alertTxt">
                    <!---->
                  </div>
                </div>
              </div>
              <div class="btnConfirmWrap"><button data-v-46bd225e="" type="submit"
                  class="hasBgColor bgColorRed util sizeFull alignLeft"><span data-v-46bd225e="" class="inner">
                    <!----><span data-v-46bd225e="" class="">
                      로그인하기
                    </span>
                    <!----></span></button></div>
              <div class="autoLogin">
                <div class="checkboxSet"><input id="checkbox1" type="checkbox" name="checkbox1" checked="checked"><label
                    for="checkbox1">아이디 저장</label></div><input id="checkbox11" type="hidden" name="checkbox" value="N">
                <div class="btnFindIdPasswordWrap"><button class="findIdPassword">
                    ID/PW 찾기
                  </button><button class="register">
                    회원가입
                  </button></div>
              </div>
              <div class="socialSignupWrap"><button data-v-46bd225e=""
                  class="kakaoLoginBtn hasBgColor hasIcon bgColorKakao util sizeFull alignLeft"><span data-v-46bd225e=""
                    class="inner"><span data-v-46bd225e="" class="icon kakaoLogo"></span><span data-v-46bd225e=""
                      class="">
                      카카오로 시작하기
                    </span>
                    <!----></span></button><button data-v-46bd225e=""
                  class="naverLoginBtn hasBgColor hasIcon bgColorNaver util sizeFull alignLeft"><span data-v-46bd225e=""
                    class="inner"><span data-v-46bd225e="" class="icon naverLogo"></span><a data-v-46bd225e="" href="#"
                      class="naver" style="display: none;"></a>
                    네이버로 시작하기
                    <!----></span></button>
                <!----><button data-v-46bd225e="" class="otherLoginBtn util sizeFull alignLeft"><span data-v-46bd225e=""
                    class="inner">
                    <!----><span data-v-46bd225e="" class="">
                      휴대폰으로 로그인
                    </span>
                    <!----></span></button>
                <!---->
              </div>
            </div>
          </form>
        </div>
      </div>
      <div id="modals-container"></div>
    </main>
    <div class="layoutUtil on" style="right: 85px; bottom: 27px;">
      <!---->
      <!---->
    </div>
    <!---->
    <!---->
  </div>

  <input type="hidden" id="rtnUrl" name="rtnUrl">
  <input type="hidden" id="encodingData" name="encodingData"
    value="{&quot;mphnSltnCd&quot;:&quot;10&quot;,&quot;m&quot;:&quot;checkplusSerivce&quot;,&quot;sMessage&quot;:&quot;&quot;,&quot;EncodeData&quot;:&quot;AgAFQlA5MzJ+35NJoOy9Hf6scQwUAS73NNllduU+7BHxk60/5ToAQiAXcR7knNgMR9XWMPkVeHttW+UcU4WnCijSDvxdlvPni02jSE/KsIeHdDIG9uAALvG09YT3kbQUH4Lhy0hgMifqZPY1Fj3dGB+HaN3GEwzR+sDJjB9UwzH/HgS6npxQ1Uoq9l5TYgDNr8Qu39bEzBQi4Bw+5UEFjqL/NIij6/C5/L1VNVeaAhVGD+bx/RokoJUHcbrbvtbqNUOKUkl66iL8YdhB7C3gcNF4WielI/RK0i9iN6kpii4hMUZ1R/EDwYVyT1OdWIGoDRkSPn430DLLpUeHEFr5i7EPBgkcTekpDpAC3W5N1VC9RuDXwtFIlpqhM8d+Rrn2lPNs/vFDkES/VyUpbcLve7gj1U7iyv1JVv4yccI/uNy8tOKZMRJ8R6ikdMbcmQDGcLMsSBbEFj4LcGrnSBPgO5iC8Y5v2OwsE/yTgkpqa9QzO1BtNsgCa2pxsQj4V2tInyK+aLunaBxfkvQPDHnSjGdKbdSTjhSO&quot;}">
  <input type="hidden" id="mallNoYN" name="infwMallNoYN" value="N">
  <input type="hidden" id="in_inId" name="in_inId">
  <script type="text/javascript" src="//static.lotteon.com/p/member/login/common/assets/js/chunk-vendors.e9ca4f07.js">
  </script>
  <script type="text/javascript" src="//static.lotteon.com/p/member/login/common/assets/js/main.d15ed84f.js"></script>




  <script>
    _satellite["_runScript1"](function (event, target, Promise) {
      var curPV = _satellite.cookie.get("pv_count_session");

      if (curPV) {
        curPV = parseInt(curPV) + 1;
      } else {
        curPV = 1;
      }

      _satellite.cookie.set("pv_count_session", curPV);
    });
  </script>
  <script>
    _satellite["_runScript2"](function (event, target, Promise) {
      document.addEventListener(adobe.target.event.REQUEST_SUCCEEDED, function (e) {
        var tokens = e.detail.responseTokens;
        window.at_evt_all = e;
        window.at_res_all = e.detail;
        window.at_res_tokens = tokens;

        if (isEmpty(tokens)) {
          return;
        }

        var uniqueTokens = distinct(tokens);
        uniqueTokens.forEach(function (token) {
          _satellite.at_impression_idx = _satellite.at_impression_idx ? _satellite.at_impression_idx + 1 :
            1;
          var str_impression_idx = _satellite.at_impression_idx.toString();
          if (str_impression_idx.length == 2) {
            str_impression_idx = "0" + _satellite.at_impression_idx.toString();
          } else if (str_impression_idx.length == 1) {
            str_impression_idx = "00" + _satellite.at_impression_idx.toString();
          }
          dataLayer.push({
            'event': 'at_activity_view_' + str_impression_idx,
            'activity_id': token["activity.id"],
            'activity_name': token["activity.name"],
            'experience_type': 'AT',
            'offer_location': e.detail.mbox,
            'recipe_id': token["experience.id"],
            'recipe_name': token["experience.name"],
            'mb_no': token["profile.mbNo"],
            'mall_no': _satellite.getVar("mall_no")
          });
          adobe.target.trackEvent({
            'mbox': token["activity.id"] + "_impression"
          });
        });

      });

      function isEmpty(val) {
        return (val === undefined || val == null || val.length <= 0) ? true : false;
      }

      function key(obj) {
        return Object.keys(obj)
          .map(function (k) {
            return k + "" + obj[k];
          })
          .join("");
      }

      function distinct(arr) {
        var result = arr.reduce(function (acc, e) {
          acc[key(e)] = e;
          return acc;
        }, {});

        return Object.keys(result)
          .map(function (k) {
            return result[k];
          });
      }

    });
  </script>
  <script>
    _satellite["_runScript3"](function (event, target, Promise) {
      _satellite.ltonStamp = function (action, param, callback) {
        _satellite.ltonStampResult = false;
        _satellite.track(action, param); // direct call 
        // wait till result updated.
        let at_intervalCnt = 0;
        let at_interval = setInterval(function () {
          if (_satellite.ltonStampResult) {
            _satellite.logger.warn("interval - set result");
            clearInterval(at_interval);
            callback(_satellite.ltonStampResult);
          } else {
            _satellite.logger.warn("interval - go next");
            at_intervalCnt += 1;
            if (at_intervalCnt > 50) {
              clearInterval(at_interval);
              callback(false);
            }
          }
        }, 100);
      }
    });
  </script>
  <script>
    _satellite["_runScript4"](function (event, target, Promise) {
      // Clear Member API call record
      if (document.cookie.indexOf("fo_mno") == -1) {
        _satellite.cookie.remove("adb_member");
      }


    });
  </script>
  <script>
    _satellite["_runScript5"](function (event, target, Promise) {
      _satellite.logger.warn("Mbox call Fired");
      var planShopId = _satellite.getVar("planShopID"),
        evNo = _satellite.getVar("evNo");
      adobe.target.trackEvent({
        mbox: "lotte-event-indexing",
        params: {
          "entity.id": planShopId ? "planDetail_" + planShopId : evNo
        }
      });
    });
  </script>
  <script>
    _satellite["_runScript6"](function (event, target, Promise) {
      window.adb_getCouponCount = function () {
        var xhttp = new XMLHttpRequest;
        xhttp.onreadystatechange = function () {
            if (4 == this.readyState && 200 == this.status) try {
              window.adb_couponCount = eval("(" + this.responseText + ")"), _satellite.track("setCouponCount",
                adb_couponCount)
            } catch (t) {
              window.adb_couponCount = {}
            }
          }, xhttp.open("GET", _satellite.getVar("api_host") +
            "/promotion/v1/api/coupon/selectMemberPossessionCouponCount?mbNo=" + _satellite.getVar("member.fomno")
          ), xhttp.setRequestHeader("Content-type", "application/json"), xhttp.withCredentials = !0, xhttp
          .send()
      };
    });
  </script>
  <script>
    _satellite["_runScript7"](function (event, target, Promise) {
      for (var preLoadEvents = dataLayer.filter((function (a) {
          return !!a.event
        })), adb_i = 0; adb_i < preLoadEvents.length; adb_i++) adbLayer.push(preLoadEvents[adb_i]);
    });
  </script>
  <div id="fb-root" class=" fb_reset">
    <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
      <div></div>
    </div>
  </div>
  <script type="text/javascript" id="gtm_reco_normal">
    function getCookie(b) {
      var a, c = document.cookie.split(";");
      for (a = 0; a < c.length; a++) {
        var d = c[a].substr(0, c[a].indexOf("\x3d"));
        var e = c[a].substr(c[a].indexOf("\x3d") + 1);
        d = d.replace(/^\s+|\s+$/g, "");
        if (d == b) return unescape(e)
      }
    }

    function callTrafficCollection(b) {
      b = "d\x3d" + encodeURIComponent(JSON.stringify(b));
      try {
        var a;
        window.XMLHttpRequest ? a = new XMLHttpRequest : window.ActiveXObject && (a = new ActiveXObject(
          "Microsoft.XMLHTTP"));
        a.open("POST", google_tag_manager["GTM-P2TSWP2"].macro(268));
        a.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset\x3dUTF-8");
        a.onreadystatechange = function (c) {};
        a.send(b)
      } catch (c) {}
    }
    (function () {
      var b = /%/gi,
        a = google_tag_manager["GTM-P2TSWP2"].macro(269),
        c = google_tag_manager["GTM-P2TSWP2"].macro(270),
        d = google_tag_manager["GTM-P2TSWP2"].macro(271),
        e = google_tag_manager["GTM-P2TSWP2"].macro(272),
        f = google_tag_manager["GTM-P2TSWP2"].macro(273),
        g = google_tag_manager["GTM-P2TSWP2"].macro(274);
      null != a && (a = a.replace(b, "percent"));
      null != c && (c = c.replace(b, "percent"));
      null != d && (d = d.replace(b, "percent"));
      null != e && (e = e.replace(b, "percent"));
      null != f && (f = f.replace(b, "percent"));
      null != g && (g = g.replace(b, ""));
      b = new Date;
      a = {
        fo_ltmb_onl_cno: getCookie("fo_ltmb_onl_cno"),
        fo_ltmb_cno: getCookie("fo_ltmb_cno"),
        fo_mno: getCookie("fo_mno"),
        ga: getCookie("_ga"),
        ga_session: getCookie("_ga_4D4NCCP4FX"),
        site_no: getCookie("site_no"),
        mall_no: getCookie("mall_no"),
        fo_fs_sno: getCookie("fo_fs_sno"),
        fo_pr_sno: getCookie("fo_pr_sno"),
        fo_mt_sno: getCookie("fo_mt_sno"),
        infw_mdia_cd: getCookie("infw_mdia_cd"),
        aCode: google_tag_manager["GTM-P2TSWP2"].macro(275),
        dp_infw_cd: g,
        keyword: a,
        brd_shop_cd: google_tag_manager["GTM-P2TSWP2"].macro(276),
        brd_shop_nm: google_tag_manager["GTM-P2TSWP2"].macro(277),
        cate_shop_cd: google_tag_manager["GTM-P2TSWP2"].macro(278),
        cate_shop_nm: google_tag_manager["GTM-P2TSWP2"].macro(279),
        spdp_no: google_tag_manager["GTM-P2TSWP2"].macro(280),
        dshop_no: google_tag_manager["GTM-P2TSWP2"].macro(282),
        brd_no: google_tag_manager["GTM-P2TSWP2"].macro(284),
        brd_nm: google_tag_manager["GTM-P2TSWP2"].macro(285),
        tr_grp_cd: google_tag_manager["GTM-P2TSWP2"].macro(286),
        tr_no: google_tag_manager["GTM-P2TSWP2"].macro(288),
        lrtr_no: google_tag_manager["GTM-P2TSWP2"].macro(289),
        pd_no: google_tag_manager["GTM-P2TSWP2"].macro(290),
        pd_nm: c,
        sitm_no: google_tag_manager["GTM-P2TSWP2"].macro(291),
        sitm_nm: d,
        spd_no: google_tag_manager["GTM-P2TSWP2"].macro(292),
        spd_nm: e,
        itm_no: google_tag_manager["GTM-P2TSWP2"].macro(293),
        itm_nm: f,
        scat_no: google_tag_manager["GTM-P2TSWP2"].macro(294),
        scat_lcsf_no: google_tag_manager["GTM-P2TSWP2"].macro(295),
        scat_mcsf_no: google_tag_manager["GTM-P2TSWP2"].macro(296),
        scat_scsf_no: google_tag_manager["GTM-P2TSWP2"].macro(297),
        scat_dcsf_no: google_tag_manager["GTM-P2TSWP2"].macro(298),
        apiId: google_tag_manager["GTM-P2TSWP2"].macro(299),
        abId: google_tag_manager["GTM-P2TSWP2"].macro(300),
        deal_no: google_tag_manager["GTM-P2TSWP2"].macro(301),
        deal_spd_no: google_tag_manager["GTM-P2TSWP2"].macro(302),
        datetime: b.getFullYear() + "-" + (b.getMonth() + 1) + "-" + b.getDate() + " " + b.getHours() + ":" + b
          .getMinutes() + ":" + b.getSeconds()
      };
      callTrafficCollection(a)
    })();
  </script>
  <script>
    _satellite["_runScript8"](function (event, target, Promise) {
      try {
        adbLayer.push(dataLayer[dataLayer.length - 1])
      } catch (a) {
        _satellite.logger.error("adbLayer Push Error ->" + a)
      }
    });
  </script>
</body>

</html>