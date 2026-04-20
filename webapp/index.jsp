<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!--ここからブラウザに表示する中身-->
    <html>

    <!--ブラウザのタブに表示するタイトルなど-->
        <head>
            <title>ジュエリー制作管理</title>
        </head>

        <!--実際にブラウザの画面上に表示されるメインコンテンツ-->
        <body>
            <h1>💎 ジュエリー在庫管理 💎</h1>
            <p>宝石のリスト表示</p>


            <!-- ループ処理ここから！ -->
            <ul>
                <c:forEach var="gem" items="$(gemList)">
                    <li>${gem.gemName} (${gem.mineraName})</li>
                </c:forEach>
            </ul>

                    <!--    <p>最初の宝石：${gemList[0].gemName}</p> -->
                    <!--    <p>リストの総数：${gemList.size()}件</p> -->

        </body>
        </html>