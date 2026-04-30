<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!--ここからブラウザに表示する中身-->
<html>

<!--ブラウザのタブに表示するタイトルなど-->
<head>
    <title>ルース在庫</title>
</head>

<!--実際にブラウザの画面上に表示されるメインコンテンツ-->
<body>
<h1>💎 ルース在庫 💎</h1>

<table border="1">
    <tr>
        <th>宝石名</th>
        <th>鉱物名</th>
        <th>産地</th>
        <th>カラー</th>
        <th>形状</th>
        <th>カラット</th>
        <th>縦</th>
        <th>横</th>
        <th>厚み</th>
        <th>モース硬度</th>
        <th>カラーチェンジ</th>
        <th>加熱処理</th>
        <th>加工処理</th>
        <th>処理詳細</th>
    </tr>

    <!-- ループ処理 -->
    <c:forEach var="gem" items="${gemList}">
        <tr>
            <td>${gem.gemName}</td>
            <td>${gem.mineralName}</td>
            <td>${gem.area}</td>
            <td>${gem.color}</td>
            <td>${gem.cut}</td>
            <td>${gem.carat}ct</td>
            <td>${gem.height}mm</td>
            <td>${gem.width}mm</td>
            <td>${gem.depth}mm</td>
            <td>${gem.hard}</td>
            <td>${gem.change ? "有" : ""}</td>
            <td>${gem.treatment ? "有" : ""}</td>
            <td>${empty gem.processing ? "-" : gem.processing}</td>
            <td>${empty gem.memo ? "-" : gem.memo}</td>
        </tr>
    </c:forEach>

</table>

<p></p>
<!--    <p>最初の宝石：${gemList[0].gemName}</p> -->
<!--    <p>リストの総数：${gemList.size()}件</p> -->

    <a href="index.jsp">🏠 トップページ（案内板）に戻る</a>
</body>
</html>