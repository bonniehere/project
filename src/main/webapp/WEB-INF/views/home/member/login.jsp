<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta http-equiv="Expires" content="-1">
            <meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
	<title>중앙대학교광명병원 | 로그인</title>
	<meta name="description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta name="keywords" content="중앙대학교의료원, 중앙대학교병원, 중앙대학교광명병원, 진료과, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 고객서비스, 처방정보, 건강증진센터, 증명서발급">
	<meta name="title" content="중앙대학교광명병원">
	<meta property="og:site_name" content="중앙대학교광명병원">
	<meta property="og:title" content="중앙대학교광명병원">
	<meta property="og:description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	
	<!-- <link rel="shortcut icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/default.css?ver=20230220">
   <link type="text/css" rel="stylesheet" href="/common/front/home/css/responsive.css?ver=20230905">
   <link type="text/css" rel="stylesheet" href="/common/front/home/css/swiper-bundle.min.css?ver=1">
   <link type="text/css" rel="stylesheet" href="/common/front/home/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/intro.css?ver=1">
	<script type="text/javascript" src="/common/front/home/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="/common/front/home/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/common/front/home/js/design.js"></script>
	<script type="text/javascript" src="/common/front/home/js/swiper.min.js"></script>
	<script type="text/javascript" src="/common/front/home/js/rolling.js"></script>
	<script type="text/javascript" src="/common/front/home/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="/common/front/home/js/scrolloverflow.js"></script>
	<script type="text/javascript" src="/common/front/home/js/fullpage.js"></script>
	<script type="text/javascript" src="/common/front/home/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="/common/front/home/js/common.js"></script>  -->
	
	<link rel="stylesheet" href="../../../../resources/css/constant01_log.css?after" />
	
	<!-- 여기서부터 가져온 css 적용하는 칸 (로그인폼임) -->
	
	
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css?ver=20230220">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/responsive.css?ver=20230905">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/intro.css?ver=1">
	
	
	<!-- 여기서부터 가져온 js 적용하는 칸 (상단 메뉴) -->
	
	<script type="text/javascript" src="../../../../resources/js/common.js"></script>
	<script type="text/javascript" src="../../../../resources/js/design.js"></script>
	<script type="text/javascript" src="../../../../resources/js/fullpage.js"></script>
	<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/rolling.js"></script>
	<script type="text/javascript" src="../../../../resources/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="../../../../resources/js/scrolloverflow.js"></script>
	<script type="text/javascript" src="../../../../resources/js/swiper.min.js"></script>
	
	
	
	
	<script type="text/javascript">
		if( window.location.href.indexOf('www.cauhs.or.kr') > -1){
			location.href='https://ch.cauhs.or.kr/group/';
		}
		//네이버 발전후원회 검색결과용 강제 링크
		if( window.location.href.indexOf('/home/conts/103008001001000.do') > -1 || window.location.href.indexOf('/home/conts/103008002002000.do') > -1){
			location.href='https://gh.cauhs.or.kr/fund/';
		}
		// ie로 접속할 경우
		if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
			window.location = 'microsoft-edge:' + window.location;

			setTimeout(function() {
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
			}, 1);

		}

		function fn_ValidateSearchDate(startId, endId) {
			var sStart = $("#" + startId).val();
			var sEnd = $("#" + endId).val();
			if (sStart != "" && sStart != undefined && sEnd != "" && sEnd != undefined) {
				//시작날짜가 종료날짜보다 이후인 경우
				if (Number(sStart.replaceAll("-", "")) > Number(sEnd.replaceAll("-", ""))) {
					alert("시작일자가 종료일자보다 미래일 수 없습니다.");
					return false;
				} else {
					return true;
				}
			}
			return true;
		}
		//통합검색
		/*
		function fn_goMenu(menuUrl){
			var refererUrl = menuUrl;
			if(menuUrl == "/home/medicine/kimsPop.do"){
				G_PostPopupOpen("kimsPop","/home/medicine/kimsPop.do", 850, 700, {});
			}else if(menuUrl == "/home/introduce/floor0Pop.do"){
				G_PostPopupOpen("floorPop","/home/introduce/floor0Pop.do", window.screen.width, window.screen.height, {});
			}else{
				var hspCd = "G";
				$("body").append("<form id='hspForm' name='hspForm' method='post'><input type='hidden' id='headHspCd' name='headHspCd' value='"+hspCd+"' /><input type='hidden' id='refererUrl' name='refererUrl' value='"+menuUrl+"'></form>");
				$("#hspForm").attr("action", menuUrl);
				$("#hspForm").submit();
			}
		}
		*/
		function fn_HealthBoard(sitePath, boardMngNo, boardNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='siteCd' value='001000000'/>";
			formTag += "<input name='boardMngNo' value='"+boardMngNo+"'/>";
			formTag += "<input name='boardNo' value='"+boardNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr("action", "/"+sitePath+"/board/all/"+boardMngNo+"_View.do");
			$("#hspForm").submit();
		}
		function fn_ThanksDetail(boardNo,boardTp,boardSeqNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='boardNo' value='"+boardNo+"'/>";
			formTag += "<input name='boardTp' value='"+boardTp+"'/>";
			formTag += "<input name='boardSeqNo' value='"+boardSeqNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr("action","/home/board/boardClientThanksView.do").submit();
		}
		function fn_ProfViewMoveReserve(deptNo, profNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='deptNo' value='"+deptNo+"'/>";
			formTag += "<input name='profNo' value='"+profNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr({"action":"/home/reserveNew/resvOnline.do","target":"_self"}).submit();
		}
		//자세히보기.MOOK.2022.04.04.Max해상도 : FullHD
		function fn_DeatilPop(sitePath,deptNo,profNo, empNo){
			var array = {"sitePath":sitePath,"deptNo":deptNo,"profNo":profNo,"empNo":empNo};
			//alert(window.screen.width+"::"+window.screen.height);
			var popWidth  = 0;
			var popHeight = 0;
			var screenWidth  = window.screen.width;
			var screenHeight = window.screen.height;
			if( screenWidth > 1980 ){
				popWidth  = 1980;
				popHeight = 1080;
			}else{
				popWidth  = screenWidth;
				popHeight = screenHeight;
			}
			G_PostPopupOpen("ProfDetailPop","/"+sitePath+"/medical/profView.do?deptNo="+deptNo+"&profNo="+profNo+"&empNo="+empNo+"",popWidth,popHeight,array);
		}
		//엔터 기능 제한
		$(document).ready(function() {
			$("form").append("<input type='hidden' id='headHspCd' name='headHspCd' value='G' />");
			
			$("#mainKeyWord").keydown(function(key){
				if( key.keyCode == 13 ){
					fn_TotalSearch('mainKeyWord');
					return false;
				}
			});
			$("#subKeyWord").keydown(function(key){
				if( key.keyCode == 13 ){
					fn_TotalSearch('subKeyWord');
					return false;
				}
			});

			$(document).on("click", ".plus", function(){
				return false;
			});
			
			$("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
		        	G_Util.setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		        	G_Util.deleteCookie("key");
		        }
		    });
		});

			// 통합검색 레이어 열기
			function searchOpen() {
				$('.layer_search_wrapper').show();
			}

			// 통합검색 레이어 닫기
			function searchClose() {
				$('.layer_search_wrapper').hide();
			}

			function fn_TotalSearch(obj){
				if($.type(obj) != 'string'){
					if( obj != undefined && $(obj).html().indexOf('#') != -1 ){
						var searchWord = $(obj).html().replaceAll("#","");
						$("#totalWord").val(searchWord);
					}
				}
				if( obj == 'mainKeyWord'){
					if($("#mainKeyWord").val() == "" ){
						alert("검색어를 입력해 주세요.");
						$("#mainKeyWord").focus();
						return false;
					}else if( $("#mainKeyWord").val().length < 2 ){
						alert("검색어를 두글자 이상 입력해 주세요.");
						$("#mainKeyWord").focus();
						return false;
					}else{
						$("#totalWord").val($("#mainKeyWord").val());
					}
				}else if(obj == 'subKeyWord'){
					if($("#subKeyWord").val() == "" ){
						alert("검색어를 입력해 주세요.");
						$("#subKeyWord").focus();
						return false;
					}else if( $("#subKeyWord").val().length < 2 ){
						alert("검색어를 두글자 이상 입력해 주세요.");
						$("#subKeyWord").focus();
						return false;
					}else{
						$("#totalWord").val($("#subKeyWord").val());
					}
				}
				$("#searchfrm").attr("action","/home/search/totalList.do").submit();
			}
	</script>
	
	<style>
		.sns_login_wrap .sns_list li{float:left;width:100%;margin-left:1%;text-align:center;box-sizing: border-box;}
	</style>
	<script type="text/javascript" src="/plug-in/c3r/CommonUtil.c3r-custom.js"></script>
	
		
		
	










