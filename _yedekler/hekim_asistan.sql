/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : hekim_asistan

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 24/10/2022 14:46:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_anabilim_dallari
-- ----------------------------
DROP TABLE IF EXISTS `tb_anabilim_dallari`;
CREATE TABLE `tb_anabilim_dallari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fakulte_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anabilim_dallari
-- ----------------------------
INSERT INTO `tb_anabilim_dallari` VALUES (1, 1, 'Anesteziyoloji ve Reanimasyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (2, 1, 'Çocuk Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (3, 1, 'Genel Cerrahi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (4, 1, 'Göğüs Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (5, 1, 'Göz Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (6, 1, 'Kadın Hastalıkları ve Doğum Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (7, 1, 'Kalp ve Damar Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (8, 1, 'Kulak Burun Boğaz Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (9, 1, 'Nöroşirürji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (10, 1, 'Ortopedi ve Travmatoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (11, 1, 'Plastik ve Rekonstrüktif Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (12, 1, 'Üroloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (13, 1, 'Anatomi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (14, 1, 'Biyofizik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (15, 1, 'Biyoistatistik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (16, 1, 'Biyokimya Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (17, 1, 'Fizyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (18, 1, 'Histoloji ve Embriyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (19, 1, 'Mikrobiyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (20, 1, 'Patoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (21, 1, 'Tıbbi Biyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (22, 1, 'Tıbbi Parazitoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (23, 1, 'Tıp Eğitimi ve Bilişimi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (24, 1, 'Tıp Tarihi ve Etik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (25, 1, 'Acil Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (26, 1, 'Adli Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (27, 1, 'Aile Hekimliği Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (28, 1, 'Çocuk Sağlığı ve Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (29, 1, 'Dermatoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (30, 1, 'Farmakoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (31, 1, 'Fiziksel Tıp ve Rehabilitasyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (32, 1, 'Göğüs Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (33, 1, 'Halk Sağlığı Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (34, 1, 'İç Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (35, 1, 'Kardiyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (36, 1, 'Klinik Bakteriyoloji ve Enfeksiyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (37, 1, 'Nöroloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (38, 1, 'Nükleer Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (39, 1, 'Psikiyatri Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (40, 1, 'Radyasyon Onkolojisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (41, 1, 'Radyodiagnostik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (42, 1, 'Spor Hekimliği Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (43, 1, 'Tıbbi Genetik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (44, 1, 'Diğer', 1);

-- ----------------------------
-- Table structure for tb_bolumler
-- ----------------------------
DROP TABLE IF EXISTS `tb_bolumler`;
CREATE TABLE `tb_bolumler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_bolumler
-- ----------------------------
INSERT INTO `tb_bolumler` VALUES (1, 1, 1, 'Tıpta Uzmanlık', 0);
INSERT INTO `tb_bolumler` VALUES (2, 1, 1, 'Dahili Tıp Bilimleri Bölümü', 0);

-- ----------------------------
-- Table structure for tb_ders_kategorileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_kategorileri`;
CREATE TABLE `tb_ders_kategorileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_kategorileri
-- ----------------------------
INSERT INTO `tb_ders_kategorileri` VALUES (1, 1, 'Zorunlu Ders', 1);
INSERT INTO `tb_ders_kategorileri` VALUES (2, 1, 'Seçmeli Ders', 1);
INSERT INTO `tb_ders_kategorileri` VALUES (3, 1, 'Alttan Ders', 0);

-- ----------------------------
-- Table structure for tb_ders_yili_donemleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_yili_donemleri`;
CREATE TABLE `tb_ders_yili_donemleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int NULL DEFAULT NULL,
  `ders_yili_id` int NULL DEFAULT NULL,
  `donem_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_yili_donemleri
-- ----------------------------
INSERT INTO `tb_ders_yili_donemleri` VALUES (1, 1, 1, 1);
INSERT INTO `tb_ders_yili_donemleri` VALUES (2, 1, 1, 2);
INSERT INTO `tb_ders_yili_donemleri` VALUES (3, 1, 1, 3);
INSERT INTO `tb_ders_yili_donemleri` VALUES (4, 1, 1, 4);
INSERT INTO `tb_ders_yili_donemleri` VALUES (5, 1, 1, 5);
INSERT INTO `tb_ders_yili_donemleri` VALUES (11, 1, 1, 6);

-- ----------------------------
-- Table structure for tb_ders_yillari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_yillari`;
CREATE TABLE `tb_ders_yillari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `baslangic_tarihi` date NULL DEFAULT NULL,
  `bitis_tarihi` date NULL DEFAULT NULL,
  `ilk_goruntulenecek` tinyint NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_yillari
-- ----------------------------
INSERT INTO `tb_ders_yillari` VALUES (1, 1, '2022 - 2023 Ders Yılı', '2022-09-19', '2023-06-19', 1, 1);
INSERT INTO `tb_ders_yillari` VALUES (3, 1, '2023 - 2024 Ders Yılı', '2023-09-17', '2024-06-20', 0, 1);

-- ----------------------------
-- Table structure for tb_dersler
-- ----------------------------
DROP TABLE IF EXISTS `tb_dersler`;
CREATE TABLE `tb_dersler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int NULL DEFAULT NULL,
  `anabilim_dali_id` int NULL DEFAULT NULL,
  `ders_kategori_id` int NULL DEFAULT NULL,
  `ders_kodu` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_dersler
