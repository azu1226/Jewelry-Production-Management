-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2026-04-16 09:03:57
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `jewelry_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `loose_stones`
--

CREATE TABLE `loose_stones` (
  `id` int(11) NOT NULL,
  `鉱物名 (Mineral name)` varchar(50) NOT NULL,
  `宝石名 (Gem name)` varchar(50) NOT NULL,
  `産地 (Production area)` varchar(255) NOT NULL,
  `カラー (Color)` varchar(100) NOT NULL,
  `形状 (Cut)` varchar(50) NOT NULL,
  `カラット (Carat)` decimal(6,3) NOT NULL,
  `縦：Height (mm)` decimal(6,3) NOT NULL,
  `横：width (mm)` decimal(6,3) NOT NULL,
  `厚み：depth (mm)` decimal(6,3) NOT NULL,
  `モース硬度 (Mohs hardness)` decimal(3,1) NOT NULL,
  `カラーチェンジ ( Color change)` tinyint(1) NOT NULL DEFAULT 0,
  `加熱処理 (Heat Treatment)` tinyint(1) NOT NULL DEFAULT 0,
  `加工処理 (Processing)` varchar(50) NOT NULL,
  `処理詳細 (Processing details)` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `loose_stones`
--

INSERT INTO `loose_stones` (`id`, `鉱物名 (Mineral name)`, `宝石名 (Gem name)`, `産地 (Production area)`, `カラー (Color)`, `形状 (Cut)`, `カラット (Carat)`, `縦：Height (mm)`, `横：width (mm)`, `厚み：depth (mm)`, `モース硬度 (Mohs hardness)`, `カラーチェンジ ( Color change)`, `加熱処理 (Heat Treatment)`, `加工処理 (Processing)`, `処理詳細 (Processing details)`) VALUES
(1, 'ダイヤモンド', 'ダイヤモンド(金剛石)', 'ロシア産\r\n', '(D)無色透明', 'ラウンドブリリアンカット', 0.255, 4.100, 4.100, 2.400, 10.0, 0, 0, '', ''),
(2, 'ダイヤモンド', 'ダイヤモンド(金剛石)', 'オーストラリア産（アーガイル鉱山）', '(5PP)ピンク', 'ペアシェイプ', 0.160, 4.500, 3.060, 1.910, 10.0, 0, 0, '', ''),
(3, 'ガーネット', 'ベキリーブルーガーネット(カラーチェンジガーネット)', 'マダガスカル産', 'パープル', 'ラウンドカット', 0.182, 3.500, 3.500, 2.100, 7.5, 1, 0, '', ''),
(4, 'コランダム', 'ルビー', 'モザンビーク産', 'レッド', 'オーバルカット', 0.540, 5.900, 4.100, 2.500, 9.0, 0, 0, '', ''),
(5, 'コランダム', 'サファイア', 'スリランカ産', 'ロイヤルブルー', 'オーバルカット', 0.610, 4.800, 4.000, 3.800, 9.0, 0, 0, '', ''),
(6, 'ベリル', 'エメラルド', 'ブラジル産', 'エメラルドグリーン', 'トリリアンカット', 0.070, 2.900, 3.000, 1.800, 7.5, 0, 0, '含浸処理', 'オイル含侵処理（通常処理）'),
(7, 'オパール', 'オパール', 'クーパーペディ産', 'グリーン', 'オーバルカボションカット', 0.530, 8.200, 5.900, 1.700, 5.5, 0, 0, '', ''),
(8, 'クリソベリル', 'アレキサンドライト', 'ブラジル産', 'グリニッシュブルー、パープリッシュピンク', 'プリンセスカット', 0.350, 3.700, 3.800, 2.800, 8.5, 1, 0, '', ''),
(9, 'ベリル', 'アクアマリン', 'モザンビーク産', 'サンタマリアブルー', 'ペアシェイプ', 3.010, 12.300, 8.900, 5.500, 7.5, 0, 0, '', ''),
(10, 'ベリル', 'モルガナイト', 'モザンビーク産', 'ピンク', 'オクタゴンカット', 14.490, 25.800, 10.200, 7.000, 7.5, 0, 0, '', ''),
(11, 'トパーズ', 'トパーズ', 'ブラジル産', 'スイスブルー', 'オーバルカット', 16.680, 19.500, 14.500, 8.300, 8.0, 0, 0, '', ''),
(12, 'アラゴナイト (真珠)', 'コンクパール', 'カリブ海', 'ピンク', 'オーバルシェイプ', 0.550, 5.600, 4.000, 3.200, 3.5, 0, 0, '', '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `loose_stones`
--
ALTER TABLE `loose_stones`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `loose_stones`
--
ALTER TABLE `loose_stones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
