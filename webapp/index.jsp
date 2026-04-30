<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!--ここからブラウザに表示する中身-->
<html>

<!--ブラウザのタブに表示するタイトルなど-->
<head>
    <title>ジュエリー制作管理</title>

        <style>
            /* リストの「・」を消して、ボタンを並べる設定 */
            ul {
                list-style: none;
                padding: 0;
            }

            li {
                margin-bottom: 15px; /* ボタン同士の隙間 */
            }

            /* リンク（<a>タグ）を「ボタン」の見た目に変える魔法 */
            .menu-button {
                display: inline-block;    /* 横幅や高さを指定できるようにする */
                width: 300px;             /* ボタンの幅 */
                padding: 20px;            /* ボタンの中の余白（これで大きさが変わる） */
                text-decoration: none;    /* 下線を消す */
                font-size: 20px;          /* 文字の大きさ */
                font-weight: bold;        /* 文字を太く */
                text-align: center;       /* 文字を真ん中に */
                border-radius: 10px;      /* 角を丸くする */
                box-shadow: 2px 2px 5px rgba(0,0,0,0.2); /* 影をつけて立体的に */
                transition: 0.3s;         /* マウスを乗せた時の動きを滑らかに */
            }

            /* 画像のイメージに合わせて色分け */
            .btn-jewelry { background-color: #ffe4b5; color: #333; } /* 薄いオレンジ */
            .btn-loose   { background-color: #9370db; color: white; } /* 紫 */
            .btn-create  { background-color: #ffff00; color: #333; } /* 黄色 */

            /* マウスを乗せた（ホバーした）時の反応 */
            .menu-button:hover {
                opacity: 0.8;             /* ちょっと透ける */
                transform: translateY(-3px); /* 3ミリくらい上に浮く */
            }
        </style>


</head>

<!--実際にブラウザの画面上に表示されるメインコンテンツ-->
<body>

<h1>ジュエリー制作管理システム</h1>

<ul>
    <li><h1><a href="product-list">💍 ジュエリー制作物一覧 💍</a></h1></li>

    <li><h1><a href="gem-list">💎 ルース在庫 💎</a></h1></li>

    <li><h1><a href="item-entry">✨ 新しく製品を作る ✨</a></h1></li>

</ul>
</body>
</html>