<meta name="referrer" content="strict-origin-when-cross-origin">
<script src="https://accounts.google.com/gsi/client" async="" defer=""></script>
<script>
	function parseJwt(token){
	    var base64Url   = token.split('.')[1];
	    var base64      = base64Url.replace(/-/g, '+').replace(/_/g, '/');
	    var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
	        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
	    }).join(''));
	    return JSON.parse(jsonPayload);
	}
	function handleCredentialResponse(response) {
		var responsePayload = parseJwt(response.credential);
		var json = {
			"snsLoginType"    : "GG",
			"snsUserId"       : responsePayload.sub,
			"snsUserNickNm"   : responsePayload.given_name,
			"snsUserNm"       : responsePayload.name,
			"snsEmail"        : responsePayload.email,
			"snsGender"       : "",
			"snsAge"          : "",
			"snsBirthday"     : "",
			"snsProfileImage" : ""
		};
		G_Util.newFormSubmit({
			"action" : "/home/member/loginSnsProc.do",
			"param"  : json
		});
	}
	window.onload = function(){
		var pageNm = "login";
		var mode   = "debug";
		if( mode == "debug" ){
			google.accounts.id.initialize({
				client_id  : "603607955702-jjb1jhi57m612u613tg422ds0bvmmsu3.apps.googleusercontent.com",
				callback   : handleCredentialResponse
			});
			if( pageNm == "login" ){
				google.accounts.id.renderButton(
					document.getElementById("googleLoginBtn"),
					{type:"standard",theme:"filled_black",size:"large",shape:"circle",text:"signin_with"}
				);
			}else{
				google.accounts.id.renderButton(
					document.getElementById("googleLoginBtn"),
					{type:"icon",theme:"outline",size:"large",shape:"circle"}
				);
			}
			google.accounts.id.prompt();
		}
	}
</script>


<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
	Kakao.init("499b328fbc50a4b6f7900b6d1f399e7c");
	//카카오 로그인
	function fn_LoginKakao(){
	Kakao.Auth.login({
		success : function(authObj){
			Kakao.API.request({
				url : "/v2/user/me",
				success : function(res){
					//console.log(res.properties);return  false;
					var kakaoUserId     = res.id;
					var kakaoUserNm     = "";
					var kakaoProfileImg = "";
					var kakaoEmail      = "";
					var kakaoBirthDay   = "";
					var kakaoGender     = "";
					if( res.properties != undefined ){
						if( res.properties.nickname != undefined ){
							kakaoUserNm = res.properties.nickname;
						}else{
							kakaoUserNm = "";
						}
							if( res.properties.profile_image != undefined ){
								kakaoProfileImg = res.properties.profile_image;
							}else{
								kakaoProfileImg = "";
							}
						}
						if( res.kakao_account != undefined && res.kakao_account != null ){
							if( res.kakao_account.email != undefined && res.kakao_account.email != null )		kakaoEmail    = res.kakao_account.email;
							if( res.kakao_account.birthday != undefined && res.kakao_account.birthday != null )	kakaoBirthDay = res.kakao_account.birthday;
							if( res.kakao_account.gender != undefined && res.kakao_account.gender != null )		kakaoGender   = res.kakao_account.gender;
						}
						fn_CallbackSNS({
							"snsLoginType"    : "K",
							"snsUserId"       : kakaoUserId,
							"snsUserNm"       : kakaoUserNm,
							"snsEmail"        : kakaoEmail,
							"snsBirthDay"     : kakaoBirthDay,
							"snsGender"       : kakaoGender,
							"snsProfileImage" : kakaoProfileImg
						});
					},
					fail : function(error){
						alert("카카오 회원 정보 연동에 실패하였습니다.\n"+JSON.stringify(error));
					}
				});
			},
			fail : function(err){
				alert("카카오 로그인 설정이 잘못되었습니다.\n"+JSON.stringify(err));
			}
		});
	}