-- ----------------------------
INSERT INTO `tb_dersler` VALUES (1, 1, 13, 1, 'TFANT101', 'Anatomi / Anatomy', 1);
INSERT INTO `tb_dersler` VALUES (2, 1, 14, 1, 'TFBFZ102', 'Biyofizik / Biophysics', 1);
INSERT INTO `tb_dersler` VALUES (3, 1, 15, 1, 'TFBIS103', 'Biyoistatistik / Biostatistics', 1);
INSERT INTO `tb_dersler` VALUES (4, 1, 16, 1, 'TFBIK104', 'Tıbbi Biyokimya / Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (5, 1, 44, 1, 'TFDAB105', 'Davranış Bilimleri / Behavioral Sciences', 1);
INSERT INTO `tb_dersler` VALUES (6, 1, 17, 1, 'TFFZY106', 'Fizyoloji / Physiology', 1);
INSERT INTO `tb_dersler` VALUES (7, 1, 33, 1, 'TFHSA107', 'Halk Sağlığı / Public Health', 1);
INSERT INTO `tb_dersler` VALUES (8, 1, 18, 1, 'TFHIE108', 'Histoloji-Embriyoloji / Histology and Embryology', 1);
INSERT INTO `tb_dersler` VALUES (9, 1, 19, 1, 'TFMIB109', 'Tıbbi Mikrobiyoloji / Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (10, 1, 21, 1, 'TFTIB110', 'Tıbbi Biyoloji / Medical Biology', 1);
INSERT INTO `tb_dersler` VALUES (11, 1, 43, 1, 'TFTIG111', 'Tıbbi Genetik / Medical Genetics', 1);
INSERT INTO `tb_dersler` VALUES (12, 1, 44, 1, 'TFTIT111', 'Tıbbi Terminoloji / Medical Terminology', 1);
INSERT INTO `tb_dersler` VALUES (13, 1, 23, 1, 'TFTE112', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (14, 1, 24, 1, 'TFTTE113', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (15, 1, 44, 1, 'TFİLE114', 'İletişim Becerisi / CommunicationSkills', 1);
INSERT INTO `tb_dersler` VALUES (16, 1, 13, 1, 'TFANT201', 'Anatomi / Anatomy', 1);
INSERT INTO `tb_dersler` VALUES (17, 1, 14, 1, 'TFBFZ202', 'Biyofizik / Biophysics', 1);
INSERT INTO `tb_dersler` VALUES (18, 1, 16, 1, 'TFBIK204', 'Biyokimya / Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (19, 1, 30, 1, 'TFFAR205', 'Farmakoloji / Pharmacology', 1);
INSERT INTO `tb_dersler` VALUES (20, 1, 17, 1, 'TFFIZ206', 'Fizyoloji / Physiology', 1);
INSERT INTO `tb_dersler` VALUES (21, 1, 18, 1, 'TFHIE207', 'Histoloji-Embriyoloji / Histology and Embryology', 1);
INSERT INTO `tb_dersler` VALUES (23, 1, 19, 1, 'TFMIK208', 'Mikrobiyoloji / Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (24, 1, 22, 1, 'TFPRZ209', 'Parazitoloji / Parasitology', 1);
INSERT INTO `tb_dersler` VALUES (25, 1, 20, 1, 'TFPAT210', 'Patoloji / Pathology', 1);
INSERT INTO `tb_dersler` VALUES (26, 1, 21, 1, 'TFTIB211', 'Tıbbi Biyoloji / Medical Biology', 1);
INSERT INTO `tb_dersler` VALUES (27, 1, 23, 1, 'TFTEG213', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (28, 1, 24, 1, 'TFTTE214', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (29, 1, 43, 1, 'TFTIG2015', 'Tıbbi Genetik / Medical Genetics', 1);
INSERT INTO `tb_dersler` VALUES (30, 1, 25, 1, 'TFACT301', 'Acil Tıp / Emergency Medicine', 1);
INSERT INTO `tb_dersler` VALUES (31, 1, 26, 1, 'TFADT302', 'Adli Tıp / Forensic Medicine', 1);
INSERT INTO `tb_dersler` VALUES (32, 1, 27, 1, 'TFAIH303', 'Aile Hekimliği / Family Medicine', 1);
INSERT INTO `tb_dersler` VALUES (33, 1, 37, 1, 'TFBSC305', 'Beyin Cerrahisi / Neurosurgery', 1);
INSERT INTO `tb_dersler` VALUES (34, 1, 16, 1, 'TFBIK307', 'Tıbbi Biyokimya / Clinical Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (35, 1, 14, 1, 'TFBIFZ307', 'Biyofizik/Biophisic', 1);
INSERT INTO `tb_dersler` VALUES (36, 1, 2, 1, 'TFCCE308', 'Çocuk Cerrahisi / Pediatric Surgery', 1);
INSERT INTO `tb_dersler` VALUES (37, 1, 39, 1, 'TFCPS309', 'Çocuk Psikiyatrisi / Child and Adolescent Psychiatry', 1);
INSERT INTO `tb_dersler` VALUES (38, 1, 28, 1, 'TFPED310', 'Çocuk Sağlığı ve Hastalıkları / Pediatrics', 1);
INSERT INTO `tb_dersler` VALUES (39, 1, 29, 1, 'TFDER311', 'Dermatoloji / Dermatology', 1);
INSERT INTO `tb_dersler` VALUES (40, 1, 36, 1, 'TFENF312', 'Enfeksiyon Hastalıkları / Infectious Diseases', 1);
INSERT INTO `tb_dersler` VALUES (41, 1, 30, 1, 'TFFAR313', 'Farmakoloji / Pharmacology', 1);
INSERT INTO `tb_dersler` VALUES (42, 1, 31, 1, 'TFFTR314', 'Fizik Tedavi ve Rehabilitasyon / Physical Medicine and Rehabilitation', 1);
INSERT INTO `tb_dersler` VALUES (43, 1, 3, 1, 'TFGEC315', 'Genel Cerrahi / General Surgery', 1);
INSERT INTO `tb_dersler` VALUES (44, 1, 4, 1, 'TFGOC316', 'Göğüs Cerrahisi / Chest Surgery', 1);
INSERT INTO `tb_dersler` VALUES (45, 1, 32, 1, 'TFGOH317', 'Göğüs Hastalıkları / Chest Diseases', 1);
INSERT INTO `tb_dersler` VALUES (46, 1, 5, 1, 'TFGOZ318', 'Göz Hastalıkları / Ophthalmology', 1);
INSERT INTO `tb_dersler` VALUES (47, 1, 33, 1, 'TFHSA319', 'Halk Sağlığı / Public Health', 1);
INSERT INTO `tb_dersler` VALUES (48, 1, 34, 1, 'TFDAH320', 'İç Hastalıkları / Internal Medicine', 1);
INSERT INTO `tb_dersler` VALUES (49, 1, 6, 1, 'TFKHD321', 'Kadın Hastalıkları ve Doğum / Obstetrics and Gynecology', 1);
INSERT INTO `tb_dersler` VALUES (50, 1, 35, 1, 'TFKAR322', 'Kardiyoloji / Cardiology', 1);
INSERT INTO `tb_dersler` VALUES (51, 1, 7, 1, 'TFKDC323', 'Kalp Damar Cerrahisi / Cardiovascular Surgery', 1);
INSERT INTO `tb_dersler` VALUES (52, 1, 8, 1, 'TFKBB324', 'Kulak Burun Boğaz / Otorhinolaryngology', 1);
INSERT INTO `tb_dersler` VALUES (53, 1, 37, 1, 'TFNOR325', 'Nöroloji / Neurology', 1);
INSERT INTO `tb_dersler` VALUES (54, 1, 10, 1, 'TFORT338', 'Ortopedi ve Travmatoloji / Orthopedic and Traumatology', 1);
INSERT INTO `tb_dersler` VALUES (55, 1, 20, 1, 'TFPAT337', 'Patoloji / Pathology', 1);
INSERT INTO `tb_dersler` VALUES (56, 1, 11, 1, 'TFPRC328', 'Plastik Cerrahi / PlasticReconstructive and Aesthetic Surgery', 1);
INSERT INTO `tb_dersler` VALUES (57, 1, 39, 1, 'TFPSK329', 'Psikiyatri / Psychiatry', 1);
INSERT INTO `tb_dersler` VALUES (58, 1, 42, 1, 'TFSHK330', 'Spor Hekimliği / Sports Medicine', 1);
INSERT INTO `tb_dersler` VALUES (59, 1, 22, 1, 'TFPRZ332', 'Parazitoloji / Parasitology', 1);
INSERT INTO `tb_dersler` VALUES (60, 1, 19, 1, 'TFMIC333', 'Tıbbi Mikrobiyoloji / Medical Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (61, 1, 23, 1, 'TFTEG336', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (62, 1, 24, 1, 'TFTTE333', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (63, 1, 12, 1, 'TFURO334', 'Üroloji / Urology', 1);
INSERT INTO `tb_dersler` VALUES (64, 1, 44, 1, 'TFİSG336', 'İş Sağlığı ve Güvenliği', 1);
INSERT INTO `tb_dersler` VALUES (65, 1, 43, 1, 'TFTIG336', 'Tıbbi Genetik / Medical Genetic', 1);
INSERT INTO `tb_dersler` VALUES (66, 1, 38, 1, 'TFNUT336', 'Nükleer Tıp / Nuclear Medicine', 1);

-- ----------------------------
-- Table structure for tb_donem_dersleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_dersleri`;
CREATE TABLE `tb_donem_dersleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int UNSIGNED NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `teorik_ders_saati` int NULL DEFAULT NULL,
  `uygulama_ders_saati` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_dersleri
-- ----------------------------
INSERT INTO `tb_donem_dersleri` VALUES (1, 1, 1, 72, 20);
INSERT INTO `tb_donem_dersleri` VALUES (2, 1, 2, 26, 0);
INSERT INTO `tb_donem_dersleri` VALUES (3, 1, 3, 47, 0);
INSERT INTO `tb_donem_dersleri` VALUES (4, 1, 4, 84, 10);
INSERT INTO `tb_donem_dersleri` VALUES (5, 1, 5, 11, 0);
INSERT INTO `tb_donem_dersleri` VALUES (6, 1, 6, 37, 1);
INSERT INTO `tb_donem_dersleri` VALUES (7, 1, 7, 12, 0);
INSERT INTO `tb_donem_dersleri` VALUES (8, 1, 8, 52, 17);
INSERT INTO `tb_donem_dersleri` VALUES (9, 1, 9, 9, 2);
INSERT INTO `tb_donem_dersleri` VALUES (10, 1, 10, 64, 10);
INSERT INTO `tb_donem_dersleri` VALUES (11, 1, 11, 7, 0);
INSERT INTO `tb_donem_dersleri` VALUES (13, 1, 13, 4, 0);
INSERT INTO `tb_donem_dersleri` VALUES (22, 1, 14, 16, 0);
INSERT INTO `tb_donem_dersleri` VALUES (24, 1, 15, 8, 0);

-- ----------------------------
-- Table structure for tb_donem_gorevlileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_gorevlileri`;
CREATE TABLE `tb_donem_gorevlileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `gorev_kategori_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_gorevlileri
-- ----------------------------
INSERT INTO `tb_donem_gorevlileri` VALUES (10, 1, 1, 25);
INSERT INTO `tb_donem_gorevlileri` VALUES (11, 1, 5, 22);
INSERT INTO `tb_donem_gorevlileri` VALUES (12, 1, 7, 12);
INSERT INTO `tb_donem_gorevlileri` VALUES (13, 1, 7, 11);
INSERT INTO `tb_donem_gorevlileri` VALUES (14, 1, 7, 9);

-- ----------------------------
-- Table structure for tb_donem_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_ogrencileri`;
CREATE TABLE `tb_donem_ogrencileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_ogrencileri
-- ----------------------------
INSERT INTO `tb_donem_ogrencileri` VALUES (7, 4, NULL, 1);
INSERT INTO `tb_donem_ogrencileri` VALUES (8, 4, NULL, 2);
INSERT INTO `tb_donem_ogrencileri` VALUES (9, 4, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (10, 4, NULL, 4);
INSERT INTO `tb_donem_ogrencileri` VALUES (11, 4, NULL, 5);
INSERT INTO `tb_donem_ogrencileri` VALUES (12, 4, NULL, 6);
INSERT INTO `tb_donem_ogrencileri` VALUES (13, 4, NULL, 7);
INSERT INTO `tb_donem_ogrencileri` VALUES (14, 4, NULL, 8);
INSERT INTO `tb_donem_ogrencileri` VALUES (15, 4, NULL, 9);
INSERT INTO `tb_donem_ogrencileri` VALUES (16, 4, NULL, 10);
INSERT INTO `tb_donem_ogrencileri` VALUES (17, 4, NULL, 11);
INSERT INTO `tb_donem_ogrencileri` VALUES (18, 4, NULL, 12);
INSERT INTO `tb_donem_ogrencileri` VALUES (19, 4, NULL, 13);
INSERT INTO `tb_donem_ogrencileri` VALUES (20, 4, NULL, 14);
INSERT INTO `tb_donem_ogrencileri` VALUES (21, 4, NULL, 15);
INSERT INTO `tb_donem_ogrencileri` VALUES (22, 4, NULL, 16);
INSERT INTO `tb_donem_ogrencileri` VALUES (23, 4, NULL, 17);
INSERT INTO `tb_donem_ogrencileri` VALUES (24, 4, NULL, 18);
INSERT INTO `tb_donem_ogrencileri` VALUES (25, 4, NULL, 19);
INSERT INTO `tb_donem_ogrencileri` VALUES (26, 4, NULL, 20);
INSERT INTO `tb_donem_ogrencileri` VALUES (27, 4, NULL, 21);
INSERT INTO `tb_donem_ogrencileri` VALUES (28, 4, NULL, 22);
INSERT INTO `tb_donem_ogrencileri` VALUES (29, 4, NULL, 23);
INSERT INTO `tb_donem_ogrencileri` VALUES (30, 4, NULL, 24);
INSERT INTO `tb_donem_ogrencileri` VALUES (31, 4, NULL, 25);
INSERT INTO `tb_donem_ogrencileri` VALUES (32, 4, NULL, 26);
INSERT INTO `tb_donem_ogrencileri` VALUES (33, 4, NULL, 27);
INSERT INTO `tb_donem_ogrencileri` VALUES (34, 4, NULL, 28);
INSERT INTO `tb_donem_ogrencileri` VALUES (35, 4, NULL, 29);
INSERT INTO `tb_donem_ogrencileri` VALUES (36, 4, NULL, 30);
INSERT INTO `tb_donem_ogrencileri` VALUES (37, 4, NULL, 31);
INSERT INTO `tb_donem_ogrencileri` VALUES (38, 4, NULL, 32);
INSERT INTO `tb_donem_ogrencileri` VALUES (39, 4, NULL, 33);
INSERT INTO `tb_donem_ogrencileri` VALUES (40, 4, NULL, 34);
INSERT INTO `tb_donem_ogrencileri` VALUES (41, 4, NULL, 35);
INSERT INTO `tb_donem_ogrencileri` VALUES (42, 4, NULL, 36);
INSERT INTO `tb_donem_ogrencileri` VALUES (43, 4, NULL, 37);
INSERT INTO `tb_donem_ogrencileri` VALUES (44, 4, NULL, 38);
INSERT INTO `tb_donem_ogrencileri` VALUES (45, 4, NULL, 39);
INSERT INTO `tb_donem_ogrencileri` VALUES (46, 4, NULL, 40);
INSERT INTO `tb_donem_ogrencileri` VALUES (47, 4, NULL, 41);
INSERT INTO `tb_donem_ogrencileri` VALUES (48, 4, NULL, 42);
INSERT INTO `tb_donem_ogrencileri` VALUES (49, 4, NULL, 43);
INSERT INTO `tb_donem_ogrencileri` VALUES (50, 4, NULL, 44);
INSERT INTO `tb_donem_ogrencileri` VALUES (51, 4, NULL, 45);
INSERT INTO `tb_donem_ogrencileri` VALUES (52, 4, NULL, 46);
INSERT INTO `tb_donem_ogrencileri` VALUES (53, 4, NULL, 47);
INSERT INTO `tb_donem_ogrencileri` VALUES (54, 4, NULL, 48);
INSERT INTO `tb_donem_ogrencileri` VALUES (55, 4, NULL, 49);
INSERT INTO `tb_donem_ogrencileri` VALUES (56, 4, NULL, 50);
INSERT INTO `tb_donem_ogrencileri` VALUES (57, 4, NULL, 51);
INSERT INTO `tb_donem_ogrencileri` VALUES (58, 4, NULL, 52);
INSERT INTO `tb_donem_ogrencileri` VALUES (59, 4, NULL, 53);
INSERT INTO `tb_donem_ogrencileri` VALUES (60, 4, NULL, 54);
INSERT INTO `tb_donem_ogrencileri` VALUES (61, 4, NULL, 55);
INSERT INTO `tb_donem_ogrencileri` VALUES (62, 4, NULL, 56);
INSERT INTO `tb_donem_ogrencileri` VALUES (63, 4, NULL, 57);
INSERT INTO `tb_donem_ogrencileri` VALUES (64, 4, NULL, 58);
INSERT INTO `tb_donem_ogrencileri` VALUES (65, 4, NULL, 59);
INSERT INTO `tb_donem_ogrencileri` VALUES (66, 4, NULL, 60);
INSERT INTO `tb_donem_ogrencileri` VALUES (67, 4, NULL, 61);
INSERT INTO `tb_donem_ogrencileri` VALUES (68, 4, NULL, 62);
INSERT INTO `tb_donem_ogrencileri` VALUES (69, 4, NULL, 63);
INSERT INTO `tb_donem_ogrencileri` VALUES (70, 4, NULL, 64);
INSERT INTO `tb_donem_ogrencileri` VALUES (71, 4, NULL, 65);
INSERT INTO `tb_donem_ogrencileri` VALUES (72, 4, NULL, 66);
INSERT INTO `tb_donem_ogrencileri` VALUES (73, 4, NULL, 67);
INSERT INTO `tb_donem_ogrencileri` VALUES (74, 4, NULL, 68);
INSERT INTO `tb_donem_ogrencileri` VALUES (75, 4, NULL, 69);
INSERT INTO `tb_donem_ogrencileri` VALUES (76, 4, NULL, 70);
INSERT INTO `tb_donem_ogrencileri` VALUES (77, 4, NULL, 71);
INSERT INTO `tb_donem_ogrencileri` VALUES (78, 4, NULL, 72);
INSERT INTO `tb_donem_ogrencileri` VALUES (79, 4, NULL, 73);
INSERT INTO `tb_donem_ogrencileri` VALUES (80, 4, NULL, 74);
INSERT INTO `tb_donem_ogrencileri` VALUES (81, 4, NULL, 75);
INSERT INTO `tb_donem_ogrencileri` VALUES (82, 4, NULL, 76);
INSERT INTO `tb_donem_ogrencileri` VALUES (83, 4, NULL, 77);
INSERT INTO `tb_donem_ogrencileri` VALUES (84, 4, NULL, 78);
INSERT INTO `tb_donem_ogrencileri` VALUES (85, 4, NULL, 79);
INSERT INTO `tb_donem_ogrencileri` VALUES (86, 4, NULL, 80);
INSERT INTO `tb_donem_ogrencileri` VALUES (87, 4, NULL, 81);
INSERT INTO `tb_donem_ogrencileri` VALUES (88, 4, NULL, 82);
INSERT INTO `tb_donem_ogrencileri` VALUES (89, 4, NULL, 83);
INSERT INTO `tb_donem_ogrencileri` VALUES (90, 4, NULL, 84);
INSERT INTO `tb_donem_ogrencileri` VALUES (91, 4, NULL, 85);
INSERT INTO `tb_donem_ogrencileri` VALUES (92, 4, NULL, 86);
INSERT INTO `tb_donem_ogrencileri` VALUES (93, 4, NULL, 87);
INSERT INTO `tb_donem_ogrencileri` VALUES (94, 4, NULL, 88);
INSERT INTO `tb_donem_ogrencileri` VALUES (95, 4, NULL, 89);
INSERT INTO `tb_donem_ogrencileri` VALUES (96, 4, NULL, 90);
INSERT INTO `tb_donem_ogrencileri` VALUES (97, 4, NULL, 91);
INSERT INTO `tb_donem_ogrencileri` VALUES (98, 4, NULL, 92);
INSERT INTO `tb_donem_ogrencileri` VALUES (99, 4, NULL, 93);
INSERT INTO `tb_donem_ogrencileri` VALUES (100, 4, NULL, 94);
INSERT INTO `tb_donem_ogrencileri` VALUES (101, 4, NULL, 95);
INSERT INTO `tb_donem_ogrencileri` VALUES (102, 4, NULL, 96);
INSERT INTO `tb_donem_ogrencileri` VALUES (103, 4, NULL, 97);
INSERT INTO `tb_donem_ogrencileri` VALUES (104, 4, NULL, 98);
INSERT INTO `tb_donem_ogrencileri` VALUES (105, 4, NULL, 99);
INSERT INTO `tb_donem_ogrencileri` VALUES (106, 4, NULL, 100);
INSERT INTO `tb_donem_ogrencileri` VALUES (107, 4, NULL, 101);
INSERT INTO `tb_donem_ogrencileri` VALUES (108, 4, NULL, 102);
INSERT INTO `tb_donem_ogrencileri` VALUES (109, 4, NULL, 103);
INSERT INTO `tb_donem_ogrencileri` VALUES (110, 4, NULL, 104);
INSERT INTO `tb_donem_ogrencileri` VALUES (111, 4, NULL, 105);
INSERT INTO `tb_donem_ogrencileri` VALUES (112, 4, NULL, 106);
INSERT INTO `tb_donem_ogrencileri` VALUES (113, 4, NULL, 107);
INSERT INTO `tb_donem_ogrencileri` VALUES (114, 4, NULL, 108);
INSERT INTO `tb_donem_ogrencileri` VALUES (115, 4, NULL, 109);
INSERT INTO `tb_donem_ogrencileri` VALUES (116, 4, NULL, 110);
INSERT INTO `tb_donem_ogrencileri` VALUES (117, 4, NULL, 111);
INSERT INTO `tb_donem_ogrencileri` VALUES (118, 4, NULL, 112);
INSERT INTO `tb_donem_ogrencileri` VALUES (119, 4, NULL, 113);
INSERT INTO `tb_donem_ogrencileri` VALUES (120, 4, NULL, 114);
INSERT INTO `tb_donem_ogrencileri` VALUES (121, 4, NULL, 115);
INSERT INTO `tb_donem_ogrencileri` VALUES (122, 4, NULL, 116);
INSERT INTO `tb_donem_ogrencileri` VALUES (123, 4, NULL, 117);
INSERT INTO `tb_donem_ogrencileri` VALUES (124, 4, NULL, 118);
INSERT INTO `tb_donem_ogrencileri` VALUES (125, 4, NULL, 119);
INSERT INTO `tb_donem_ogrencileri` VALUES (126, 4, NULL, 120);
INSERT INTO `tb_donem_ogrencileri` VALUES (127, 4, NULL, 121);
INSERT INTO `tb_donem_ogrencileri` VALUES (128, 4, NULL, 122);
INSERT INTO `tb_donem_ogrencileri` VALUES (129, 4, NULL, 123);
INSERT INTO `tb_donem_ogrencileri` VALUES (130, 4, NULL, 124);
INSERT INTO `tb_donem_ogrencileri` VALUES (131, 4, NULL, 125);
INSERT INTO `tb_donem_ogrencileri` VALUES (132, 4, NULL, 126);
INSERT INTO `tb_donem_ogrencileri` VALUES (133, 4, NULL, 127);
INSERT INTO `tb_donem_ogrencileri` VALUES (134, 4, NULL, 128);
INSERT INTO `tb_donem_ogrencileri` VALUES (135, 4, NULL, 129);
INSERT INTO `tb_donem_ogrencileri` VALUES (136, 4, NULL, 130);
INSERT INTO `tb_donem_ogrencileri` VALUES (137, 1, NULL, 1);
INSERT INTO `tb_donem_ogrencileri` VALUES (138, 1, NULL, 2);
INSERT INTO `tb_donem_ogrencileri` VALUES (139, 1, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (140, 1, NULL, 4);
INSERT INTO `tb_donem_ogrencileri` VALUES (141, 1, NULL, 9);
INSERT INTO `tb_donem_ogrencileri` VALUES (142, 1, NULL, 128);
INSERT INTO `tb_donem_ogrencileri` VALUES (143, 1, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (144, 1, NULL, 130);
INSERT INTO `tb_donem_ogrencileri` VALUES (145, 1, NULL, 129);
INSERT INTO `tb_donem_ogrencileri` VALUES (146, 2, NULL, 1);
INSERT INTO `tb_donem_ogrencileri` VALUES (147, 2, NULL, 2);
INSERT INTO `tb_donem_ogrencileri` VALUES (148, 2, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (149, 2, NULL, 4);
INSERT INTO `tb_donem_ogrencileri` VALUES (150, 2, NULL, 5);
INSERT INTO `tb_donem_ogrencileri` VALUES (151, 3, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (152, 3, NULL, 1);
INSERT INTO `tb_donem_ogrencileri` VALUES (153, 3, NULL, 2);
INSERT INTO `tb_donem_ogrencileri` VALUES (154, 3, NULL, 4);
INSERT INTO `tb_donem_ogrencileri` VALUES (155, 3, NULL, 6);

-- ----------------------------
-- Table structure for tb_donem_subeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_subeleri`;
CREATE TABLE `tb_donem_subeleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_subeleri
-- ----------------------------

-- ----------------------------
-- Table structure for tb_donemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_donemler`;
CREATE TABLE `tb_donemler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donemler
-- ----------------------------
INSERT INTO `tb_donemler` VALUES (1, 1, 1, 'Dönem I', 1);
INSERT INTO `tb_donemler` VALUES (2, 1, 1, 'Dönem II', 1);
INSERT INTO `tb_donemler` VALUES (3, 1, 1, 'Dönem III', 1);
INSERT INTO `tb_donemler` VALUES (4, 1, 1, 'Dönem IV', 1);
INSERT INTO `tb_donemler` VALUES (5, 1, 1, 'Dönem V', 1);
INSERT INTO `tb_donemler` VALUES (6, 1, 1, 'Dönem VI', 1);

-- ----------------------------
-- Table structure for tb_duzeyler
-- ----------------------------
DROP TABLE IF EXISTS `tb_duzeyler`;
CREATE TABLE `tb_duzeyler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kodu` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_duzeyler
-- ----------------------------
INSERT INTO `tb_duzeyler` VALUES (1, 'B', 'Hastalığa ön tanı koyma ve gerekli durumda hastaya zarar vermeyecek şekilde ve doğru zamanda, doğru yere sevk edebilecek bilgiye sahip olma düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (2, 'T', 'Hastaya tanı koyma ve sonrasında tedavi için yönlendirebilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (3, 'TT', 'Ekip çalışmasının gerektirdiği durumlar dışında herhangi bir desteğe gereksinim duymadan hastanın tanı ve tedavisinin tüm sürecini yönetebilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (4, 'ETT', 'Ekip çalışması yaparak hastanın tanı ve tedavisinin tüm sürecini yönetebilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (5, 'A', 'Hastanın acil durum tanısını koymak ve hastalığa özel acil tedavi girişimini uygulayabilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (6, 'K', 'Hastanın birincil, ikincil ve üçüncül korunma gereksinimlerini tanımlamayı ve gerekli koruyucu önlemleri alabilme düzeyini ifade eder. ');
INSERT INTO `tb_duzeyler` VALUES (7, '1', 'Girişimin nasıl yapıldığı konusunda bilgi sahibi olma ve bu konuda gerektiğinde açıklama yapabilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (8, '2', 'Acil bir durumda, kılavuz veya yönerge eşliğinde veya gözetim ve denetim altında bu  girişimi yapabilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (9, '3', 'Karmaşık olmayan, sık görülen tipik olgularda girişimi uygulayabilme düzeyini ifade eder.');
INSERT INTO `tb_duzeyler` VALUES (10, '4', 'Karmaşık olsun veya olmasın, her tür olguda girişimi uygulayabilme düzeyini ifade eder.');

-- ----------------------------
-- Table structure for tb_fakulteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_fakulteler`;
CREATE TABLE `tb_fakulteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `ilk_goruntulenecek` tinyint NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_fakulteler
-- ----------------------------

-- ----------------------------
-- Table structure for tb_gorev_kategorileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_gorev_kategorileri`;
CREATE TABLE `tb_gorev_kategorileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_gorev_kategorileri
-- ----------------------------
INSERT INTO `tb_gorev_kategorileri` VALUES (1, 1, 'Başkoordinatör');
INSERT INTO `tb_gorev_kategorileri` VALUES (2, 1, 'Başkoordinatör Yrd');
INSERT INTO `tb_gorev_kategorileri` VALUES (3, 1, 'Dönem Koordinatörü');
INSERT INTO `tb_gorev_kategorileri` VALUES (4, 1, 'Dönem Koordinatör Yrd.');
INSERT INTO `tb_gorev_kategorileri` VALUES (5, 1, 'Ders Kurulu Başkanı');
INSERT INTO `tb_gorev_kategorileri` VALUES (6, 1, 'Ders Kurulu Başkan Yrd.');
INSERT INTO `tb_gorev_kategorileri` VALUES (7, 1, 'Sınav Gözetmeni');

-- ----------------------------
-- Table structure for tb_komite_dersleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_dersleri`;
CREATE TABLE `tb_komite_dersleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `donem_ders_id` int NULL DEFAULT NULL,
  `teorik_ders_saati` smallint NULL DEFAULT NULL,
  `uygulama_ders_saati` smallint NULL DEFAULT NULL,
  `soru_sayisi` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_dersleri
-- ----------------------------
INSERT INTO `tb_komite_dersleri` VALUES (1, 1, 2, 10, 5, 2);
INSERT INTO `tb_komite_dersleri` VALUES (2, 1, 3, 47, 0, 37);
INSERT INTO `tb_komite_dersleri` VALUES (3, 1, 5, 11, 0, 9);
INSERT INTO `tb_komite_dersleri` VALUES (4, 1, 7, 56, 0, 9);
INSERT INTO `tb_komite_dersleri` VALUES (5, 1, 14, 16, 0, 13);
INSERT INTO `tb_komite_dersleri` VALUES (6, 1, 15, 8, 0, 5);
INSERT INTO `tb_komite_dersleri` VALUES (7, 1, 13, 4, 0, 3);
INSERT INTO `tb_komite_dersleri` VALUES (8, 1, 4, 8, 2, 9);
INSERT INTO `tb_komite_dersleri` VALUES (9, 1, 6, 5, 1, 2);

-- ----------------------------
-- Table structure for tb_komite_dersleri_ogretim_uyeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_dersleri_ogretim_uyeleri`;
CREATE TABLE `tb_komite_dersleri_ogretim_uyeleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_ders_id` int NULL DEFAULT NULL,
  `ogretim_uyesi_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_dersleri_ogretim_uyeleri
-- ----------------------------
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (104, 1, 25);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (105, 1, 1);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (106, 1, 22);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (107, 1, 18);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (108, 1, 26);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (109, 1, 23);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (110, 1, 16);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (111, 1, 3);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (112, 1, 4);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (113, 1, 2);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (114, 1, 20);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (115, 1, 15);

-- ----------------------------
-- Table structure for tb_komite_gorevlileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_gorevlileri`;
CREATE TABLE `tb_komite_gorevlileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `gorev_kategori_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_gorevlileri
-- ----------------------------
INSERT INTO `tb_komite_gorevlileri` VALUES (5, 1, 1, 25);
INSERT INTO `tb_komite_gorevlileri` VALUES (6, 1, 5, 18);

-- ----------------------------
-- Table structure for tb_komite_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_ogrencileri`;
CREATE TABLE `tb_komite_ogrencileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_ogrencileri
-- ----------------------------
INSERT INTO `tb_komite_ogrencileri` VALUES (1, 1, 128);
INSERT INTO `tb_komite_ogrencileri` VALUES (2, 1, 3);
INSERT INTO `tb_komite_ogrencileri` VALUES (3, 1, 9);
INSERT INTO `tb_komite_ogrencileri` VALUES (4, 1, 4);
INSERT INTO `tb_komite_ogrencileri` VALUES (5, 1, 129);
INSERT INTO `tb_komite_ogrencileri` VALUES (6, 1, 130);
INSERT INTO `tb_komite_ogrencileri` VALUES (8, 1, 2);
INSERT INTO `tb_komite_ogrencileri` VALUES (9, 1, 1);
INSERT INTO `tb_komite_ogrencileri` VALUES (13, 20, 1);

-- ----------------------------
-- Table structure for tb_komiteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_komiteler`;
CREATE TABLE `tb_komiteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `ders_kodu` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ders_kurulu_sira` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslangic_tarihi` date NULL DEFAULT NULL,
  `bitis_tarihi` date NULL DEFAULT NULL,
  `sinav_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komiteler
-- ----------------------------
INSERT INTO `tb_komiteler` VALUES (1, 1, 'TFTGI1001', 'Tıbba Giriş', '1', '2022-09-19', '2022-11-04', '2022-11-04');
INSERT INTO `tb_komiteler` VALUES (2, 1, 'TFHTY1001', 'Hücrenin Temel Yapısı', '2', '2022-11-07', '2022-12-30', '2022-12-30');
INSERT INTO `tb_komiteler` VALUES (3, 1, 'TFHUG1001', 'Hücre ve Genetik - I', '3', '2023-01-02', '2023-02-03', '2023-02-03');
INSERT INTO `tb_komiteler` VALUES (4, 1, 'TFHUG1002', 'Hücre ve Genetik - II', '4', '2023-02-20', '2023-03-30', '2023-03-31');
INSERT INTO `tb_komiteler` VALUES (5, 1, 'TFDKI1001', 'Doku ve Kas İskelet Sistemi - I', '5', '2023-04-03', '2023-05-11', '2023-05-12');
INSERT INTO `tb_komiteler` VALUES (6, 1, 'TFDKI1002', 'Doku ve Kas İskelet Sistemi - II', '6', '2023-05-15', '2023-06-22', '2023-06-23');
INSERT INTO `tb_komiteler` VALUES (15, 2, 'TFDKS2003', 'Dolaşım, Kan, Lenf ve Solunum Sistemi', NULL, '2022-09-12', '2022-10-27', '2022-10-28');
INSERT INTO `tb_komiteler` VALUES (16, 2, 'TFSME2003', 'Sindirim, Metabolizma ve Endokrin Sistem', NULL, '2022-10-31', '2022-12-15', '2022-12-16');
INSERT INTO `tb_komiteler` VALUES (17, 2, 'TFUGS2003', 'Ürogenital Sistem', NULL, '2022-12-19', '2023-01-26', '2023-01-27');
INSERT INTO `tb_komiteler` VALUES (18, 2, 'TFMSS2004', 'Merkezi Sinir Sistemi', NULL, '2023-01-30', '2023-04-20', '2023-04-21');
INSERT INTO `tb_komiteler` VALUES (19, 2, 'TFMSS2004', 'Hastalıkların Temelleri', NULL, '2023-04-24', '2023-06-23', '2023-06-23');
INSERT INTO `tb_komiteler` VALUES (20, 3, 'TFDKİ3005', 'Deri ve Kas-İskelet sistemi Hastalıkları', NULL, '2022-09-05', '2022-10-07', '2022-10-07');
INSERT INTO `tb_komiteler` VALUES (21, 3, 'TFMSS3005', 'Merkezi Sinir Sistemi ve Duyu Hastalıkları', NULL, '2022-10-10', '2022-11-18', '2022-11-18');
INSERT INTO `tb_komiteler` VALUES (22, 3, 'TFDSS3005', 'Dolaşım ve Solunum Sistemi Hastalıkları', NULL, '2022-11-21', '2022-12-30', '2022-12-30');
INSERT INTO `tb_komiteler` VALUES (23, 3, 'TFSİS3006', 'Sindirim Sistemi Hastalıkları', NULL, '2023-01-02', '2023-02-03', '2023-02-03');
INSERT INTO `tb_komiteler` VALUES (24, 3, 'TFEMK3006', 'Endokrin, Metabolizma, Kan ve Lenf Sistemi Hastalıkları', NULL, '2023-02-20', '2023-03-24', '2023-03-24');
INSERT INTO `tb_komiteler` VALUES (25, 3, 'TFUGS3006', 'Ürogenital Sistem Hastalıkları ', NULL, '2023-03-27', '2023-05-12', '2023-05-12');
INSERT INTO `tb_komiteler` VALUES (26, 3, 'TFBBS3006', 'Birinci Basamak Sağlık Hizmetleri ve Kliniğe Giriş', NULL, '2023-05-15', '2023-06-23', '2023-06-23');

-- ----------------------------
-- Table structure for tb_modul
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul`;
CREATE TABLE `tb_modul`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `modul` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `klasor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `simge` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `menude_goster` tinyint NULL DEFAULT 1,
  `ust_id` int NULL DEFAULT 0,
  `kategori` tinyint NULL DEFAULT 0,
  `sira` tinyint NULL DEFAULT 1,
  `harici_sayfa` tinyint NULL DEFAULT 0,
  `kategori_acik` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_modul
-- ----------------------------
INSERT INTO `tb_modul` VALUES (1, 'Anasayfa', 'anasayfa', 'anasayfa', 'fa fa-home', 1, 0, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (2, 'Sistem Kullanıcıları', 'sistemKullanicilari', 'sistemKullanicilari', 'fas fa-users-cog text-red', 1, 0, 0, 30, 0, 0);
INSERT INTO `tb_modul` VALUES (3, 'Yetkiler', 'yetkiler', 'yetkiler', 'far fa-circle text-green', 1, 68, 0, 7, 0, 0);
INSERT INTO `tb_modul` VALUES (32, 'Modul Yetkileri', 'modulYetkileri', 'modulYetkileri', 'far fa-circle text-yellow', 1, 68, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (68, 'Sistem İşlemleri', NULL, NULL, 'fas fa-sliders-h', 1, 0, 1, 100, 0, 0);
INSERT INTO `tb_modul` VALUES (90, 'Ön Tanım', NULL, NULL, 'fas fa-sitemap', 1, 0, 1, 12, 0, 0);
INSERT INTO `tb_modul` VALUES (109, 'Üniversiteler', 'universiteler', 'universiteler', 'fas fa-university text-green', 1, 125, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (110, 'Bölümler', 'bolumler', 'bolumler', 'fas fa-school text-yellow', 0, 125, 0, 3, 0, 0);
INSERT INTO `tb_modul` VALUES (111, 'Fakülteler', 'fakulteler', 'fakulteler', 'fas fa-building text-blue', 0, 125, 0, 2, 0, 0);
INSERT INTO `tb_modul` VALUES (112, 'Programlar', 'programlar', 'programlar', 'fas fa-book-reader text-purple', 0, 125, 0, 4, 0, 0);
INSERT INTO `tb_modul` VALUES (113, 'Ders Yılları', 'dersYillari', 'dersYillari', 'fas fa-calendar-alt text-blue', 1, 127, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (114, 'Ders Kategorileri', 'dersKategorileri', 'dersKategorileri', 'far fa-circle text-green', 1, 129, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (115, 'Dönem Tanımları', 'donemler', 'donemler', 'far fa-circle text-orange', 1, 129, 0, 2, 0, 0);
INSERT INTO `tb_modul` VALUES (116, 'Dersler', 'dersler', 'dersler', 'fas fa-book text-orange', 0, 0, 0, 20, 0, 0);
INSERT INTO `tb_modul` VALUES (117, 'Öğretim Elemanları', 'ogretimElemanlari', 'ogretimElemanlari', 'fas fa-user-md text-blue', 1, 0, 0, 25, 0, 0);
INSERT INTO `tb_modul` VALUES (118, 'Dönem Dersleri', 'donemDersleri', 'donemDersleri', 'fas fa-book text-orange', 1, 127, 0, 3, 0, 0);
INSERT INTO `tb_modul` VALUES (119, 'Komiteler', 'komiteler', 'komiteler', 'fas fa-calendar-plus text-blue', 1, 128, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (120, 'Komite Dersleri', 'komiteDersleri', 'KomiteDersleri', 'fas fa-book text-green', 1, 128, 0, 2, 0, 0);
INSERT INTO `tb_modul` VALUES (121, 'Görev Kategorileri', 'gorevKategorileri', 'gorevKategorileri', 'far fa-circle text-blue', 1, 129, 0, 3, 0, 0);
INSERT INTO `tb_modul` VALUES (122, 'Dönem Görevlileri', 'donemGorevlileri', 'donemGorevlileri', 'fas fa-users text-purple', 1, 127, 0, 4, 0, 0);
INSERT INTO `tb_modul` VALUES (123, 'Komite Görevlileri', 'komiteGorevlileri', 'komiteGorevlileri', 'fas fa-user text-orange', 1, 128, 0, 4, 0, 0);
INSERT INTO `tb_modul` VALUES (124, 'Komite Öğretim Üyeleri', 'komiteDersOgretimUyeleri', 'komiteDersOgretimUyeleri', 'fas fa-users text-purple', 1, 128, 0, 3, 0, 0);
INSERT INTO `tb_modul` VALUES (125, 'Organizasyon Şeması', NULL, NULL, 'fas fa-sitemap text-green', 1, 0, 1, 5, 0, 0);
INSERT INTO `tb_modul` VALUES (126, 'Aktif Dönemler', 'dersYiliDonemler', 'dersYiliDonemler', 'fas fa-list-ol text-green', 1, 127, 0, 2, 0, 0);
INSERT INTO `tb_modul` VALUES (127, 'Ders Yılı Dönem İşlemleri', NULL, NULL, 'fas fa-calendar-alt text-yellow', 0, 0, 1, 10, 0, 0);
INSERT INTO `tb_modul` VALUES (128, 'Ders Kurulu İşlemleri', NULL, NULL, 'fas fa-calendar-plus text-purple', 0, 0, 1, 15, 0, 0);
INSERT INTO `tb_modul` VALUES (129, 'Sabit Tanımlar', NULL, NULL, 'fas fa-table', 0, 0, 1, 35, 0, 0);
INSERT INTO `tb_modul` VALUES (130, 'Öğrenci İşlemleri', NULL, NULL, 'fas fa-users text-danger', 1, 0, 1, 6, 0, 0);
INSERT INTO `tb_modul` VALUES (131, 'Öğrenciler', 'ogrenciler', 'ogrenciler', 'fas fa-users text-info', 1, 130, 0, 6, 0, 0);
INSERT INTO `tb_modul` VALUES (132, 'Dönem Öğrencileri', 'donemOgrencileri', 'donemOgrencileri', 'fas fa-users text-purple', 0, 130, 0, 2, 0, 0);
INSERT INTO `tb_modul` VALUES (133, 'Müfredat', 'mufredat', 'mufredat', 'fas fa-list-alt', 1, 0, 0, 21, 0, 0);
INSERT INTO `tb_modul` VALUES (134, 'Komite Öğrencileri', 'komiteOgrencileri', 'komiteOgrencileri', 'fas fa-users text-pink', 0, 130, 0, 3, 0, 0);
INSERT INTO `tb_modul` VALUES (135, 'Soru İşlemleri', NULL, NULL, 'fas fa-question-circle text-purple', 1, 0, 1, 40, 0, 0);
INSERT INTO `tb_modul` VALUES (136, 'Soru Türleri', 'soru_turleri', 'soru_turleri', 'fas fa-question text-warning', 0, 135, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (137, 'Uzmanlık Dalları', 'uzmanlikDallari', 'uzmanlikDallari', 'fas fa-book-reader text-yellow', 1, 125, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (138, 'Rotasyonlar', 'rotasyonlar', 'rotasyonlar', 'fas fa-tasks text-yellow', 1, 0, 0, 20, 0, 0);
INSERT INTO `tb_modul` VALUES (139, 'Sınav Kategorileri', 'sinavKategorileri', 'sinavKategorileri', 'far fa-circle text-orange', 1, 0, 0, 31, 0, 0);
INSERT INTO `tb_modul` VALUES (141, 'Sınavlar', 'ogrenciSinavlari', 'ogrenciSinavlari', 'fas fa-shapes text-green', 1, 130, 0, 7, 0, 0);
INSERT INTO `tb_modul` VALUES (142, 'Makaleler', 'ogrenciMakaleleri', 'ogrenciMakaleleri', 'far fa-newspaper text-primary', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (145, 'Bilimsel Toplantılar', 'ogrenciBilimselToplantilar', 'ogrenciBilimselToplantilar', 'fas fa-calendar-check text-warning', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (148, 'Klinik Sunuları', 'ogrenciKlinikSunulari', 'ogrenciKlinikSunulari', 'fas fa-file-powerpoint text-info', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (149, 'Tezler', 'ogrenciTezleri', 'ogrenciTezleri', 'fas fa-book text-orange', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (150, 'Tez İzlemeleri', 'ogrenciTezIzlemeleri', 'ogrenciTezIzlemeleri', 'fas fa-book text-primary', 1, 130, 0, 8, 0, 0);

-- ----------------------------
-- Table structure for tb_modul_yetki_islemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul_yetki_islemler`;
CREATE TABLE `tb_modul_yetki_islemler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modul_id` int NULL DEFAULT NULL,
  `yetki_islem_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 781 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_modul_yetki_islemler
-- ----------------------------
INSERT INTO `tb_modul_yetki_islemler` VALUES (7, 3, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (8, 3, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (9, 3, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (10, 3, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (11, 3, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (12, 3, 15);
INSERT INTO `tb_modul_yetki_islemler` VALUES (13, 32, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (14, 32, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (15, 32, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (16, 32, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (17, 32, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (46, 53, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (47, 53, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (48, 53, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (49, 53, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (50, 53, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (51, 54, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (52, 54, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (53, 54, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (54, 54, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (55, 54, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (56, 55, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (57, 55, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (58, 55, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (59, 55, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (60, 55, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (61, 56, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (62, 56, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (63, 56, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (64, 56, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (65, 56, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (66, 57, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (67, 57, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (68, 57, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (69, 57, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (70, 57, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (71, 58, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (72, 58, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (73, 58, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (74, 58, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (75, 58, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (76, 59, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (77, 59, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (78, 59, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (79, 59, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (80, 59, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (81, 60, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (82, 60, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (83, 60, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (84, 60, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (85, 60, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (86, 61, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (87, 61, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (88, 61, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (89, 61, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (90, 61, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (91, 62, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (92, 62, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (93, 62, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (94, 62, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (95, 62, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (114, 1, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (115, 1, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (378, 70, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (379, 70, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (380, 70, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (381, 70, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (382, 70, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (383, 70, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (384, 2, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (385, 2, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (386, 2, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (387, 2, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (388, 2, 11);
INSERT INTO `tb_modul_yetki_islemler` VALUES (389, 2, 12);
INSERT INTO `tb_modul_yetki_islemler` VALUES (390, 2, 15);
INSERT INTO `tb_modul_yetki_islemler` VALUES (391, 49, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (392, 49, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (393, 49, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (394, 49, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (456, 63, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (457, 63, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (458, 63, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (459, 63, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (460, 63, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (461, 63, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (462, 63, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (463, 63, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (577, 65, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (578, 65, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (579, 65, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (580, 65, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (581, 65, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (582, 65, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (583, 65, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (584, 65, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (585, 66, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (586, 66, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (587, 66, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (588, 66, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (589, 66, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (590, 66, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (591, 66, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (592, 51, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (593, 51, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (594, 51, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (595, 51, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (596, 51, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (597, 51, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (598, 51, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (599, 51, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (600, 51, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (601, 51, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (602, 51, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (603, 51, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (604, 51, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (605, 51, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (606, 51, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (607, 51, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (608, 51, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (609, 51, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (610, 51, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (611, 52, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (612, 52, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (613, 52, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (614, 52, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (615, 52, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (616, 52, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (617, 52, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (618, 52, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (619, 48, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (620, 48, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (621, 48, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (622, 48, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (623, 48, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (624, 48, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (625, 48, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (626, 48, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (627, 48, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (628, 48, 28);
INSERT INTO `tb_modul_yetki_islemler` VALUES (629, 48, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (630, 48, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (631, 48, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (632, 48, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (633, 48, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (634, 48, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (635, 48, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (636, 48, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (637, 48, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (638, 48, 39);
INSERT INTO `tb_modul_yetki_islemler` VALUES (639, 48, 40);
INSERT INTO `tb_modul_yetki_islemler` VALUES (640, 48, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (641, 71, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (642, 71, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (643, 72, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (644, 72, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (647, 50, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (648, 50, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (649, 50, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (650, 50, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (651, 50, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (652, 50, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (653, 50, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (654, 50, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (655, 50, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (656, 50, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (657, 50, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (658, 50, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (659, 50, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (660, 50, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (661, 50, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (662, 69, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (663, 69, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (664, 69, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (665, 69, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (666, 69, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (667, 69, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (668, 69, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (669, 69, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (670, 69, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (671, 69, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (672, 69, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (673, 69, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (674, 69, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (675, 69, 39);
INSERT INTO `tb_modul_yetki_islemler` VALUES (676, 69, 40);
INSERT INTO `tb_modul_yetki_islemler` VALUES (681, 73, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (682, 73, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (683, 73, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (684, 73, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (685, 73, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (686, 73, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (687, 73, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (708, 77, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (709, 77, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (710, 77, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (711, 77, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (712, 77, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (713, 77, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (714, 77, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (715, 74, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (716, 74, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (717, 74, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (718, 74, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (719, 74, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (720, 74, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (721, 74, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (722, 75, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (723, 75, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (724, 75, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (725, 75, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (726, 75, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (727, 75, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (728, 75, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (729, 75, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (730, 78, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (731, 78, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (732, 78, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (733, 78, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (734, 78, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (735, 78, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (736, 78, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (737, 78, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (738, 76, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (739, 76, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (740, 76, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (741, 76, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (742, 76, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (743, 76, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (744, 76, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (745, 76, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (746, 80, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (747, 80, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (748, 80, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (749, 80, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (750, 80, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (755, 92, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (756, 92, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (757, 92, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (758, 92, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (759, 92, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (760, 91, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (761, 91, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (762, 91, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (763, 91, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (764, 91, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (765, 86, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (766, 86, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (767, 86, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (768, 86, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (769, 86, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (770, 87, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (771, 87, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (772, 87, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (773, 87, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (774, 87, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (775, 98, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (776, 98, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (777, 98, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (778, 98, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (779, 98, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (780, 98, 23);

-- ----------------------------
-- Table structure for tb_mufredat
-- ----------------------------
DROP TABLE IF EXISTS `tb_mufredat`;
CREATE TABLE `tb_mufredat`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `rotasyon_id` int NULL DEFAULT NULL,
  `duzey` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kidem` tinyint NULL DEFAULT NULL,
  `yontem` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ogrenim_hedefi_mi` tinyint NULL DEFAULT NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mufredat
-- ----------------------------
INSERT INTO `tb_mufredat` VALUES (52, 0, 'Yöneticilik Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (53, 0, 'Ekip Üyeliği Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (54, 0, 'Sağlık Koruyuculuğu Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (55, 0, 'İletişim Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (56, 0, 'Değer ve Sorumluluk Sahibi Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (57, 0, 'Öğrenen ve Öğreten Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (58, 0, 'Hizmet Sunuculuğu Yetkinliği', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (59, 58, 'Klinik Yetkinlikler', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (60, 58, 'Girişimsel Yetkinlikler', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (61, 59, 'Hastalık Yönetimi', 1, -1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (71, 61, 'AİLEVİ AKDENİZ ATEŞİ (FMF)', 1, -1, 'ETT', 3, 'YE,UE,BE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (72, 61, 'AKUT BATIN ', 1, -1, 'B', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (73, 61, 'AKUT ROMATİZMAL ATEŞ (ARA) ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (74, 61, 'AKUT SOLUNUM YETMEZLİĞİ ', 1, -1, 'K,T,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (75, 61, 'AKUT VE KRONİK BÖBREK YETMEZLİĞİ', 1, -1, 'K,T,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (76, 61, 'ALERJİSİ OLAN HASTA ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (77, 61, 'ALT SOLUNUM YOLU ENFEKSİYONU', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (78, 61, 'AMFİZEM ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (79, 61, 'ANEMİ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (80, 61, 'ANKSİYETE BOZUKLUĞU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (81, 61, 'ANORMAL VAJİNAL KANAMA', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (82, 61, 'ASİT', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (83, 61, 'ASTIM  ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (84, 61, 'BAĞ DOKUSU HASTALIKLARI', 1, -1, 'B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (85, 61, 'BENİGN PROSTAT HİPERTROFİSİ', 1, -1, 'T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (86, 61, 'BESLENME BOZUKLUĞU ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (87, 61, 'BRONŞİEKTAZİ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (88, 61, 'ÇEVRE KAYNAKLI HASTALIKLAR', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (89, 61, 'DEMANS ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (90, 61, 'DEPRESYON ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (91, 61, 'DERİ VE YUMUŞAK DOKU ENFEKSİYONU', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (92, 61, 'DİĞER CİNSEL YOLLA BULAŞAN HASTALIK OLAN HASTA ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (93, 61, 'DİSK HERNİSİ (KOMPLİKASYONSUZ)', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (94, 61, 'DİSLİPİDEMİLER', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (95, 61, 'DİSMENORE', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (96, 61, 'DİYABET ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (97, 61, 'DOĞUM VE DOĞUM SONRASI KOMPLİKASYONLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (98, 61, 'DÖKÜNTÜLÜ HASTA', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (99, 61, 'ENSEFALİT', 1, -1, 'B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (100, 61, 'FİBROMİYALJİ ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (101, 61, 'GASTRİT VE PEPTİK ÜLSER  ', 1, -1, 'K,ETT', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (102, 61, 'GASTROİNTESTİNAL SİSTEM ENFEKSİYONU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (103, 61, 'GEBELİK KOMPLİKASYONLARI ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (104, 61, 'GIS KANAMASI  ', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (105, 61, 'HIV (+) HASTA ', 1, -1, 'K,T,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (106, 61, 'HİPERTANSİYON  ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (107, 61, 'İDRAR YOLU ENFEKSİYONU', 1, -1, 'K,ETT', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (108, 61, 'İNFERTİLİTE', 1, -1, 'T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (109, 61, 'İNME ', 1, -1, 'K,T,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (110, 61, 'İSKEMİK KALP HASTALIĞI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (111, 61, 'JİNEKOLOJİK ENFEKSİYONLAR ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (112, 61, 'KALP KAPAK HASTALIKLARI ', 1, -1, 'K,B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (113, 61, 'KALP YETMEZLİĞİ  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (114, 61, 'KARACİĞER YAĞLANMASI', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (115, 61, 'KAZA, ZEHİRLENME VE YARALANMA ', 1, -1, 'K,B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (116, 61, 'KOAH ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (117, 61, 'KONJENİTAL ANOMALİLİ HASTA', 1, -1, 'K,B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (118, 61, 'LEİOMİYOMA UTERİ', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (119, 61, 'MALİGNİTE', 1, -1, 'K,B', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (120, 61, 'MENENJİT', 1, -1, 'K,B', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (121, 61, 'MESLEK HASTALIKLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (122, 61, 'NEFRİT  ', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (123, 61, 'NEFROTİK SENDROM  ', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (124, 61, 'OBEZİTE', 1, -1, 'K,ETT', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (125, 61, 'OSTEOARTRİT', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (126, 61, 'OSTEOPOROZ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (127, 61, 'PERİFERİK DAMAR HASTALIKLARI', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (128, 61, 'PERİNATAL ENFEKSİYONLAR', 1, -1, 'K,T,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (129, 61, 'PNÖMOTORAKS', 1, -1, 'K,B,', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (130, 61, 'PSİKOZ ', 1, -1, 'T,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (131, 61, 'RİTM BOZUKLUKLARI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (132, 61, 'ROMATOİD ARTRİT', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (133, 61, 'SAFRA KESESİ HASTALIKLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (134, 61, 'SOMATOFORM BOZUKLUK ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (135, 61, 'TALASSEMİ', 1, -1, 'K,T', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (136, 61, 'TİROİD HASTALIKLARI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (137, 61, 'TÜBERKÜLOZ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (138, 61, 'ÜST SOLUNUM YOLU ENFEKSİYONU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (139, 61, 'VİRAL HEPATİT ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (140, 61, 'YABANCI CİSİM ASPİRASYONU', 1, -1, 'K,T,A', 2, 'BE,UE,YE', NULL, 0);
INSERT INTO `tb_mufredat` VALUES (141, 61, 'YEME BOZUKLUKLUĞU', 1, -1, 'K,T', 2, 'BE,UE,YE', NULL, 0);

-- ----------------------------
-- Table structure for tb_ogrenci_bilimsel_toplanti_sunulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_bilimsel_toplanti_sunulari`;
CREATE TABLE `tb_ogrenci_bilimsel_toplanti_sunulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `ogrenci_bilimsel_toplanti_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_bilimsel_toplanti_sunulari
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ogrenci_bilimsel_toplantilar
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_bilimsel_toplantilar`;
CREATE TABLE `tb_ogrenci_bilimsel_toplantilar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `yeri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `tarih` date NULL DEFAULT NULL,
  `sunular` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_bilimsel_toplantilar
-- ----------------------------
INSERT INTO `tb_ogrenci_bilimsel_toplantilar` VALUES (2, 1, 117, 'Örnek Toplantı Adı', 'Örnek Toplantı Yeri', '2022-10-05', '1) Sunu 1\r\n2) Sunu 2', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_klinik_sunulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_klinik_sunulari`;
CREATE TABLE `tb_ogrenci_klinik_sunulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `yeri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `tarih` date NULL DEFAULT NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_klinik_sunulari
-- ----------------------------
INSERT INTO `tb_ogrenci_klinik_sunulari` VALUES (1, 1, 117, 'Örnek Sunu Konusu', 'Örnek Sunu Yeri', '2022-10-12', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_makaleleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_makaleleri`;
CREATE TABLE `tb_ogrenci_makaleleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `dergi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_makaleleri
-- ----------------------------
INSERT INTO `tb_ogrenci_makaleleri` VALUES (2, 1, 117, 'Evaluation Of The Effect On Perinatal Outcomes Of Maternal Body Mass Index In Ceasarean Births', 'Van Tıp Dergisi, cilt.24, sa.1, ss.1-6, 2017 (Hakemli Dergi)\r\nLayık M. E. , Ekin M., Demirci A.', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_sinavlari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_sinavlari`;
CREATE TABLE `tb_ogrenci_sinavlari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `sinav_kategori_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sinav_tarihi` date NULL DEFAULT NULL,
  `notu` double NULL DEFAULT NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_sinavlari
-- ----------------------------
INSERT INTO `tb_ogrenci_sinavlari` VALUES (2, 1, 117, 1, 'Formatif Sınav 1', '2022-10-05', 54, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_tez_izlemeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_tez_izlemeleri`;
CREATE TABLE `tb_ogrenci_tez_izlemeleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `ogrenci_tez_id` int NULL DEFAULT NULL,
  `tarih` date NULL DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_tez_izlemeleri
-- ----------------------------
INSERT INTO `tb_ogrenci_tez_izlemeleri` VALUES (1, 1, 117, 1, '2022-10-11', 'Tez çalışmaları incelendi. ', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_tezleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_tezleri`;
CREATE TABLE `tb_ogrenci_tezleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `tez_konusu` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `tez_konusu_verilme_tarihi` date NULL DEFAULT NULL,
  `tez_konusu_akademik_kurul_onay_tarihi` date NULL DEFAULT NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_tezleri
-- ----------------------------
INSERT INTO `tb_ogrenci_tezleri` VALUES (1, 1, 117, 'Aile Hekimliğinde İletişim', '2022-10-05', '2022-10-21', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenciler
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenciler`;
CREATE TABLE `tb_ogrenciler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `tc_kimlik_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ogrenci_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sinif` tinyint NULL DEFAULT NULL,
  `kayit_yili` year NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `cep_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adres` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `dogum_tarihi` date NULL DEFAULT NULL,
  `dogum_yeri` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tus_donemi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tus_puani` double NULL DEFAULT NULL,
  `baslama_tarihi` date NULL DEFAULT NULL,
  `bitis_tarihi` date NULL DEFAULT NULL,
  `tez_tarihi` date NULL DEFAULT NULL,
  `egitim_danisman_id` int NULL DEFAULT NULL,
  `tez_danisman_id` int NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenciler
-- ----------------------------
INSERT INTO `tb_ogrenciler` VALUES (1, 1, 1, '', '17060001008', 'Şeyma Nur', 'ERÇİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (2, 1, 1, '', '17060001009', 'Oğulcan', 'AKÇAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (3, 1, 1, '', '17060001010', 'Azad', 'ZENGİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (4, 1, 1, '', '17060001011', 'Ferhat', 'BUCAĞA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (5, 1, 1, '', '17060001012', 'Ayşenur', 'ALMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (6, 1, 1, '', '17060001013', 'Erkan', 'BAĞTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (7, 1, 1, '', '17060001014', 'Berçem Fatma', 'YILDIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (8, 1, 1, '', '17060001015', 'Musa', 'İNCEER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (9, 1, 1, '', '17060001016', 'Fatma Betül', 'UĞURLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (10, 1, 1, '', '17060001017', 'Elif Sümeyya', 'AKSÖZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (11, 1, 1, '', '17060001018', 'Hasan', 'SÖNMEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (12, 1, 1, '', '17060001019', 'Sözdar', 'CİHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (13, 1, 1, '', '17060001020', 'Muhammed', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (14, 1, 1, '', '17060001022', 'Ömer', 'BEKİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (15, 1, 1, '', '17060001023', 'Onur', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (16, 1, 1, '', '17060001024', 'Neslihan', 'DİZMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (17, 1, 1, '', '17060001025', 'Taha Miraç', 'GÜNEŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (18, 1, 1, '', '17060001026', 'Cevdet', 'ŞEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (19, 1, 1, '', '17060001027', 'Tekin', 'TÜRKER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (20, 1, 1, '', '17060001028', 'Meryem', 'ERŞEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (21, 1, 1, '', '17060001029', 'Dudu', 'ÇEKİCİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (22, 1, 1, '', '17060001031', 'Şehnaz', 'DOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (23, 1, 1, '', '17060001035', 'Mehmet', 'ALTUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (24, 1, 1, '', '17060001036', 'Elif Berfin', 'KÖKLİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (25, 1, 1, '', '17060001037', 'Kadir', 'KALAÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (26, 1, 1, '', '17060001038', 'Yunus', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (27, 1, 1, '', '17060001039', 'Zelal', 'YAYLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (28, 1, 1, '', '17060001040', 'Veysel Karani', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (29, 1, 1, '', '17060001041', 'Burhan', 'KIZILTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (30, 1, 1, '', '17060001043', 'İbrahim', 'ÇOBANOĞLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (31, 1, 1, '', '17060001047', 'Özcan', 'DAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (32, 1, 1, '', '17060001048', 'Vedat', 'KAVAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (33, 1, 1, '', '17060001051', 'Mert', 'KARTAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (34, 1, 1, '', '17060001053', 'Evin', 'BÖLER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (35, 1, 1, '', '17060001054', 'Beyza', 'TUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (36, 1, 1, '', '17060001055', 'Mizgin', 'BOZKURT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (37, 1, 1, '', '17060001057', 'Naz Neval', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (38, 1, 1, '', '17060001058', 'Yasin', 'DENİZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (39, 1, 1, '', '17060001060', 'Ahmet', 'KOÇAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (40, 1, 1, '', '17060001062', 'Emine', 'KIZILDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (41, 1, 1, '', '17060001063', 'Arif', 'GÖKDERE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (42, 1, 1, '', '17060001065', 'Hüseyin Harun', 'KADIRHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (43, 1, 1, '', '17060001066', 'Diyar', 'VARIŞLI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (44, 1, 1, '', '17060001067', 'Yüksel', 'METİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (45, 1, 1, '', '17060001069', 'Fatma', 'YUTAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (46, 1, 1, '', '17060001072', 'İbrahim Halil', 'ERZEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (47, 1, 1, '', '17060001073', 'Mehmet Barsim', 'BOĞATEKİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (48, 1, 1, '', '17060001074', 'Tuğba', 'ATLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (49, 1, 1, '', '17060001075', 'Adem', 'KARAMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (50, 1, 1, '', '17060001078', 'Bedirhan', 'ERDAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (51, 1, 1, '', '17060001079', 'Cihat', 'SEVİNÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (52, 1, 1, '', '17060001080', 'Nurşen', 'CENGİZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (53, 1, 1, '', '17060001081', 'Ahmet Alperen', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (54, 1, 1, '', '17060001082', 'Yasemin', 'TUNÇAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (55, 1, 1, '', '17060001087', 'İsmail', 'ERDOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (56, 1, 1, '', '17060001088', 'Afşin', 'DUMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (57, 1, 1, '', '17060001090', 'Cennet', 'ÖZTÜRK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (58, 1, 1, '', '17060001091', 'Mesut', 'GÜLER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (59, 1, 1, '', '17060001093', 'Mustafa', 'GÜVEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (60, 1, 1, '', '17060001094', 'Veysel', 'GÜR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (61, 1, 1, '', '17060001095', 'Zafer', 'KATAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (62, 1, 1, '', '17060001096', 'Gamze', 'AĞCA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (63, 1, 1, '', '17060001098', 'Saliha Nihan', 'ÜRKMEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (64, 1, 1, '', '17060001099', 'Eda', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (65, 1, 1, '', '17060001101', 'Murat', 'AKSOY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (66, 1, 1, '', '17060001102', 'Pelin', 'UNUL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (67, 1, 1, '', '17060001109', 'Ezgi', 'CESUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (68, 1, 1, '', '17060001111', 'Batuhan', 'BAYKUŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (69, 1, 1, '', '17060001112', 'Serhat', 'UYGUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (70, 1, 1, '', '17060001113', 'Muhammed', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (71, 1, 1, '', '17060001116', 'Nefise', 'AYDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (72, 1, 1, '', '17060001118', 'Fatmanur', 'MİRBEY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (73, 1, 1, '', '17060001119', 'Gönül Aslı', 'CAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (74, 1, 1, '', '17060001120', 'Ömer Faruk', 'YUNAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (75, 1, 1, '', '17060001121', 'Zehra', 'HANBABA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (76, 1, 1, '', '17060001124', 'Ümmügülsüm', 'GÜRAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (77, 1, 1, '', '17060001125', 'Betül', 'AYÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (78, 1, 1, '', '17060001127', 'Çağdaş', 'DİLEKCİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (79, 1, 1, '', '17060001130', 'Arzu', 'DEMİRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (80, 1, 1, '', '17060001131', 'Sümeyye Nur', 'ÖNER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (81, 1, 1, '', '17060001134', 'Hasret', 'BULUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (82, 1, 1, '', '17060001135', 'Esra', 'DEĞER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (83, 1, 1, '', '17060001137', 'Melike', 'KARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (84, 1, 1, '', '17060001138', 'Mücahit', 'ÇALIŞKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (85, 1, 1, '', '17060001139', 'Fehime', 'KURT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (86, 1, 1, '', '17060001143', 'Ümran', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (87, 1, 1, '', '17060001144', 'Saruhan Fikri', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (88, 1, 1, '', '17060001147', 'Nursena', 'KARABULUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (89, 1, 1, '', '17060001148', 'Gurbet', 'KARABAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (90, 1, 1, '', '17060001149', 'Melek', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (91, 1, 1, '', '17060001150', 'Beyza', 'ÖZDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (92, 1, 1, '', '17060001129', 'Beyzanur', 'EYVAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (93, 1, 1, '', '17060001151', 'Emine Şevval', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (94, 1, 1, '', '17060001153', 'Muhammed Hamza', 'YAZÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (95, 1, 1, '', '17060001162', 'Ahmet Sait', 'AĞIRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (96, 1, 1, '', '17060001165', 'Ahmed.M.Y.', 'SAIDAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (97, 1, 1, '', '17060001171', 'Serkan', 'CEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (98, 1, 1, '', '16060001006', 'Deniz', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (99, 1, 1, '', '16060001011', 'Şahin', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (100, 1, 1, '', '16060001021', 'Mehmet Emin', 'ÇAKIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (101, 1, 1, '', '16060001024', 'Rojin', 'KIZILAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (102, 1, 1, '', '16060001028', 'Melek', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (103, 1, 1, '', '16060001045', 'Baran', 'DAKMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (104, 1, 1, '', '16060001060', 'Mehmet Ali', 'SEÇMEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (105, 1, 1, '', '16060001071', 'Berivan İdil', 'ABİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (106, 1, 1, '', '16060001088', 'Dilek', 'AFERİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (107, 1, 1, '', '16060001104', 'Ali', 'EROĞULLARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (108, 1, 1, '', '16060001129', 'Mevlüt Özgür', 'ACAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (109, 1, 1, '', '16060001151', 'Mohamad', 'ALHAMDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (110, 1, 1, '', '15060001133', 'Abdulsamet', 'BEŞKARDEŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (111, 1, 1, '', '14060001069', 'İbrahim', 'GÜLTEKİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (112, 1, 1, '', '14060001135', 'Nail', 'BEYAZIT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (113, 1, 1, '', '19060001152', 'Elif', 'AVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (114, 1, 1, '', '19060001153', 'Barış', 'TUNÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (115, 1, 1, '', '19060001162', 'Neslihan', 'ARSLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (116, 1, 1, '', '20060001152', 'Yasemin', 'ÖZMEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (117, 1, 1, '', '20060001153', 'Abdullah Harun', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (118, 1, 1, '', '21060001170', 'Hakan', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (119, 1, 1, '', '16060001061', 'Fulya', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (120, 1, 1, '', '16060001080', 'Ramazan', 'YALMAÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (121, 1, 1, '', '15060001059', 'Dıjvar', 'DENLİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (122, 1, 1, '', '14060001130', 'Gülezgi', 'KAYAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (123, 1, 1, '', '13060001135', 'Muhammed', 'FATİH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (124, 1, 1, '', '16060001121', 'Furkan Kağan', 'DALDABAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (125, 1, 1, '', '20060001007', 'Muhammed Enes', 'UÇAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (126, 1, 1, '', '20060001002', 'Dilara', 'AVCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (127, 1, 1, '', '16060001119', 'Ömer', 'KUTLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (128, 1, 1, '', '16060001013', 'Abdullah', 'SEVAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (129, 1, 1, '', '14060001140', 'M.Kasım', 'ÇAKILLIKOYAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (130, 1, 1, '', '15060001168', 'Mehmet', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_ogrenciler` VALUES (131, 1, 1, '456456', '46456456', 'Serbest', 'Ziyanak', NULL, NULL, 'serbest.ziyanak@gmail.com', '5444961144', 'Teknokent sk. Teknokent Binası No:20', '0000-00-00', 'cizre', 'adasd', 56, '0000-00-00', '0000-00-00', '0000-00-00', 25, 10, 0);
INSERT INTO `tb_ogrenciler` VALUES (132, 1, 1, '45982964018', '1303', 'Serbest', 'Ziyanak', NULL, NULL, 'serbest.ziyanak@gmail.com', '5444961144', 'Teknokent sk. Teknokent Binası No:20', '1989-01-20', 'Cizre', 'dfwewer', 55, '2020-02-25', '2024-02-20', '2022-06-25', 10, 25, 0);

-- ----------------------------
-- Table structure for tb_ogretim_elemanlari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogretim_elemanlari`;
CREATE TABLE `tb_ogretim_elemanlari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `tc_kimlik_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `unvan_id` int NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `cep_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogretim_elemanlari
-- ----------------------------
INSERT INTO `tb_ogretim_elemanlari` VALUES (1, 1, 1, 1, NULL, 1, 'Sıddık', 'KESKİN', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (2, 1, 1, 1, NULL, 3, 'Şükran', 'SEVİMLİ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (3, 1, 1, 1, NULL, 3, 'Sinemis', 'ÇETİN DAĞLI', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (4, 1, 1, 1, NULL, 3, 'Mehmet Emin', 'LAYIK', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (5, 1, 1, 1, NULL, 5, 'Duygu', 'KORKMAZ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (6, 1, 1, 1, NULL, 5, 'Tuncay', 'ULU', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (7, 1, 1, 1, NULL, 5, 'Ahmet', 'SALTIK', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (8, 1, 1, 1, NULL, 5, 'Zülkaf', 'AKBALIK', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (9, 1, 1, 1, NULL, 5, 'Zeynep', 'ŞAHİN', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (10, 1, 1, 1, NULL, 5, 'Hale Mükerrem', 'KAYA', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (11, 1, 1, 1, NULL, 5, 'Rukiye', 'TOKUŞ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (12, 1, 1, 1, NULL, 5, 'İslam', 'KÖSE', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (14, 1, 1, 1, NULL, 3, 'Hava', 'BEKTAŞ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (15, 1, 1, 1, NULL, 4, 'Nuray', 'KAYA', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (16, 1, 1, 1, NULL, 3, 'İzzet', 'ÇELEĞEN', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (18, 1, 1, 1, NULL, 2, 'Özlem Ergül', 'ERKEÇ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (20, 1, 1, 1, NULL, 3, 'Mustafa', 'BİLİCİ', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (21, 1, 1, 3, NULL, 1, 'Resül', 'EVİS', 'resul.evis@yyu.edu.tr', '05366373523', 0);
INSERT INTO `tb_ogretim_elemanlari` VALUES (22, 1, 1, 1, '', 2, 'Tahir', 'ÇAKIR', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (23, 1, 1, 1, NULL, 2, 'Hamit Hakan', 'ALP', NULL, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (25, 1, 1, 1, NULL, 1, 'Halil', 'ÖZKOL', 'mail@mail.com', '5555555555', 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (26, 1, 1, 1, NULL, 2, 'Zübeyir', 'HUYUT', 'mail@mail.com', '555 555 5555', 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (27, 1, NULL, 1, NULL, 1, 'Deneme', 'Deneme', 'deneme@yyu.edu.tr', '5444961144', 1);

-- ----------------------------
-- Table structure for tb_programlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_programlar`;
CREATE TABLE `tb_programlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `bolum_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `varsayilan` tinyint NULL DEFAULT 0,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_programlar
-- ----------------------------

-- ----------------------------
-- Table structure for tb_rol_yetkiler
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkiler`;
CREATE TABLE `tb_rol_yetkiler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `modul_id` int NULL DEFAULT NULL,
  `islem_turu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1091 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rol_yetkiler
-- ----------------------------
INSERT INTO `tb_rol_yetkiler` VALUES (44, 14, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (45, 14, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (46, 15, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (47, 15, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (68, 16, 3, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (69, 16, 32, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (75, 16, 49, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (111, 16, 55, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (112, 16, 55, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (113, 16, 55, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (114, 16, 54, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (115, 16, 54, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (116, 16, 54, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (117, 16, 53, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (118, 16, 53, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (119, 16, 53, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (120, 16, 56, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (121, 16, 56, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (122, 16, 56, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (123, 16, 57, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (124, 16, 57, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (125, 16, 57, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (126, 16, 59, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (127, 16, 59, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (128, 16, 59, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (129, 16, 60, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (130, 16, 60, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (131, 16, 60, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (132, 16, 61, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (133, 16, 61, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (134, 16, 61, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (135, 16, 62, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (136, 16, 62, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (137, 16, 62, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (138, 16, 2, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (139, 17, 2, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (140, 17, 2, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (141, 17, 2, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (142, 17, 2, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (143, 17, 2, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (144, 17, 3, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (145, 17, 3, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (146, 17, 3, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (147, 17, 3, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (148, 17, 3, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (149, 17, 3, 15);
INSERT INTO `tb_rol_yetkiler` VALUES (150, 17, 32, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (151, 17, 32, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (152, 17, 32, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (153, 17, 32, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (154, 17, 32, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (161, 17, 49, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (162, 17, 49, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (163, 17, 49, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (164, 17, 49, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (165, 17, 49, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (186, 17, 53, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (187, 17, 53, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (188, 17, 53, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (189, 17, 53, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (190, 17, 53, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (191, 17, 54, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (192, 17, 54, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (193, 17, 54, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (194, 17, 54, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (195, 17, 54, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (196, 17, 55, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (197, 17, 55, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (198, 17, 55, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (199, 17, 55, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (200, 17, 55, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (201, 17, 56, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (202, 17, 56, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (203, 17, 56, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (204, 17, 56, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (205, 17, 56, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (206, 17, 57, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (207, 17, 57, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (208, 17, 57, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (209, 17, 57, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (210, 17, 57, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (211, 17, 58, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (212, 17, 58, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (213, 17, 58, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (214, 17, 58, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (215, 17, 58, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (216, 17, 59, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (217, 17, 59, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (218, 17, 59, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (219, 17, 59, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (220, 17, 59, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (221, 17, 60, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (222, 17, 60, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (223, 17, 60, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (224, 17, 60, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (225, 17, 60, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (226, 17, 61, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (227, 17, 61, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (228, 17, 61, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (229, 17, 61, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (230, 17, 61, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (231, 17, 62, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (232, 17, 62, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (233, 17, 62, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (234, 17, 62, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (235, 17, 62, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (236, 17, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (237, 17, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (277, 17, 69, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (278, 17, 69, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (279, 17, 69, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (280, 17, 69, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (281, 17, 69, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (282, 17, 69, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (283, 17, 69, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (291, 16, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (292, 16, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (303, 17, 48, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (304, 17, 48, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (305, 17, 48, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (306, 17, 48, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (307, 17, 48, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (308, 17, 48, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (309, 17, 48, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (310, 17, 48, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (311, 17, 48, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (401, 16, 63, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (402, 16, 63, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (403, 16, 63, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (404, 16, 63, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (405, 16, 63, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (406, 16, 63, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (407, 15, 63, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (408, 15, 63, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (409, 15, 63, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (410, 15, 63, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (411, 15, 63, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (412, 15, 63, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (419, 14, 69, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (420, 14, 69, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (421, 14, 69, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (422, 14, 69, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (423, 14, 69, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (424, 14, 69, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (425, 14, 69, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (426, 16, 70, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (427, 16, 70, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (428, 16, 70, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (429, 16, 70, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (430, 16, 70, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (431, 16, 70, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (432, 15, 70, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (433, 15, 70, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (434, 15, 70, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (435, 15, 70, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (436, 15, 70, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (437, 15, 70, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (438, 14, 70, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (439, 14, 70, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (440, 14, 70, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (441, 14, 70, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (442, 14, 70, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (443, 14, 70, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (455, 15, 50, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (456, 15, 50, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (457, 15, 50, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (458, 15, 50, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (459, 15, 50, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (460, 15, 50, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (461, 15, 50, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (462, 15, 50, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (463, 15, 50, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (464, 15, 50, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (477, 17, 50, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (478, 17, 50, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (479, 17, 50, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (480, 17, 50, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (481, 17, 50, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (482, 17, 50, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (483, 17, 50, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (484, 17, 50, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (485, 17, 50, 27);
INSERT INTO `tb_rol_yetkiler` VALUES (486, 17, 50, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (487, 17, 50, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (488, 17, 50, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (489, 17, 50, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (538, 14, 52, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (539, 14, 52, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (540, 14, 52, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (541, 14, 52, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (542, 14, 52, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (543, 15, 52, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (544, 15, 52, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (545, 15, 52, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (546, 15, 52, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (547, 15, 52, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (548, 16, 52, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (549, 16, 52, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (550, 16, 52, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (551, 16, 52, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (552, 16, 52, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (553, 16, 52, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (554, 17, 52, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (555, 17, 52, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (556, 17, 52, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (557, 17, 52, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (558, 17, 52, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (559, 17, 52, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (560, 17, 52, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (561, 17, 63, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (562, 17, 63, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (563, 17, 63, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (564, 17, 63, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (565, 17, 63, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (566, 17, 63, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (567, 17, 63, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (568, 16, 69, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (569, 16, 69, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (570, 16, 69, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (571, 16, 69, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (572, 16, 69, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (573, 16, 69, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (574, 16, 69, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (575, 15, 69, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (576, 15, 69, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (577, 15, 69, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (578, 15, 69, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (579, 15, 69, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (580, 17, 51, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (581, 17, 51, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (582, 17, 51, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (583, 17, 51, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (584, 17, 51, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (585, 17, 51, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (586, 17, 51, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (587, 17, 51, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (588, 17, 51, 27);
INSERT INTO `tb_rol_yetkiler` VALUES (589, 17, 51, 28);
INSERT INTO `tb_rol_yetkiler` VALUES (590, 17, 51, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (591, 17, 51, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (592, 17, 51, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (593, 17, 51, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (594, 17, 51, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (595, 17, 51, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (596, 17, 51, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (597, 17, 51, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (598, 15, 66, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (599, 15, 66, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (600, 15, 66, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (601, 15, 66, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (602, 15, 66, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (603, 15, 66, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (604, 15, 65, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (605, 15, 65, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (606, 15, 65, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (607, 15, 65, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (608, 15, 65, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (609, 15, 65, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (628, 14, 62, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (629, 14, 62, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (630, 14, 62, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (647, 14, 50, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (648, 14, 50, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (649, 14, 50, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (650, 14, 50, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (651, 14, 50, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (652, 14, 50, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (653, 14, 50, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (654, 14, 50, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (655, 14, 50, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (656, 14, 50, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (657, 14, 50, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (658, 14, 50, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (659, 14, 50, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (692, 15, 48, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (693, 15, 48, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (694, 15, 48, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (695, 15, 48, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (696, 15, 48, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (697, 15, 48, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (698, 15, 48, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (699, 15, 48, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (700, 15, 48, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (701, 15, 48, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (737, 14, 51, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (738, 14, 51, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (739, 14, 51, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (740, 14, 51, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (741, 14, 51, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (742, 14, 51, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (743, 14, 51, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (744, 14, 51, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (745, 14, 51, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (746, 14, 51, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (747, 14, 51, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (748, 14, 51, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (749, 14, 51, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (750, 14, 51, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (751, 14, 51, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (752, 14, 51, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (753, 14, 51, 38);
INSERT INTO `tb_rol_yetkiler` VALUES (754, 15, 51, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (755, 15, 51, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (756, 15, 51, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (757, 15, 51, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (758, 15, 51, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (759, 15, 51, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (760, 15, 51, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (761, 15, 51, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (762, 15, 51, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (763, 15, 51, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (764, 15, 51, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (765, 15, 51, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (766, 15, 51, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (767, 15, 51, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (768, 15, 51, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (769, 15, 51, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (827, 16, 65, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (828, 16, 65, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (829, 16, 65, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (830, 16, 65, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (831, 16, 65, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (832, 16, 65, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (833, 16, 66, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (834, 16, 66, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (835, 16, 66, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (836, 16, 66, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (837, 16, 66, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (838, 14, 66, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (839, 14, 66, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (840, 14, 66, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (841, 14, 66, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (842, 14, 66, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (843, 14, 66, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (844, 14, 65, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (845, 14, 65, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (846, 14, 65, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (847, 14, 65, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (848, 14, 65, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (849, 14, 65, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (850, 14, 65, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (851, 14, 48, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (852, 14, 48, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (853, 14, 48, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (854, 14, 48, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (855, 14, 48, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (856, 14, 48, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (857, 14, 48, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (858, 14, 48, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (859, 14, 48, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (860, 14, 48, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (861, 14, 48, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (862, 14, 48, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (863, 14, 48, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (864, 14, 48, 39);
INSERT INTO `tb_rol_yetkiler` VALUES (865, 14, 48, 40);
INSERT INTO `tb_rol_yetkiler` VALUES (866, 14, 63, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (867, 14, 63, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (868, 14, 63, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (869, 14, 63, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (870, 14, 63, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (871, 14, 63, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (872, 14, 63, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (873, 14, 63, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (874, 16, 50, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (875, 16, 50, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (876, 16, 50, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (877, 16, 50, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (878, 16, 50, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (879, 16, 50, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (880, 16, 50, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (881, 16, 50, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (882, 16, 50, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (883, 16, 50, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (884, 16, 50, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (885, 16, 50, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (886, 16, 50, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (904, 16, 51, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (905, 16, 51, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (906, 16, 51, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (907, 16, 51, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (908, 16, 51, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (909, 16, 51, 24);
INSERT INTO `tb_rol_yetkiler` VALUES (910, 16, 51, 25);
INSERT INTO `tb_rol_yetkiler` VALUES (911, 16, 51, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (912, 16, 51, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (913, 16, 51, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (914, 16, 51, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (915, 16, 51, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (916, 16, 51, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (917, 16, 51, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (918, 16, 51, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (919, 16, 51, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (920, 16, 51, 38);
INSERT INTO `tb_rol_yetkiler` VALUES (921, 16, 51, 41);
INSERT INTO `tb_rol_yetkiler` VALUES (922, 16, 48, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (923, 16, 48, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (924, 16, 48, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (925, 16, 48, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (926, 16, 48, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (927, 16, 48, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (928, 16, 48, 26);
INSERT INTO `tb_rol_yetkiler` VALUES (929, 16, 48, 29);
INSERT INTO `tb_rol_yetkiler` VALUES (930, 16, 48, 30);
INSERT INTO `tb_rol_yetkiler` VALUES (931, 16, 48, 31);
INSERT INTO `tb_rol_yetkiler` VALUES (932, 16, 48, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (933, 16, 48, 33);
INSERT INTO `tb_rol_yetkiler` VALUES (934, 16, 48, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (935, 16, 48, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (936, 16, 48, 38);
INSERT INTO `tb_rol_yetkiler` VALUES (937, 16, 73, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (938, 16, 73, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (939, 16, 73, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (940, 16, 73, 41);
INSERT INTO `tb_rol_yetkiler` VALUES (947, 15, 74, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (948, 15, 74, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (949, 15, 74, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (950, 15, 74, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (951, 15, 74, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (952, 15, 74, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (953, 15, 74, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (954, 16, 74, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (955, 16, 74, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (956, 16, 74, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (957, 16, 74, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (958, 16, 74, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (959, 16, 74, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (960, 16, 74, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (961, 14, 74, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (962, 14, 74, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (963, 14, 74, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (964, 14, 74, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (965, 14, 74, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (966, 14, 74, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (967, 14, 74, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (968, 16, 75, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (969, 16, 75, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (970, 16, 75, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (971, 16, 75, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (972, 16, 75, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (973, 16, 75, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (974, 16, 75, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (975, 16, 75, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (976, 14, 75, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (977, 14, 75, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (978, 14, 75, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (979, 14, 75, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (980, 14, 75, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (981, 14, 75, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (982, 14, 75, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (983, 14, 75, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (984, 15, 75, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (985, 15, 75, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (986, 15, 75, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (987, 15, 75, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (988, 15, 75, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (989, 15, 75, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (990, 15, 75, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (991, 15, 75, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1013, 16, 77, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1014, 16, 77, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1015, 16, 77, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1016, 16, 77, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1017, 16, 77, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1018, 16, 77, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (1019, 16, 77, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1020, 15, 77, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1021, 15, 77, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1022, 15, 77, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1023, 15, 77, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1024, 15, 77, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1025, 15, 77, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (1026, 15, 77, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1027, 14, 77, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1028, 14, 77, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1029, 14, 77, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1030, 14, 77, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1031, 14, 77, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1032, 14, 77, 34);
INSERT INTO `tb_rol_yetkiler` VALUES (1033, 14, 77, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1034, 16, 78, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1035, 16, 78, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1036, 16, 78, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1037, 16, 78, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1038, 16, 78, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1039, 16, 78, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1040, 16, 78, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1041, 16, 78, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1042, 14, 78, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1043, 14, 78, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1044, 14, 78, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1045, 14, 78, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1046, 14, 78, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1047, 14, 78, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1048, 14, 78, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1049, 14, 78, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1050, 15, 78, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1051, 15, 78, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1052, 15, 78, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1053, 15, 78, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1054, 15, 78, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1055, 15, 78, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1056, 15, 78, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1057, 15, 78, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1065, 14, 76, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1066, 14, 76, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1067, 14, 76, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1068, 14, 76, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1069, 14, 76, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1070, 14, 76, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1071, 14, 76, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1072, 14, 76, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1073, 15, 76, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1074, 15, 76, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1075, 15, 76, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1076, 15, 76, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1077, 15, 76, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1078, 15, 76, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1079, 15, 76, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1080, 15, 76, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1081, 16, 76, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1082, 16, 76, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (1083, 16, 76, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (1084, 16, 76, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (1085, 16, 76, 23);
INSERT INTO `tb_rol_yetkiler` VALUES (1086, 16, 76, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (1087, 16, 76, 35);
INSERT INTO `tb_rol_yetkiler` VALUES (1088, 16, 76, 36);
INSERT INTO `tb_rol_yetkiler` VALUES (1089, 14, 91, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (1090, 1, 1, 1);

-- ----------------------------
-- Table structure for tb_rol_yetkili_firmalar
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkili_firmalar`;
CREATE TABLE `tb_rol_yetkili_firmalar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `firma_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tb_rol_yetkili_firmalar
-- ----------------------------
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (18, 2, 4);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (17, 2, 3);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (16, 2, 2);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (8, 8, 1);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (9, 8, 32);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (15, 2, 1);

-- ----------------------------
-- Table structure for tb_rol_yetkili_subeler
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkili_subeler`;
CREATE TABLE `tb_rol_yetkili_subeler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `sube_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tb_rol_yetkili_subeler
-- ----------------------------
INSERT INTO `tb_rol_yetkili_subeler` VALUES (11, 14, 2);
INSERT INTO `tb_rol_yetkili_subeler` VALUES (9, 14, 3);

-- ----------------------------
-- Table structure for tb_roller
-- ----------------------------
DROP TABLE IF EXISTS `tb_roller`;
CREATE TABLE `tb_roller`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `varsayilan` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_roller
-- ----------------------------
INSERT INTO `tb_roller` VALUES (1, 'Varsayılan', 1);
INSERT INTO `tb_roller` VALUES (14, 'Şube Yetkisi', 0);
INSERT INTO `tb_roller` VALUES (15, 'Şube Personeli̇', 0);
INSERT INTO `tb_roller` VALUES (16, 'Merkez Yetkilisi', 0);
INSERT INTO `tb_roller` VALUES (17, 'Supervi̇sor', 0);
INSERT INTO `tb_roller` VALUES (18, 'Soru Yönetimi', 0);

-- ----------------------------
-- Table structure for tb_rotasyonlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_rotasyonlar`;
CREATE TABLE `tb_rotasyonlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `rotasyon_uzmanlik_dali_id` int NULL DEFAULT NULL,
  `sure_ay` tinyint NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rotasyonlar
-- ----------------------------
INSERT INTO `tb_rotasyonlar` VALUES (1, 1, 1, 57, 4, 1);
INSERT INTO `tb_rotasyonlar` VALUES (2, 1, 1, 1, 2, 0);
INSERT INTO `tb_rotasyonlar` VALUES (3, 1, 1, 1, 5, 0);
INSERT INTO `tb_rotasyonlar` VALUES (4, 1, 1, 32, 4, 1);
INSERT INTO `tb_rotasyonlar` VALUES (5, 1, 1, 61, 3, 1);
INSERT INTO `tb_rotasyonlar` VALUES (6, 1, 1, 82, 2, 1);
INSERT INTO `tb_rotasyonlar` VALUES (7, 1, 1, 3, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (8, 1, 1, 50, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (9, 1, 1, 36, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (10, 1, 1, 63, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (11, 1, 1, 68, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (12, 1, 1, 42, 1, 1);
INSERT INTO `tb_rotasyonlar` VALUES (13, 1, 1, 47, 1, 1);

-- ----------------------------
-- Table structure for tb_sinav_kategorileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinav_kategorileri`;
CREATE TABLE `tb_sinav_kategorileri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinav_kategorileri
-- ----------------------------
INSERT INTO `tb_sinav_kategorileri` VALUES (1, 'Formatif Sınav', 1);
INSERT INTO `tb_sinav_kategorileri` VALUES (2, 'Summatif Sınav', 1);

-- ----------------------------
-- Table structure for tb_sistem_kullanici
-- ----------------------------
DROP TABLE IF EXISTS `tb_sistem_kullanici`;
CREATE TABLE `tb_sistem_kullanici`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `telefon` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int NOT NULL DEFAULT 1,
  `super` tinyint NULL DEFAULT 0,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'resim_yok.jpg',
  `tc_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `dogum_tarihi` datetime NULL DEFAULT NULL,
  `universiteler` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sistem_kullanici
-- ----------------------------
INSERT INTO `tb_sistem_kullanici` VALUES (19, 'Serbest', 'ZİYANAK', 'serbest.ziyanak@gmail.com', '0(544) 496-1144', 'bc000ebca4a5687a014d9c9f94da86e8', 14, 1, '19.jpg', '45982964018', '1989-01-20 00:00:00', '1');
INSERT INTO `tb_sistem_kullanici` VALUES (28, 'Fırat', 'KAPAR', 'frtkpr@gmail.com', '0(542) 220-5037', '8be2809a53bb3dd3638f9e5b82cd4902', 14, 1, '28.png', '11111111111', '1970-01-01 00:00:00', '1');
INSERT INTO `tb_sistem_kullanici` VALUES (30, 'Resul', 'EVİS', 'resulevis60@gmail.com', '0(555) 555-5555', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 'resim_yok.jpg', '12345678910', '1988-11-11 00:00:00', '1');

-- ----------------------------
-- Table structure for tb_sistem_kullanici_yetkili_birimler
-- ----------------------------
DROP TABLE IF EXISTS `tb_sistem_kullanici_yetkili_birimler`;
CREATE TABLE `tb_sistem_kullanici_yetkili_birimler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `birim_id` int NULL DEFAULT NULL,
  `kullanici_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sistem_kullanici_yetkili_birimler
-- ----------------------------
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (1, 1, 1);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (2, 2, 1);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (3, 1, 2);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (4, 1, 4);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (5, 1, 7);

-- ----------------------------
-- Table structure for tb_soru_bankasi
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_bankasi`;
CREATE TABLE `tb_soru_bankasi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `soru` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `soru_turu_id` int NULL DEFAULT NULL,
  `soru_dosyasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `mufredat_id` int NULL DEFAULT NULL,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  `zorluk_derecesi` tinyint NULL DEFAULT NULL,
  `puan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_bankasi
-- ----------------------------
INSERT INTO `tb_soru_bankasi` VALUES (1, 'Soru ekindeb bulunan resimde ne görüyorsunuz?', 2, '6330bf2734b39.jpg', 5, 1, 1, 1, NULL, 5, 10);

-- ----------------------------
-- Table structure for tb_soru_secenekleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_secenekleri`;
CREATE TABLE `tb_soru_secenekleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `soru_id` int NULL DEFAULT NULL,
  `secenek` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `dogru_secenek` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_secenekleri
-- ----------------------------
INSERT INTO `tb_soru_secenekleri` VALUES (1, 1, 'İnsan', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (2, 1, 'Doğa', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (3, 1, 'Gökyüzü', 1);

-- ----------------------------
-- Table structure for tb_soru_turleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_turleri`;
CREATE TABLE `tb_soru_turleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `coklu_secenek` tinyint NULL DEFAULT 0,
  `metin` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_turleri
-- ----------------------------
INSERT INTO `tb_soru_turleri` VALUES (1, 1, 'Çoktan Tek Seçmeli', 0, 0);
INSERT INTO `tb_soru_turleri` VALUES (2, 1, 'Çoktan Çok Seçmeli', 1, 0);
INSERT INTO `tb_soru_turleri` VALUES (3, 1, 'Açık Uçlu', 0, 1);

-- ----------------------------
-- Table structure for tb_universiteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_universiteler`;
CREATE TABLE `tb_universiteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_universiteler
-- ----------------------------
INSERT INTO `tb_universiteler` VALUES (1, 'Van Yüzüncü Yıl Üniversitesi', 1);
INSERT INTO `tb_universiteler` VALUES (2, 'İstanbul Teknik Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (3, 'Hacattepe Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (4, 'Yıldız Teknik Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (5, 'Dicle Üniversitesi', 1);

-- ----------------------------
-- Table structure for tb_unvanlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_unvanlar`;
CREATE TABLE `tb_unvanlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_unvanlar
-- ----------------------------
INSERT INTO `tb_unvanlar` VALUES (1, 'Prof. Dr.', 1);
INSERT INTO `tb_unvanlar` VALUES (2, 'Doc. Dr.', 2);
INSERT INTO `tb_unvanlar` VALUES (3, 'Dr. Öğr. Üyesi', 3);
INSERT INTO `tb_unvanlar` VALUES (4, 'Öğr. Gör. Dr.', 4);
INSERT INTO `tb_unvanlar` VALUES (5, 'Arş. Gör. Dr.', 5);
INSERT INTO `tb_unvanlar` VALUES (6, 'Öğr. Gör.', 6);
INSERT INTO `tb_unvanlar` VALUES (7, 'Arş. Gör.', 7);

-- ----------------------------
-- Table structure for tb_uzmanlik_dallari
-- ----------------------------
DROP TABLE IF EXISTS `tb_uzmanlik_dallari`;
CREATE TABLE `tb_uzmanlik_dallari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tukmos_kodu` varchar(5) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `varsayilan` tinyint NULL DEFAULT 0,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_uzmanlik_dallari
-- ----------------------------
INSERT INTO `tb_uzmanlik_dallari` VALUES (1, '050', 'Aile Hekimliği', 1, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (3, '010', 'Acil Tıp', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (4, '020', 'Adli Tıp', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (5, '030', 'Ağız, Diş ve Çene Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (6, '035', 'Ağız, Diş ve Çene Radyolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (7, '040', 'Ağız, Yüz ve Çene Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (8, '060', 'Algoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (9, '070', 'Anatomi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (10, '080', 'Anesteziyoloji ve Reanimasyon', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (11, '090', 'Askeri Psikiyatri', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (12, '100', 'Askeri Sağlık Hizmetleri', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (13, '110', 'Beyin ve Sinir Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (14, '120', 'Cerrahi Onkoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (15, '130', 'Çevre Sağlığı', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (16, '140', 'Çocuk Acil', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (17, '150', 'Çocuk Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (18, '160', 'Çocuk Endokrinolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (19, '170', 'Çocuk Enfeksiyon Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (20, '180', 'Çocuk Gastroenterolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (21, '190', 'Çocuk Genetik Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (22, '200', 'Çocuk Göğüs Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (23, '210', 'Çocuk Hematolojisi ve Onkolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (24, '220', 'Çocuk İmmünolojisi ve Alerji Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (25, '230', 'Çocuk Kalp ve Damar Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (26, '240', 'Çocuk Kardiyolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (27, '250', 'Çocuk Metabolizma Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (28, '260', 'Çocuk Nefrolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (29, '270', 'Çocuk Nörolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (30, '280', 'Çocuk Radyolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (31, '290', 'Çocuk Romatolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (32, '300', 'Çocuk Sağlığı ve Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (33, '310', 'Çocuk Ürolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (34, '320', 'Çocuk ve Ergen Ruh Sağlığı ve Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (35, '330', 'Çocuk Yoğun Bakımı', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (36, '340', 'Deri ve Zührevi Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (37, '350', 'El Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (38, '360', 'Endodonti', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (39, '370', 'Endokrinoloji ve Metabolizma Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (40, '380', 'Enfeksiyon Hastalıkları ve Klinik Mikrobiyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (41, '390', 'Epidemiyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (42, '400', 'Fiziksel Tıp ve Rehabilitasyon', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (43, '410', 'Fizyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (44, '420', 'Gastroenteroloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (45, '430', 'Gastroenteroloji Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (46, '435', 'Gelişimsel Pediatri', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (47, '440', 'Genel Cerrahi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (48, '450', 'Geriatri', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (49, '460', 'Göğüs Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (50, '470', 'Göğüs Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (51, '480', 'Göz Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (52, '490', 'Halk Sağlığı', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (53, '500', 'Harp Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (54, '510', 'Hava ve Uzay Hekimliği', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (55, '520', 'Hematoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (56, '530', 'Histoloji ve Embriyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (57, '540', 'İç Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (58, '550', 'İmmünoloji ve Alerji Hastalıkları ', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (59, '560', 'İş ve Meslek Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (60, '570', 'Jinekolojik Onkoloji Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (61, '580', 'Kadın Hastalıkları ve Doğum', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (62, '590', 'Kalp ve Damar Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (63, '600', 'Kardiyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (64, '610', 'Klinik Nörofizyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (65, '620', 'Kulak Burun Boğaz Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (66, '630', 'Nefroloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (67, '640', 'Neonatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (68, '650', 'Nöroloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (69, '660', 'Nükleer Tıp', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (70, '670', 'Ortodonti', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (71, '680', 'Ortopedi ve Travmatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (72, '690', 'Çocuk Diş Hekimliği', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (73, '700', 'Periferik Damar Cerrahisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (74, '710', 'Perinatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (75, '720', 'Periodontoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (76, '730', 'Plastik, Rekonstrüktif ve Estetik Cerrahi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (77, '740', 'Protetik Diş Tedavisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (78, '750', 'Radyasyon Onkolojisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (79, '760', 'Radyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (80, '765', 'Restoratif Diş Tedavisi', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (81, '770', 'Romatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (82, '780', 'Ruh Sağlığı ve Hastalıkları', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (83, '790', 'Sitopatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (84, '800', 'Spor Hekimliği', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (85, '810', 'Sualtı Hekimliği ve Hiperbarik Tıp', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (86, '820', 'Temel İmmünoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (87, '830', 'Tıbbi Biyokimya', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (88, '840', 'Tıbbi Ekoloji ve Hidroklimatoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (89, '850', 'Tıbbi Farmakoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (90, '860', 'Tıbbi Genetik', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (91, '870', 'Tıbbi Mikoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (92, '880', 'Tıbbi Mikrobiyoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (93, '890', 'Tıbbi Onkoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (94, '900', 'Tıbbi Parazitoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (95, '910', 'Tıbbi Patoloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (96, '920', 'Tıbbi Viroloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (97, '930', 'Üroloji', 0, 1);
INSERT INTO `tb_uzmanlik_dallari` VALUES (98, '940', 'Yoğun Bakım', 0, 1);

-- ----------------------------
-- Table structure for tb_yetki
-- ----------------------------
DROP TABLE IF EXISTS `tb_yetki`;
CREATE TABLE `tb_yetki`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kullanici_id` int NULL DEFAULT NULL,
  `modul_id` int NULL DEFAULT NULL,
  `yetki_islem_turu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yetki
-- ----------------------------

-- ----------------------------
-- Table structure for tb_yetki_islem_turleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_yetki_islem_turleri`;
CREATE TABLE `tb_yetki_islem_turleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `gorunen_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yetki_islem_turleri
-- ----------------------------
INSERT INTO `tb_yetki_islem_turleri` VALUES (1, 'goruntule', 'Görüntüle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (2, 'ekle', 'Ekle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (3, 'sil', 'Sil');
INSERT INTO `tb_yetki_islem_turleri` VALUES (4, 'duzenle', 'Düzenle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (5, 'kaydet', 'Kaydet');
INSERT INTO `tb_yetki_islem_turleri` VALUES (6, 'rapor', 'Rapor Al');
INSERT INTO `tb_yetki_islem_turleri` VALUES (10, 'super', 'Super Yetki Ataması');
INSERT INTO `tb_yetki_islem_turleri` VALUES (11, 'rol-degistir', 'Kullanıcı Rol Değiştir');
INSERT INTO `tb_yetki_islem_turleri` VALUES (12, 'birim-ata', 'Birim Yetkisi Ver');
INSERT INTO `tb_yetki_islem_turleri` VALUES (15, 'rol-islem-ata', 'Rol Yetkilendirme');
INSERT INTO `tb_yetki_islem_turleri` VALUES (22, 'yedek_al', 'Yedek Alma');
INSERT INTO `tb_yetki_islem_turleri` VALUES (23, 'detaylar', 'Detaylar');
INSERT INTO `tb_yetki_islem_turleri` VALUES (24, 'arac_satis', 'Araç Satış');
INSERT INTO `tb_yetki_islem_turleri` VALUES (25, 'prosesler', 'Prosesler');
INSERT INTO `tb_yetki_islem_turleri` VALUES (26, 'arac_sec', 'Araç Seç Butonu');
INSERT INTO `tb_yetki_islem_turleri` VALUES (27, 'onayla', 'Onayla');
INSERT INTO `tb_yetki_islem_turleri` VALUES (28, 'onay_kaldir', 'Onay Kaldır');
INSERT INTO `tb_yetki_islem_turleri` VALUES (29, 'satis_sozlesmesi', 'Satış Sözleşmesi');
INSERT INTO `tb_yetki_islem_turleri` VALUES (30, 'kapak_yazdir', 'Kapak Yazdır');
INSERT INTO `tb_yetki_islem_turleri` VALUES (31, 'qr_kod_yazdir', 'QR Kod Yazdır');
INSERT INTO `tb_yetki_islem_turleri` VALUES (32, 'ara', 'Ara');
INSERT INTO `tb_yetki_islem_turleri` VALUES (33, 'hizmet_sozlesmesi', 'Hizmet Sözleşmesi');
INSERT INTO `tb_yetki_islem_turleri` VALUES (34, 'onaya_gonder', 'Onaya Gönder');
INSERT INTO `tb_yetki_islem_turleri` VALUES (35, 'whatsapp', 'Whatsapp');
INSERT INTO `tb_yetki_islem_turleri` VALUES (36, 'randevu_olustur', 'Randevu Oluştur');
INSERT INTO `tb_yetki_islem_turleri` VALUES (38, 'medya_sil', 'Medya Sil');
INSERT INTO `tb_yetki_islem_turleri` VALUES (39, 'ekstra_hizmet_bedeli_onayla', 'Ekstra Hizmet Bedelini Onayla');
INSERT INTO `tb_yetki_islem_turleri` VALUES (40, 'ekstra_hizmet_bedeli_onay_kaldir', 'Ekstra Hizmet Bedeli Onayını Kaldır');
INSERT INTO `tb_yetki_islem_turleri` VALUES (41, 'yayindan_kaldir', 'Yayından Kaldır');

-- ----------------------------
-- Table structure for tb_yontemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_yontemler`;
CREATE TABLE `tb_yontemler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kodu` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yontemler
-- ----------------------------
INSERT INTO `tb_yontemler` VALUES (1, 'YE', 'Yapılandırılmış Eğitim Etkinlikleri');
INSERT INTO `tb_yontemler` VALUES (2, 'UE', 'Uygulamalı Eğitim Etkinlikleri');
INSERT INTO `tb_yontemler` VALUES (3, 'BE', 'Bağımsız ve Keşfederek Öğrenme Etkinlikleri');

SET FOREIGN_KEY_CHECKS = 1;
