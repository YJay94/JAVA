<%@ page language="java" contentType='text/html; charset=UTF-8' 
pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <!-- 화면 최적화 -->
        <meta name="viewport" content="width-device-width", initial-scale="1">
        <!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <title>JSP 게시판 웹 사이트</title>
    </head>
    <body>
        <%
            <!-- // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크 -->
            String userID = null;
            if(session.getAtrribute("userID") != null){
                userID = (String)session.getAttribute("userID");
            }
        %>
        <nav class="navbar navbar-default"> <!-- 네비게이션 -->
            <div class="navbar-header"> <!-- 네비게이션 상단부분 -->
                <!-- 네비게이션 상단 박스 영역-->
                <button type="button" class="navbar-toggle collapsed"
                        data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                    </button>

            </div>

        </nav>

    </body>
</html>