</script>


<script type="text/javascript">
   	function fn_LoginNaver(){
		//alert("준비중인 서비스입니다.\n\n빠른 시일 내에 찾아 뵙도록 하겠습니다.");
		//return false;
		var myWidth  = "1000";
		var myHeight = "750";
		var left     = (screen.width - myWidth) / 2;
        var top      = (screen.height - myHeight) / 4;
	    $("#frm").attr("action","/member/naverLoginGateway.do");
	    $("#frm").attr("method","post");
	    $("#frm").attr("target","NaverLoginPop");
	    window.open("","NaverLoginPop","toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no,copyhistory=no,width="+myWidth+",height="+myHeight+",top="+top+",left="+left);
	    $("#frm").submit();
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("head").append("<meta http-equiv=\"P3P\" content=\"policyref='http://w.about.com/w3c/p3p.xml'\">");
		$("head").append("<meta http-equiv=\"p3p\" content=\"CP='CAO DSP AND SO ' policyref='/w3c/p3p.xml'\">");
		$("head").append("<link rel=\"P3Pv1\" href=\"http://w.about.com/w3c/p3p.xml\" type=\"text/xml\">");
		$("#userId,#userPw").keydown(function(key){
			if( key.keyCode == 13 ){
				fn_CheckForm();
				return false;
			}
		});
		// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	    var key = getCookie("key");
	    $("#userId").val(key);
		if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
	        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	    }
	    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
	            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
	        }else{ // ID 저장하기 체크 해제 시,
	            deleteCookie("key");
	        }
	    });
	});
	function setCookie(cookieName, value, exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	}
	function deleteCookie(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}
	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
	}
	//일반 로그인!
	function fn_CheckForm(){
		if( $("#userId").val() == "" ){
			alert("아이디를 입력해 주세요");
			$("#userId").focus();
			return false;
		}
		if( $("#userPw").val() == "" ){
			alert("비밀번호를 입력해 주세요");
			$("#userPw").focus();
			return false;
		}
		//$("#frm").attr("action","/home/member/loginProc.do").submit();
		G_Util.newFormSubmit({
			"action" : "/home/member/loginProc.do",
			"param"  : {
				"userId" : $("#userId").val().trim(),
				"userPw" : $("#userPw").val(),
				//"refererUrl" : $("#refererUrl").val(),
				"deptNo" : $("#deptNo").val(),
				"profNo" : $("#profNo").val(),
				"loginType" : $("#loginType").val()
			}
		});
	}
	//SNS 로그인 콜백
	function fn_CallbackSNS(json){
		console.log(json);
		if( json != undefined && json != "" && json != null ){
			try{
				/*
				$.each(json,function(key,value){
					$("#frm").append("<input type='hidden' id='"+key+"' name='"+key+"' value='"+value+"'/>");
				});
				$("#frm").attr("action","/home/member/loginSnsProc.do");
				$("#frm").attr("method","post");
				$("#frm").attr("target","");
				$("#frm").submit();
				*/
				G_Util.newFormSubmit({
					"action" : "/home/member/loginSnsProc.do",
					"param"  : json
				});
			}catch(e){alert(e);}
		}else{
			alert("SNS 로그인에 실패하였습니다.");
			return false;
		}
	}
	//SNS 로그인 실패 콜백
	function fn_CallbackSNSFail(json){
		alert("SNS 로그인이 취소되었습니다.\n"+json.error_description);
		return false;
	}
</script>

