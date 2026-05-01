-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2026-05-01 09:33:06
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
-- テーブルの構造 `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `metal_id` int(11) DEFAULT NULL,
  `loose_id` int(11) DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `item_necklace_detakus`
--

CREATE TABLE `item_necklace_detakus` (
  `item_id` int(11) NOT NULL,
  `chain_length` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `item_pinky_ring_details`
--

CREATE TABLE `item_pinky_ring_details` (
  `item_id` int(11) NOT NULL,
  `pinky_ring_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `item_ring_details`
--

CREATE TABLE `item_ring_details` (
  `item_id` int(11) NOT NULL,
  `ring_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `カラーチェンジ (Color change)` tinyint(1) NOT NULL DEFAULT 0,
  `加熱処理 (Heat Treatment)` tinyint(1) NOT NULL DEFAULT 0,
  `加工処理 (Processing)` varchar(50) NOT NULL,
  `処理詳細 (memo)` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `loose_stones`
--

INSERT INTO `loose_stones` (`id`, `鉱物名 (Mineral name)`, `宝石名 (Gem name)`, `産地 (Production area)`, `カラー (Color)`, `形状 (Cut)`, `カラット (Carat)`, `縦：Height (mm)`, `横：width (mm)`, `厚み：depth (mm)`, `モース硬度 (Mohs hardness)`, `カラーチェンジ (Color change)`, `加熱処理 (Heat Treatment)`, `加工処理 (Processing)`, `処理詳細 (memo)`) VALUES
(1, 'ダイヤモンド', 'ダイヤモンド(金剛石)', 'ロシア産\r\n', '(D)無色透明', 'ラウンドブリリアンカット', 0.255, 4.100, 4.100, 2.400, 10.0, 0, 0, '', ''),
(2, 'ダイヤモンド', 'ダイヤモンド(金剛石)', 'オーストラリア産（アーガイル鉱山）', '(5PP)ピンク', 'ペアシェイプ', 0.160, 4.500, 3.060, 1.910, 10.0, 0, 0, '', ''),
(3, 'ガーネット', 'ベキリーブルーガーネット', 'マダガスカル産', 'パープル', 'ラウンドカット', 0.182, 3.500, 3.500, 2.100, 7.5, 1, 0, '', ''),
(4, 'コランダム', 'ルビー', 'モザンビーク産', 'レッド', 'オーバルカット', 0.540, 5.900, 4.100, 2.500, 9.0, 0, 0, '', ''),
(5, 'コランダム', 'サファイア', 'スリランカ産', 'ロイヤルブルー', 'オーバルカット', 0.610, 4.800, 4.000, 3.800, 9.0, 0, 0, '', ''),
(6, 'ベリル', 'エメラルド', 'ブラジル産', 'エメラルドグリーン', 'トリリアンカット', 0.070, 2.900, 3.000, 1.800, 7.5, 0, 0, '含浸処理', 'オイル含侵処理（通常処理）'),
(7, 'オパール', 'オパール', 'クーパーペディ産', 'グリーン', 'オーバルカボションカット', 0.530, 8.200, 5.900, 1.700, 5.5, 0, 0, '', ''),
(8, 'クリソベリル', 'アレキサンドライト', 'ブラジル産', 'グリニッシュブルー、パープリッシュピンク', 'プリンセスカット', 0.350, 3.700, 3.800, 2.800, 8.5, 1, 0, '', ''),
(9, 'ベリル', 'アクアマリン', 'モザンビーク産', 'サンタマリアブルー', 'ペアシェイプ', 3.010, 12.300, 8.900, 5.500, 7.5, 0, 0, '', ''),
(10, 'ベリル', 'モルガナイト', 'モザンビーク産', 'ピンク', 'オクタゴンカット', 14.490, 25.800, 10.200, 7.000, 7.5, 0, 0, '', ''),
(11, 'トパーズ', 'トパーズ', 'ブラジル産', 'スイスブルー', 'オーバルカット', 16.680, 19.500, 14.500, 8.300, 8.0, 0, 0, '', ''),
(12, 'アラゴナイト (真珠)', 'コンクパール', 'カリブ海', 'ピンク', 'オーバルシェイプ', 0.550, 5.600, 4.000, 3.200, 3.5, 0, 0, '', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_gem_categories`
--

CREATE TABLE `m_gem_categories` (
  `id` int(11) NOT NULL,
  `宝石名(GemName)` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_gem_categories`
--

INSERT INTO `m_gem_categories` (`id`, `宝石名(GemName)`) VALUES
(1, 'ダイヤモンド'),
(2, 'ルビー'),
(3, 'サファイア'),
(4, 'エメラルド'),
(5, 'ガーネット'),
(99, 'その他');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_item_types`
--

CREATE TABLE `m_item_types` (
  `item_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_item_types`
--

INSERT INTO `m_item_types` (`item_type_id`, `type_name`) VALUES
(1, 'リング'),
(2, 'ピンキーリング'),
(3, 'ピアス'),
(4, 'ネックレス'),
(5, 'ネックレストップ'),
(6, 'リング'),
(7, 'ピンキーリング'),
(8, 'ピアス'),
(9, 'ネックレス'),
(10, 'ネックレストップ');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_metals`
--

CREATE TABLE `m_metals` (
  `metal_id` int(11) NOT NULL,
  `metal_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_metals`
--

INSERT INTO `m_metals` (`metal_id`, `metal_name`) VALUES
(1, 'Pt900'),
(2, 'K18YG'),
(3, 'K18PG'),
(4, 'K18WG'),
(5, 'K10'),
(6, 'SV925'),
(7, 'Pt900'),
(8, 'K18YG'),
(9, 'K18PG'),
(10, 'K18WG'),
(11, 'K10'),
(12, 'SV925');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_necklace_lengths`
--

CREATE TABLE `m_necklace_lengths` (
  `id` int(11) NOT NULL,
  `length_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_necklace_lengths`
--

INSERT INTO `m_necklace_lengths` (`id`, `length_value`) VALUES
(1, 40),
(2, 45),
(3, 50),
(4, 60),
(5, 70),
(6, 80);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_pinky_sizes`
--

CREATE TABLE `m_pinky_sizes` (
  `id` int(11) NOT NULL,
  `size_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_pinky_sizes`
--

INSERT INTO `m_pinky_sizes` (`id`, `size_value`) VALUES
(1, 0),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_ring_sizes`
--

CREATE TABLE `m_ring_sizes` (
  `id` int(11) NOT NULL,
  `size_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `m_ring_sizes`
--

INSERT INTO `m_ring_sizes` (`id`, `size_value`) VALUES
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10),
(7, 11),
(8, 12),
(9, 13),
(10, 14),
(11, 15),
(12, 16),
(13, 17),
(14, 18),
(15, 19),
(16, 20),
(17, 21),
(18, 22);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `metal_id` (`metal_id`),
  ADD KEY `loose_id` (`loose_id`);

--
-- テーブルのインデックス `item_necklace_detakus`
--
ALTER TABLE `item_necklace_detakus`
  ADD PRIMARY KEY (`item_id`);

--
-- テーブルのインデックス `item_pinky_ring_details`
--
ALTER TABLE `item_pinky_ring_details`
  ADD PRIMARY KEY (`item_id`);

--
-- テーブルのインデックス `item_ring_details`
--
ALTER TABLE `item_ring_details`
  ADD PRIMARY KEY (`item_id`);

--
-- テーブルのインデックス `loose_stones`
--
ALTER TABLE `loose_stones`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `m_gem_categories`
--
ALTER TABLE `m_gem_categories`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `m_item_types`
--
ALTER TABLE `m_item_types`
  ADD PRIMARY KEY (`item_type_id`);

--
-- テーブルのインデックス `m_metals`
--
ALTER TABLE `m_metals`
  ADD PRIMARY KEY (`metal_id`);

--
-- テーブルのインデックス `m_necklace_lengths`
--
ALTER TABLE `m_necklace_lengths`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `m_pinky_sizes`
--
ALTER TABLE `m_pinky_sizes`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `m_ring_sizes`
--
ALTER TABLE `m_ring_sizes`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `loose_stones`
--
ALTER TABLE `loose_stones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `m_item_types`
--
ALTER TABLE `m_item_types`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `m_metals`
--
ALTER TABLE `m_metals`
  MODIFY `metal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `m_necklace_lengths`
--
ALTER TABLE `m_necklace_lengths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `m_pinky_sizes`
--
ALTER TABLE `m_pinky_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルの AUTO_INCREMENT `m_ring_sizes`
--
ALTER TABLE `m_ring_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `m_item_types` (`item_type_id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`metal_id`) REFERENCES `m_metals` (`metal_id`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`loose_id`) REFERENCES `loose_stones` (`id`);

--
-- テーブルの制約 `item_necklace_detakus`
--
ALTER TABLE `item_necklace_detakus`
  ADD CONSTRAINT `item_necklace_detakus_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE;

--
-- テーブルの制約 `item_pinky_ring_details`
--
ALTER TABLE `item_pinky_ring_details`
  ADD CONSTRAINT `item_pinky_ring_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE;

--
-- テーブルの制約 `item_ring_details`
--
ALTER TABLE `item_ring_details`
  ADD CONSTRAINT `item_ring_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