<meta http-equiv="P3P" content="policyref='http://w.about.com/w3c/p3p.xml'"><meta http-equiv="p3p" content="CP='CAO DSP AND SO ' policyref='/w3c/p3p.xml'"><link rel="P3Pv1" href="http://w.about.com/w3c/p3p.xml" type="text/xml"><meta http-equiv="origin-trial" content="A+N5HpM5gDAUeupaWw3J2yuMrpgH0IC7KtFHAqtmHkW8Vr+dPpJWuOpMNIRh3ybxyoIUKlvDQs7+VGPfYdQ/qQUAAABxeyJvcmlnaW4iOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IkZlZENtQXV0b1JlYXV0aG4iLCJleHBpcnkiOjE2OTE1MzkxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><style id="googleidentityservice_button_styles">.qJTHM{-webkit-user-select:none;color:#202124;direction:ltr;-webkit-touch-callout:none;font-family:"Roboto-Regular",arial,sans-serif;-webkit-font-smoothing:antialiased;font-weight:400;margin:0;overflow:hidden;-webkit-text-size-adjust:100%}.ynRLnc{left:-9999px;position:absolute;top:-9999px}.L6cTce{display:none}.bltWBb{word-break:break-all}.hSRGPd{color:#1a73e8;cursor:pointer;font-weight:500;text-decoration:none}.Bz112c-W3lGp{height:16px;width:16px}.Bz112c-E3DyYd{height:20px;width:20px}.Bz112c-r9oPif{height:24px;width:24px}.Bz112c-uaxL4e{-webkit-border-radius:10px;border-radius:10px}.LgbsSe-Bz112c{display:block}.S9gUrf-YoZ4jf,.S9gUrf-YoZ4jf *{border:none;margin:0;padding:0}.fFW7wc-ibnC6b>.aZ2wEe>div{border-color:#4285f4}.P1ekSe-ZMv3u>div:nth-child(1){background-color:#1a73e8!important}.P1ekSe-ZMv3u>div:nth-child(2),.P1ekSe-ZMv3u>div:nth-child(3){background-image:linear-gradient(to right,rgba(255,255,255,.7),rgba(255,255,255,.7)),linear-gradient(to right,#1a73e8,#1a73e8)!important}.haAclf{display:inline-block}.nsm7Bb-HzV7m-LgbsSe{-webkit-border-radius:4px;border-radius:4px;-webkit-box-sizing:border-box;box-sizing:border-box;-webkit-transition:background-color .218s,border-color .218s;transition:background-color .218s,border-color .218s;-webkit-user-select:none;-webkit-appearance:none;background-color:#fff;background-image:none;border:1px solid #dadce0;color:#3c4043;cursor:pointer;font-family:"Google Sans",arial,sans-serif;font-size:14px;height:40px;letter-spacing:0.25px;outline:none;overflow:hidden;padding:0 12px;position:relative;text-align:center;vertical-align:middle;white-space:nowrap;width:auto}@media screen and (-ms-high-contrast:active){.nsm7Bb-HzV7m-LgbsSe{border:2px solid windowText;color:windowText}}.nsm7Bb-HzV7m-LgbsSe.pSzOP-SxQuSe{font-size:14px;height:32px;letter-spacing:0.25px;padding:0 10px}.nsm7Bb-HzV7m-LgbsSe.purZT-SxQuSe{font-size:11px;height:20px;letter-spacing:0.3px;padding:0 8px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe{padding:0;width:40px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe.pSzOP-SxQuSe{width:32px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe.purZT-SxQuSe{width:20px}.nsm7Bb-HzV7m-LgbsSe.JGcpL-RbRzK{-webkit-border-radius:20px;border-radius:20px}.nsm7Bb-HzV7m-LgbsSe.JGcpL-RbRzK.pSzOP-SxQuSe{-webkit-border-radius:16px;border-radius:16px}.nsm7Bb-HzV7m-LgbsSe.JGcpL-RbRzK.purZT-SxQuSe{-webkit-border-radius:10px;border-radius:10px}.nsm7Bb-HzV7m-LgbsSe.MFS4be-Ia7Qfc{border:none;color:#fff}.nsm7Bb-HzV7m-LgbsSe.MFS4be-v3pZbf-Ia7Qfc{background-color:#1a73e8}.nsm7Bb-HzV7m-LgbsSe.MFS4be-JaPV2b-Ia7Qfc{background-color:#202124;color:#e8eaed}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{height:18px;margin-right:8px;min-width:18px;width:18px}.nsm7Bb-HzV7m-LgbsSe.pSzOP-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{height:14px;min-width:14px;width:14px}.nsm7Bb-HzV7m-LgbsSe.purZT-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{height:10px;min-width:10px;width:10px}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-Bz112c{margin-left:8px;margin-right:-4px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{margin:0;padding:10px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe.pSzOP-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{padding:8px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe.purZT-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c{padding:4px}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-top-left-radius:3px;border-top-left-radius:3px;-webkit-border-bottom-left-radius:3px;border-bottom-left-radius:3px;display:-webkit-box;display:-webkit-flex;display:flex;justify-content:center;-webkit-align-items:center;align-items:center;background-color:#fff;height:36px;margin-left:-10px;margin-right:12px;min-width:36px;width:36px}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf .nsm7Bb-HzV7m-LgbsSe-Bz112c,.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf .nsm7Bb-HzV7m-LgbsSe-Bz112c{margin:0;padding:0}.nsm7Bb-HzV7m-LgbsSe.pSzOP-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{height:28px;margin-left:-8px;margin-right:10px;min-width:28px;width:28px}.nsm7Bb-HzV7m-LgbsSe.purZT-SxQuSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{height:16px;margin-left:-6px;margin-right:8px;min-width:16px;width:16px}.nsm7Bb-HzV7m-LgbsSe.Bz112c-LgbsSe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-radius:3px;border-radius:3px;margin-left:2px;margin-right:0;padding:0}.nsm7Bb-HzV7m-LgbsSe.JGcpL-RbRzK .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-radius:18px;border-radius:18px}.nsm7Bb-HzV7m-LgbsSe.pSzOP-SxQuSe.JGcpL-RbRzK .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-radius:14px;border-radius:14px}.nsm7Bb-HzV7m-LgbsSe.purZT-SxQuSe.JGcpL-RbRzK .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-radius:8px;border-radius:8px}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-bN97Pc-sM5MNb{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-align-items:center;align-items:center;-webkit-flex-direction:row;flex-direction:row;justify-content:space-between;-webkit-flex-wrap:nowrap;flex-wrap:nowrap;height:100%;position:relative;width:100%}.nsm7Bb-HzV7m-LgbsSe .oXtfBe-l4eHX{justify-content:center}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-BPrWId{-webkit-flex-grow:1;flex-grow:1;font-family:"Google Sans",arial,sans-serif;font-weight:500;overflow:hidden;text-overflow:ellipsis;vertical-align:top}.nsm7Bb-HzV7m-LgbsSe.purZT-SxQuSe .nsm7Bb-HzV7m-LgbsSe-BPrWId{font-weight:300}.nsm7Bb-HzV7m-LgbsSe .oXtfBe-l4eHX .nsm7Bb-HzV7m-LgbsSe-BPrWId{-webkit-flex-grow:0;flex-grow:0}.nsm7Bb-HzV7m-LgbsSe .nsm7Bb-HzV7m-LgbsSe-MJoBVe{-webkit-transition:background-color .218s;transition:background-color .218s;bottom:0;left:0;position:absolute;right:0;top:0}.nsm7Bb-HzV7m-LgbsSe:hover,.nsm7Bb-HzV7m-LgbsSe:focus{-webkit-box-shadow:none;box-shadow:none;border-color:#d2e3fc;outline:none}.nsm7Bb-HzV7m-LgbsSe:hover .nsm7Bb-HzV7m-LgbsSe-MJoBVe,.nsm7Bb-HzV7m-LgbsSe:focus .nsm7Bb-HzV7m-LgbsSe-MJoBVe{background:rgba(66,133,244,.04)}.nsm7Bb-HzV7m-LgbsSe:active .nsm7Bb-HzV7m-LgbsSe-MJoBVe{background:rgba(66,133,244,.1)}.nsm7Bb-HzV7m-LgbsSe.MFS4be-Ia7Qfc:hover .nsm7Bb-HzV7m-LgbsSe-MJoBVe,.nsm7Bb-HzV7m-LgbsSe.MFS4be-Ia7Qfc:focus .nsm7Bb-HzV7m-LgbsSe-MJoBVe{background:rgba(255,255,255,.24)}.nsm7Bb-HzV7m-LgbsSe.MFS4be-Ia7Qfc:active .nsm7Bb-HzV7m-LgbsSe-MJoBVe{background:rgba(255,255,255,.32)}.nsm7Bb-HzV7m-LgbsSe .n1UuX-DkfjY{-webkit-border-radius:50%;border-radius:50%;display:-webkit-box;display:-webkit-flex;display:flex;height:20px;margin-left:-4px;margin-right:8px;min-width:20px;width:20px}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-BPrWId{font-family:"Roboto";font-size:12px;text-align:left}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-BPrWId .ssJRIf,.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-BPrWId .K4efff .fmcmS{overflow:hidden;text-overflow:ellipsis}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-BPrWId .K4efff{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-align-items:center;align-items:center;color:#5f6368;fill:#5f6368;font-size:11px;font-weight:400}.nsm7Bb-HzV7m-LgbsSe.jVeSEe.MFS4be-Ia7Qfc .nsm7Bb-HzV7m-LgbsSe-BPrWId .K4efff{color:#e8eaed;fill:#e8eaed}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-BPrWId .K4efff .Bz112c{height:18px;margin:-3px -3px -3px 2px;min-width:18px;width:18px}.nsm7Bb-HzV7m-LgbsSe.jVeSEe .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-top-left-radius:0;border-top-left-radius:0;-webkit-border-bottom-left-radius:0;border-bottom-left-radius:0;-webkit-border-top-right-radius:3px;border-top-right-radius:3px;-webkit-border-bottom-right-radius:3px;border-bottom-right-radius:3px;margin-left:12px;margin-right:-10px}.nsm7Bb-HzV7m-LgbsSe.jVeSEe.JGcpL-RbRzK .nsm7Bb-HzV7m-LgbsSe-Bz112c-haAclf{-webkit-border-radius:18px;border-radius:18px}.L5Fo6c-sM5MNb{border:0;display:block;left:0;position:relative;top:0}.L5Fo6c-bF1uUb{-webkit-border-radius:4px;border-radius:4px;bottom:0;cursor:pointer;left:0;position:absolute;right:0;top:0}.L5Fo6c-bF1uUb:focus{border:none;outline:none}sentinel{}</style><link id="googleidentityservice" type="text/css" media="all" rel="stylesheet" href="https://accounts.google.com/gsi/style"></head>
<body>
	<!-- wrap -->
	<div class="contents_wrapper">
		<!-- 바로가기 -->
		<div class="skip_navi">
            <a href="#">주메뉴로 가기</a>
            <a href="#">본문으로 가기</a>
            <a href="#">하단으로 가기</a>
        </div>
		<!-- /바로가기 -->

		<!-- header -->
		<header>
            <div class="inner fix">

            	<!-- 상단 메뉴-->
				<div class="top_menu_wrap">
					<div class="inner">
						
						<div class="top_link_menu">
							
		                		
		                		
		                			<a href="/home/member/login.do"><span>로그인</span></a>
									<a href="/home/member/join1.do"><span>회원가입</span></a>
		                		
		                	
						</div>
						<div class="top_lang_menu" style="display:none;">
							<a href="javascript:void(0);" onclick="javascript:$('ul.lang_list').toggle();">KOR</a>
							<ul class="lang_list">
								<li><a href="/eng/">ENG</a></li>
								<li><a href="/chi/">CHI</a></li>
								<li><a href="/rus/">RUS</a></li>
								<li><a href="/mon/">MON</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- // 상단 메뉴-->

                <div class="header_lft">
                    <h1 class="logo">
                        <a href="/home.do">
                            <img src="../../resources/img/green_logo.png" alt="중앙대학교 광명병원">
                        </a>
                    </h1>
                </div>
                <div id="gnb" class="gnb_wrap">
                    <ul class="gnb fix">
                    	<li>
<a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">이용안내</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">오시는 길</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101002003000000.do');" class="plus">주차안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/101002003000000.do');">주차안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101002004000000.do');">주차요금 무인정산기</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101002005000000.do');">전기자동차 충전소 </a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/101003000000000.do');">면회안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101004000000000.do');">전화번호안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101006010000000.do');" class="plus">진료비안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/101006010000000.do');">진료비 수납 및 환불안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101006012000000.do');">진료비 하이패스 서비스</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/101010000000000.do');">편의시설안내</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/101014000000000.do');">모바일앱</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과/전문클러스터</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/profList.do');">의료진</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105002001000000.do');" class="plus">암병원</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105002001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105002033000000.do');">조직도</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105002034004000.do');">센터</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/cancerCenterAllIntro.do');">진료과</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');" class="plus">심장뇌혈관병원</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105015008012001.do');">센터</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptProf393.do');">의료진 소개</a></li>
<li><a href="javascript:fn_goMenu('/home/board/67_List.do');">미디어</a></li>
<li><a href="javascript:fn_goMenu('/home/board/68_List.do');">동영상</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/medical/digesAllIntro.do');">소화기센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/allergyAllIntro.do');">호흡기알레르기센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/spineAllIntro.do');">척추센터</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/105016005000000.do');" class="plus">관절센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105016005000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/jointAllIntro.do');">진료과</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/medical/robotAllIntro.do');">로봇수술센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');" class="plus">노년수술전문지원센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105022002000000.do');">진료안내</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');" class="plus">당일수술센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023002000000.do');">수술 전 안내사항</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023003000000.do');">이용안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023004000000.do');">수술 후 안내사항</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');" class="plus">스마트임상시험센터(STC)</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021002000000.do');">조직도</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021005000000.do');">장점 및 차별화</a></li>
<li><a href="javascript:fn_goMenu('/home/board/70_List.do');">임상시험 모집공고</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');" class="plus">IRB</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');">IRB 심의안내</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');" class="plus">지원부서</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');">인재개발실</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptIntro148.do');">의학정보도서관</a></li>
</ul>
</li></ul>
<ul class="fix">
<li><a href="https://gh.cauhs.or.kr/health/" target="_blank">소하검진센터</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">예약/조회</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">온라인 예약</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/106001002000000.do');" class="plus">처음진료 간편예약</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/106001002000000.do');">전화예약</a></li>
<li><a href="javascript:fn_goMenu('/home/reserve/resvOfflineList.do');">간편예약</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/member/userMypageCheck.do');">진료예약 조회</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">진료안내</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">외래진료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102002000000000.do');">입 · 퇴원</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102003000000000.do');">응급진료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102007001000000.do');" class="plus">증명서발급안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/102007001000000.do');">의무기록사본 발급</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102007002000000.do');">제증명 발급</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102007003000000.do');">영상자료 발급 안내</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/102008000000000.do');">병리자료대출안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/guide/prescribe.do');">비급여항목안내</a>
</li>
<li><a href="https://gh.cauhs.or.kr/refer/" target="_blank">진료협력센터</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/102012000000000.do');">호스피스 완화의료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102013000000000.do');">코로나19 검사</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102015001000000.do');" class="plus">수술실 CCTV 안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/102015001000000.do');">촬영 신청</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102015002000000.do');">열람·제공·보관연장 신청</a></li>
</ul>
</li></ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/2_List.do');">병원소개</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');" class="plus">병원소식</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');">공지사항</a></li>
<li><a href="javascript:fn_goMenu('/home/board/all/all/newsBoard4List.do');">미디어</a></li>
<li><a href="javascript:fn_goMenu('/home/board/46_List.do');">입찰공고</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/103002000000000.do');">미션 · 비전</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103012000000000.do');">안전보건경영방침</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');" class="plus">병원현황</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');">시설현황</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005002000000.do');">주요장비</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005003000000.do');">병원 둘러보기</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');" class="plus">병원홍보</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');">홍보동영상</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/103011000000000.do');">병원연혁</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103013000000000.do');">병원HI</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/8_List.do');">건강정보</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/8_List.do');">건강강좌</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/49_List.do');">건강영상</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/76_List.do');">카드뉴스</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">고객서비스</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/boardClientComplainRegist.do');">고객의 소리</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medicine/kimsPop.do');">약품검색</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/104005001000000.do');" class="plus">의료사회복지</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/104005001000000.do');">사회사업팀 소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005002000000.do');">의료사회복지 상담</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005003000000.do');">사회공헌</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005004000000.do');">자원봉사</a></li>
</ul>
</li><li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>

                    </ul>
                </div>

                <div class="header_rit">
                	
					<a href="javascript:void(0);" class="btn_search" onclick="javascript:searchOpen(); fn_MoveSearch()"></a>
                    <a href="javascript:void(0);" class="btn_sitemap" onclick="sitemapOpen();"><i></i></a>
                </div>
            </div>
        </header>
		<!-- /header -->

		<!--location_section-->
		<div class="location_wrap">
			<div class="inner fix">
				<ul class="location fix">
					<li class="home">
                        <a href="/"><span class="skip">홈으로 가기</span></a>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">회원서비스<span class="location_icon"></span></a>
                    	<ul class="location_down">
	                    <li><a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">이용안내</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과/전문클러스터</a></li>
<li><a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">예약/조회</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">진료안내</a></li>
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');">병원소개</a></li>
<li><a href="javascript:fn_goMenu('/home/board/8_List.do');">건강정보</a></li>
<li><a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">고객서비스</a></li>
<li><a href="javascript:fn_goMenu('/home/member/login.do');">회원서비스</a></li>
  
                    	</ul>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">로그인<span class="location_icon"></span></a>
                    	<ul class="location_down">
                    	<li><a href="javascript:fn_goMenu('/home/member/login.do');">로그인</a></li>
<li><a href="javascript:fn_goMenu('/home/member/join1.do');">회원가입</a></li>
<li><a href="javascript:fn_goMenu('/home/member/findId.do');">아이디 찾기</a></li>
<li><a href="javascript:fn_goMenu('/home/member/findPw.do');">비밀번호 찾기</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/109014000000000.do');">환자권리장전</a></li>
<li><a href="javascript:fn_goMenu('/home/member/PrivacyInfo.do');">개인정보처리방침</a></li>
<li><a href="javascript:fn_goMenu('/home/member/TermsInfo.do');">이용약관</a></li>
<li><a href="javascript:fn_goMenu('/home/search/totalList.do');">통합검색</a></li>

                    	</ul>
                    </li>
				</ul>
				
			</div>
		</div>
		<!--/location_section-->
		<!--sub_container_wrapper-->
		<section class="title fix">
            <div class="inner fix">
            	<h2>로그인</h2>
<a href="javascript:fn_goMenu('/home/member/join1.do');" class="title_next">Next</a>

            </div>
        </section>
        
       
		<!-- /wrap -->
		<!-- contents -->
		
	<form id="frm" name="frm" method="POST">
		<input type="hidden" id="loginType" name="loginType" value="S">
		<!-- 
		<input type="hidden" id="refererUrl" name="refererUrl" value="">
		 -->
		<input type="hidden" id="deptNo" name="deptNo" value="">
		<input type="hidden" id="profNo" name="profNo" value="">
		<section id="contents" class="contents_wrap">
			<div class="inner">
				<div class="login_wrap">
					<div class="login_inner">
						<div class="login_tit">
							<p>안녕하세요.<br><strong>CONSTANT 메디컬</strong>입니다.<em class="dec">회원서비스를 이용하시려면 로그인이 필요합니다.</em></p>
						</div>
						<label for="userId" class="skip">아이디</label>
						<input type="text" id="userId" name="userId" class="input_text" placeholder="아이디를 입력하세요." maxlength="20">
						<label for="userPw" class="skip">비밀번호</label>
						<input type="password" id="userPw" name="userPw" class="input_text" placeholder="비밀번호를 입력하세요." maxlength="30">
						<label for="idSaveCheck" class="ch">
							<input type="checkbox" id="idSaveCheck" name="idSaveCheck" value="Y">
							<span></span> 아이디저장
						</label>
						<input type="button" class="btn_login" value="로그인" onclick="javascript:fn_CheckForm(); return false;">
						<div class="login_info_wrap">
							<a href="/home/member/join1.do"><strong class="tit">회원가입</strong></a>
							<a href="/home/member/findId.do"><strong class="tit">아이디 찾기</strong></a>
							<a href="/home/member/findPw.do"><strong class="tit">비밀번호 찾기</strong></a>
						</div>
						
						<div class="sns_login_wrap">
							<p class="tit"><span>SNS 로그인</span></p>
							<ul class="sns_list fix">
								<li class="sns_naver"><a href="javascript:void(0);" onclick="javascript:fn_LoginNaver();">네이버 로그인</a></li>
								<li class="sns_kakao"><a href="javascript:void(0);" onclick="javascript:fn_LoginKakao();">카카오 로그인</a></li>
								<li class="" id="googleLoginBtn"><div class="S9gUrf-YoZ4jf" style="position: relative;"><div></div><iframe src="https://accounts.google.com/gsi/button?type=standard&amp;theme=filled_black&amp;size=large&amp;shape=circle&amp;text=signin_with&amp;client_id=603607955702-jjb1jhi57m612u613tg422ds0bvmmsu3.apps.googleusercontent.com&amp;iframe_id=gsi_802646_262960&amp;as=TXaCcFcP5nTeNFvC9mMesA" id="gsi_802646_262960" title="Google 계정으로 로그인 버튼" style="display: block; position: relative; top: 0px; left: 0px; height: 44px; width: 238px; border: 0px; margin: -2px -10px;"></iframe></div></li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	<input type="hidden" id="headHspCd" name="headHspCd" value="G"></form>

		<!-- //contents -->
		<!--/sub_container_wrapper-->

		<!-- 통합검색 레이어팝업 -->
	<div class="layer_search_wrapper">
		<div class="layer_search">
			<form id="searchfrm" name="searchfrm" method="POST">
				<input type="hidden" id="tabCd" name="tabCd" value="">
				<input type="hidden" id="workType" name="workType">
				<input type="hidden" id="totalWord" name="totalWord" value="">
				<fieldset>
					<legend>통합검색</legend>
					<div class="top">
						<strong>SEARCH</strong>
						<a href="javascript:void(0);" class="layer_search_close" onclick="searchClose();"><i></i></a>
					</div>
					<div class="bott">
						
						<input type="text" id="subKeyWord" name="subKeyWord" class="layer_search_input" placeholder="무엇이 궁금하세요?">
						
						<input type="image" class="btn_layer_search" src="/common/front/home/images/common/btn_s.png" onclick="javascript:fn_TotalSearch('subKeyWord'); return false;">
					</div>
				</fieldset>
			<input type="hidden" id="headHspCd" name="headHspCd" value="G"></form>
		</div>
	</div>
	<!-- //통합검색 레이어팝업 -->


		
		
			
		












<!--footer-->

	
	
		
			
			
			
			
				<!--footer_wrapper-->
				<footer id="footer">
		            <div class="inner">
		                <div class="footer_bott">
		                	<h1 class="footer_logo">
		                        <a href="javascript:void(0);">
		                            <img src="../../resources/img/no_green_logo.png" alt="중앙대학교 광명병원">
		                        </a>
		                    </h1>
		                    <div class="footer_bott_con">
		                        <ul class="footer_bott_menu fix">
		                            <li><a href="/home/conts/109014000000000.do" target="_blank">환자권리장전</a></li>
		                            <li class="etc_cor"><a href="/home/member/PrivacyInfo.do">개인정보처리방침</a></li>
		                            <li><a href="/home/guide/prescribe.do">비급여항목안내</a></li>
		                        </ul>
		                        <address>
		                            <strong>
		                            	경기도 광명시 덕안로 110 (일직동 501)
		                                <span onclick="location.href='tel:1811-7800';">TEL : 1811-7800</span>
		                            </strong>
		                            <em>COPYRIGHT (C) CHUNG-ANG UNIVERSITY GWANGMYEONG HOSPITAL, ALL RIGHTS RESERVED.</em>
		                        </address>
		                    </div>
		                    <div class="family_site">
		                        <a href="javascript:void(0);">패밀리사이트</a>
		                        <ul class="family_site_list">
		                            <li><a href="http://ch.cauhs.or.kr/group/index.do?introDisplayYn=N">중앙대학교의료원</a></li>
									<li><a href="http://gh.cauhs.or.kr/fund/">발전후원회</a></li>
									<li><a href="http://ch.cauhs.or.kr/home/index.do?introDisplayYn=N">중앙대학교병원</a></li>
									<li><a href="http://gh.cauhs.or.kr/health/">소하검진센터</a></li>
									<li><a href="http://gh.cauhs.or.kr/refer/">진료협력센터</a></li>
									<li><a href="http://gh.cauhs.or.kr/funeral/">장례식장</a></li>
									<li><a href="http://gh.cauhs.or.kr/recruit/">인재채용</a></li>
									<li><a href="http://gh.cauhs.or.kr/eng/">English</a></li>
									
		                        </ul>
		                    </div>
							<p class="sns_wrap">
								<a href="https://www.youtube.com/channel/UC6t1q7O-yAlOa9lRpxRWY7A" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_youtube.png" alt="유튜브"></a>
								<!-- <a href="https://www.facebook.com/CauHospital" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_facebook.png" alt="페이스북" /></a>
								<a href="https://blog.naver.com/cau_hs" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_blog.png" alt="네이버 블로그" /></a> -->
							</p>
		                </div>
		            </div>
		            <a href="javascript:void(0);" onclick="moveTop();" class="btn_top"><span class="skip">상단으로 가기</span></a>
		        </footer>
				<!--/footer_wrapper-->
			
		
	
	
	
	
	
	
	

	
	

	
	

	
	


	
	

<!--//footer-->
		
		
		













<!-- 
<div class="sitemap_wrap">
    <div class="sitemap_inner">
        <div class="sitemap_top fix">
            <h3>전체메뉴</h3>
            <a href="javascript:void(0);" onclick="sitemapClose();" class="sitemap_close"><span class="skip">닫기버튼</span></a>
        </div>
        <ul class="sitemap fix m_gnb">
        	<li><a href="javascript:void(0);" class="tit">이용안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/101001000000000.do">오시는 길</a>
</li>
<li><a href="/home/conts/101002003000000.do">주차안내</a>
</li>
<li><a href="/home/conts/101003000000000.do">면회안내</a>
</li>
<li><a href="/home/conts/101004000000000.do">전화번호안내</a>
</li>
<li><a href="/home/introduce/floor0Pop.do">층별안내</a>
</li>
<li><a href="/home/conts/101006010000000.do">진료비안내</a>
</li>
<li><a href="/home/conts/101010000000000.do">편의시설안내</a>
</li>
<li><a href="/home/conts/101014000000000.do">모바일앱</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">진료과/전문클러스터</a>
<ul class="depth2">
<li>
</li><li><a href="/home/medical/deptAllIntro.do">진료과</a>
</li>
<li><a href="/home/medical/profList.do">의료진</a>
</li>
<li><a href="/home/conts/105002001000000.do">암병원</a>
</li>
<li><a href="/home/conts/105015007009000.do">심장뇌혈관병원</a>
</li>
<li><a href="/home/medical/digesAllIntro.do">소화기센터</a>
</li>
<li><a href="/home/medical/allergyAllIntro.do">호흡기알레르기센터</a>
</li>
<li><a href="/home/medical/spineAllIntro.do">척추센터</a>
</li>
<li><a href="/home/conts/105016005000000.do">관절센터</a>
</li>
<li><a href="/home/medical/robotAllIntro.do">로봇수술센터</a>
</li>
<li><a href="/home/conts/105022001001000.do">노년수술전문지원센터</a>
</li>
<li><a href="/home/conts/105023001000000.do">당일수술센터</a>
</li>
<li><a href="/home/conts/105021001000000.do">스마트임상시험센터(STC)</a>
</li>
<li><a href="/home/conts/105009002000000.do">IRB</a>
</li>
<li><a href="/home/conts/105006008002000.do">지원부서</a>
</li>
<li><a href="https://gh.cauhs.or.kr/health/" target="_blank">소하검진센터</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">예약/조회</a>
<ul class="depth2">
<li>
</li><li><a href="/home/reserveNew/resvOnline.do">온라인 예약</a>
</li>
<li><a href="/home/conts/106001002000000.do">처음진료 간편예약</a>
</li>
<li><a href="/home/member/userMypageCheck.do">진료예약 조회</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">진료안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/102001000000000.do">외래진료</a>
</li>
<li><a href="/home/conts/102002000000000.do">입 · 퇴원</a>
</li>
<li><a href="/home/conts/102003000000000.do">응급진료</a>
</li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a>
</li>
<li><a href="/home/conts/102008000000000.do">병리자료대출안내</a>
</li>
<li><a href="/home/guide/prescribe.do">비급여항목안내</a>
</li>
<li><a href="https://gh.cauhs.or.kr/refer/" target="_blank">진료협력센터</a>
</li>
<li><a href="/home/conts/102012000000000.do">호스피스 완화의료</a>
</li>
<li><a href="/home/conts/102013000000000.do">코로나19 검사</a>
</li>
<li><a href="/home/conts/102015001000000.do">수술실 CCTV 안내</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">병원소개</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/2_List.do">병원소식</a>
</li>
<li><a href="/home/conts/103002000000000.do">미션 · 비전</a>
</li>
<li><a href="/home/conts/103012000000000.do">안전보건경영방침</a>
</li>
<li><a href="/home/conts/103005001000000.do">병원현황</a>
</li>
<li><a href="/home/conts/103006001000000.do">병원홍보</a>
</li>
<li><a href="/home/conts/103011000000000.do">병원연혁</a>
</li>
<li><a href="/home/conts/103013000000000.do">병원HI</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">건강정보</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/8_List.do">건강강좌</a>
</li>
<li><a href="/home/board/49_List.do">건강영상</a>
</li>
<li><a href="/home/board/76_List.do">카드뉴스</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">고객서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/boardClientThanksList.do">칭찬합시다</a>
</li>
<li><a href="/home/board/boardClientComplainRegist.do">고객의 소리</a>
</li>
<li><a href="/home/medicine/kimsPop.do">약품검색</a>
</li>
<li><a href="/home/conts/104005001000000.do">의료사회복지</a>
</li>
<li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
</li>

</ul>
</li>
<li><a href="javascript:void(0);" class="tit">회원서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/member/login.do">로그인</a>
</li>
<li><a href="/home/member/join1.do">회원가입</a>
</li>
<li><a href="/home/member/findId.do">아이디 찾기</a>
</li>
<li><a href="/home/member/findPw.do">비밀번호 찾기</a>
</li>
<li><a href="/home/member/userMypageCheck.do">회원정보</a>
</li>
<li><a href="/home/member/familyRegist.do">대리예약 대상자등록</a>
</li>
<li><a href="/home/conts/109014000000000.do">환자권리장전</a>
</li>
<li><a href="/home/member/PrivacyInfo.do">개인정보처리방침</a>
</li>
<li><a href="/home/member/TermsInfo.do">이용약관</a>
</li>
<li><a href="/home/search/totalList.do">통합검색</a>
</li>

</ul>
</li>

        </ul>
    </div>
</div>
		
 -->


	</div>
<!-- // wrap -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-VC9QBBNCWM"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'G-VC9QBBNCWM');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "fab6e091590438";
if(window.wcs) {
wcs_do();
}
</script>

</body></html>