/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : hekim_asistan

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 28/12/2022 17:32:11
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
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `tb_modul` VALUES (117, 'Öğretim Elemanları', 'ogretimElemanlari', 'ogretimElemanlari', 'fas fa-user-md text-blue', 1, 0, 0, 25, 0, 0);
INSERT INTO `tb_modul` VALUES (125, 'Organizasyon Şeması', NULL, NULL, 'fas fa-sitemap text-green', 1, 0, 1, 5, 0, 0);
INSERT INTO `tb_modul` VALUES (130, 'Öğrenci İşlemleri', NULL, NULL, 'fas fa-users text-danger', 1, 0, 1, 6, 0, 0);
INSERT INTO `tb_modul` VALUES (131, 'Öğrenciler', 'ogrenciler', 'ogrenciler', 'fas fa-users text-info', 1, 130, 0, 6, 0, 0);
INSERT INTO `tb_modul` VALUES (133, 'Müfredat', 'mufredat', 'mufredat', 'fas fa-list-alt', 1, 0, 0, 21, 0, 0);
INSERT INTO `tb_modul` VALUES (137, 'Uzmanlık Dalları', 'uzmanlikDallari', 'uzmanlikDallari', 'fas fa-book-reader text-yellow', 1, 125, 0, 1, 0, 0);
INSERT INTO `tb_modul` VALUES (138, 'Rotasyonlar', 'rotasyonlar', 'rotasyonlar', 'fas fa-tasks text-yellow', 1, 0, 0, 20, 0, 0);
INSERT INTO `tb_modul` VALUES (139, 'Sınav Kategorileri', 'sinavKategorileri', 'sinavKategorileri', 'far fa-circle text-orange', 1, 0, 0, 31, 0, 0);
INSERT INTO `tb_modul` VALUES (141, 'Sınavlar', 'ogrenciSinavlari', 'ogrenciSinavlari', 'fas fa-shapes text-green', 1, 130, 0, 7, 0, 0);
INSERT INTO `tb_modul` VALUES (142, 'Makaleler', 'ogrenciMakaleleri', 'ogrenciMakaleleri', 'far fa-newspaper text-primary', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (145, 'Bilimsel Toplantılar', 'ogrenciBilimselToplantilar', 'ogrenciBilimselToplantilar', 'fas fa-calendar-check text-warning', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (148, 'Klinik Sunuları', 'ogrenciKlinikSunulari', 'ogrenciKlinikSunulari', 'fas fa-file-powerpoint text-info', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (149, 'Tezler', 'ogrenciTezleri', 'ogrenciTezleri', 'fas fa-book text-orange', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (150, 'Tez İzlemeleri', 'ogrenciTezIzlemeleri', 'ogrenciTezIzlemeleri', 'fas fa-book text-primary', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (151, 'Müfredat Değerlendirme', 'ogrenciMufredatDegerlendirme', 'ogrenciMufredatDegerlendirme', 'fas fa-clipboard-list ', 1, 130, 0, 8, 0, 0);
INSERT INTO `tb_modul` VALUES (152, 'Öğrenci Profil', 'ogrenciProfil', 'ogrenciProfil', 'fas fa-id-card text-olive', 1, 0, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for tb_modul_yetki_islemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul_yetki_islemler`;
CREATE TABLE `tb_modul_yetki_islemler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modul_id` int NULL DEFAULT NULL,
  `yetki_islem_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 910 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `tb_modul_yetki_islemler` VALUES (786, 141, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (787, 141, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (788, 141, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (789, 141, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (790, 141, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (796, 150, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (797, 150, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (798, 150, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (799, 150, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (800, 150, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (801, 148, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (802, 148, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (803, 148, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (804, 148, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (805, 148, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (806, 145, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (807, 145, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (808, 145, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (809, 145, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (810, 145, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (811, 142, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (812, 142, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (813, 142, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (814, 142, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (815, 142, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (816, 138, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (817, 138, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (818, 138, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (819, 138, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (820, 138, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (826, 139, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (827, 139, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (828, 139, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (829, 139, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (830, 139, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (831, 137, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (832, 137, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (833, 137, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (834, 137, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (835, 137, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (841, 109, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (842, 109, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (843, 109, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (844, 109, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (845, 109, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (852, 149, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (853, 149, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (854, 149, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (855, 149, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (856, 149, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (857, 131, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (858, 131, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (859, 131, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (860, 131, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (861, 131, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (862, 131, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (863, 117, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (864, 117, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (865, 117, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (866, 117, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (867, 117, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (868, 117, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (882, 151, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (883, 151, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (884, 151, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (885, 151, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (886, 151, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (887, 151, 42);
INSERT INTO `tb_modul_yetki_islemler` VALUES (903, 133, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (904, 133, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (905, 133, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (906, 133, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (907, 133, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (908, 133, 43);
INSERT INTO `tb_modul_yetki_islemler` VALUES (909, 133, 44);

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
  `kategori` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mufredat
-- ----------------------------
INSERT INTO `tb_mufredat` VALUES (52, 0, 'Yöneticilik Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (53, 0, 'Ekip Üyeliği Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (54, 0, 'Sağlık Koruyuculuğu Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (55, 0, 'İletişim Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (56, 0, 'Değer ve Sorumluluk Sahibi Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (57, 0, 'Öğrenen ve Öğreten Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (58, 0, 'Hizmet Sunuculuğu Yetkinliği', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (59, 58, 'Klinik Yetkinlikler', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (60, 58, 'Girişimsel Yetkinlikler', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (61, 59, 'Hastalık Yönetimi', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (71, 61, 'AİLEVİ AKDENİZ ATEŞİ (FMF)', 1, -1, 'ETT', 3, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (72, 61, 'AKUT BATIN ', 1, -1, 'B', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (73, 61, 'AKUT ROMATİZMAL ATEŞ (ARA) ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (74, 61, 'AKUT SOLUNUM YETMEZLİĞİ ', 1, -1, 'K,T,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (75, 61, 'AKUT VE KRONİK BÖBREK YETMEZLİĞİ', 1, -1, 'K,T,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (76, 61, 'ALERJİSİ OLAN HASTA ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (77, 61, 'ALT SOLUNUM YOLU ENFEKSİYONU', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (78, 61, 'AMFİZEM ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (79, 61, 'ANEMİ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (80, 61, 'ANKSİYETE BOZUKLUĞU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (81, 61, 'ANORMAL VAJİNAL KANAMA', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (82, 61, 'ASİT', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (83, 61, 'ASTIM  ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (84, 61, 'BAĞ DOKUSU HASTALIKLARI', 1, -1, 'B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (85, 61, 'BENİGN PROSTAT HİPERTROFİSİ', 1, -1, 'T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (86, 61, 'BESLENME BOZUKLUĞU ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (87, 61, 'BRONŞİEKTAZİ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (88, 61, 'ÇEVRE KAYNAKLI HASTALIKLAR', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (89, 61, 'DEMANS ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (90, 61, 'DEPRESYON ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (91, 61, 'DERİ VE YUMUŞAK DOKU ENFEKSİYONU', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (92, 61, 'DİĞER CİNSEL YOLLA BULAŞAN HASTALIK OLAN HASTA ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (93, 61, 'DİSK HERNİSİ (KOMPLİKASYONSUZ)', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (94, 61, 'DİSLİPİDEMİLER', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (95, 61, 'DİSMENORE', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (96, 61, 'DİYABET ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (97, 61, 'DOĞUM VE DOĞUM SONRASI KOMPLİKASYONLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (98, 61, 'DÖKÜNTÜLÜ HASTA', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (99, 61, 'ENSEFALİT', 1, -1, 'B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (100, 61, 'FİBROMİYALJİ ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (101, 61, 'GASTRİT VE PEPTİK ÜLSER  ', 1, -1, 'K,ETT', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (102, 61, 'GASTROİNTESTİNAL SİSTEM ENFEKSİYONU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (103, 61, 'GEBELİK KOMPLİKASYONLARI ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (104, 61, 'GIS KANAMASI  ', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (105, 61, 'HIV (+) HASTA ', 1, -1, 'K,T,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (106, 61, 'HİPERTANSİYON  ', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (107, 61, 'İDRAR YOLU ENFEKSİYONU', 1, -1, 'K,ETT', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (108, 61, 'İNFERTİLİTE', 1, -1, 'T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (109, 61, 'İNME ', 1, -1, 'K,T,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (110, 61, 'İSKEMİK KALP HASTALIĞI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (111, 61, 'JİNEKOLOJİK ENFEKSİYONLAR ', 1, -1, 'K,ETT', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (112, 61, 'KALP KAPAK HASTALIKLARI ', 1, -1, 'K,B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (113, 61, 'KALP YETMEZLİĞİ  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (114, 61, 'KARACİĞER YAĞLANMASI', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (115, 61, 'KAZA, ZEHİRLENME VE YARALANMA ', 1, -1, 'K,B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (116, 61, 'KOAH ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (117, 61, 'KONJENİTAL ANOMALİLİ HASTA', 1, -1, 'K,B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (118, 61, 'LEİOMİYOMA UTERİ', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (119, 61, 'MALİGNİTE', 1, -1, 'K,B', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (120, 61, 'MENENJİT', 1, -1, 'K,B', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (121, 61, 'MESLEK HASTALIKLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (122, 61, 'NEFRİT  ', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (123, 61, 'NEFROTİK SENDROM  ', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (124, 61, 'OBEZİTE', 1, -1, 'K,ETT', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (125, 61, 'OSTEOARTRİT', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (126, 61, 'OSTEOPOROZ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (127, 61, 'PERİFERİK DAMAR HASTALIKLARI', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (128, 61, 'PERİNATAL ENFEKSİYONLAR', 1, -1, 'K,T,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (129, 61, 'PNÖMOTORAKS', 1, -1, 'K,B,', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (130, 61, 'PSİKOZ ', 1, -1, 'T,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (131, 61, 'RİTM BOZUKLUKLARI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (132, 61, 'ROMATOİD ARTRİT', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (133, 61, 'SAFRA KESESİ HASTALIKLARI', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (134, 61, 'SOMATOFORM BOZUKLUK ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (135, 61, 'TALASSEMİ', 1, -1, 'K,T', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (136, 61, 'TİROİD HASTALIKLARI  ', 1, -1, 'K,ETT,A', 3, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (137, 61, 'TÜBERKÜLOZ ', 1, -1, 'K,ETT', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (138, 61, 'ÜST SOLUNUM YOLU ENFEKSİYONU', 1, -1, 'K,ETT,A', 1, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (139, 61, 'VİRAL HEPATİT ', 1, -1, 'K,ETT,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (140, 61, 'YABANCI CİSİM ASPİRASYONU', 1, -1, 'K,T,A', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (141, 61, 'YEME BOZUKLUKLUĞU', 1, -1, 'K,T', 2, 'BE,UE,YE', 0);
INSERT INTO `tb_mufredat` VALUES (144, 60, 'Semptom ve Başvuru Nedenlerinin Yönetimi', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (145, 60, 'UYGULAMA BECERİLERİ', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (146, 60, 'YÖNETSEL UYGULAMA BECERİLERİ', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (147, 60, 'EĞİTİM VE DANIŞMANLIK UYGULAMALARI/GÖREVLERİ', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (148, 60, 'BİREYİN SAĞLIK YÖNETİMİ', 1, -1, NULL, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (151, 144, 'ATEŞLİ HASTA ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (152, 144, 'BAŞ AĞRISI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (153, 144, 'BEL AĞRISI', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (154, 144, 'BOĞAZ AĞRISI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (155, 144, 'BOYUN AĞRISI', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (156, 144, 'ÇARPINTI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (157, 144, 'DAVRANIŞ SORUNLARI OLAN HASTA', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (158, 144, 'DİSPEPTİK YAKINMALAR ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (159, 144, 'DİZ AĞRISI ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (160, 144, 'EKLEM AĞRISI ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (161, 144, 'ELE GELEN KİTLE ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (162, 144, 'GALAKTORE ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (163, 144, 'GÖĞÜS AĞRISI (KARDİYAK VE KARDİYAK OLMAYAN)', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (164, 144, 'HALSİZLİK/YORGUNLUK ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (165, 144, 'HEMATÜRİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (166, 144, 'HİRSUTİSMUS ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (167, 144, 'İDRAR KAÇIRMA ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (168, 144, 'İSHALLİ HASTA ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (169, 144, 'İŞTAHSIZLIK ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (170, 144, 'JİNEKOMASTİ ', 1, -1, '1', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (171, 144, 'KABIZLIK YAKINMASI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (172, 144, 'KANAMALI HASTA', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (173, 144, 'KARIN AĞRISI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (174, 144, 'KIRIK ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (175, 144, 'KİLO KAYBI (İSTEMSİZ) ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (176, 144, 'KONVÜLZİYON ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (177, 144, 'KRONİK AĞRI', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (178, 144, 'LENFADENOPATİ ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (179, 144, 'MALNUTRİSYON', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (180, 144, 'ÖDEM ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (181, 144, 'ÖKSÜRÜK ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (182, 144, 'PARESTEZİ/PARALİZİ ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (183, 144, 'PELVİK AĞRI ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (184, 144, 'SARILIK', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (185, 144, 'SOLUNUM SIKINTISI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (186, 144, 'UNUTKANLIK ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (187, 144, 'VAJİNAL KANAMA ', 1, -1, '2', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (188, 144, 'YUMUŞAK DOKU TRAVMASI ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (189, 145, 'AİLE GÖRÜŞMESİ ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (190, 145, 'BESLENMENİN DEĞERLENDİRİLMESİ', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (191, 145, 'DANIŞMANLIK VEREBİLME (SİGARA BIRAKMA, BESLENME, KONTRASEPSİYON, GENETİK, VB. KONULARINDA)', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (192, 145, 'DEKONTAMİNASYON-DEZENFEKSİYON-STERİLİZASYON', 1, -1, '4', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (193, 145, 'EKG ÇEKEBİLME VE DEĞERLENDİREBİLME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (194, 145, 'GÖRÜNTÜLEME YÖNTEMLERİNİN ETKİN KULLANIMI VE SONUÇLARININ DEĞERLENDİRİLMESİ', 1, -1, '2', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (195, 145, 'GÖZ DİBİNE BAKMA VE NORMALDEN AYIRTEDEBİLME', 1, -1, '2', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (196, 145, 'İLGİLİ KONULARDA HASTA EĞİTİMİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (197, 145, 'JİNEKOLOJİK MUAYENE', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (198, 145, 'KÖTÜ HABER VEREBİLME', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (199, 145, 'KÜLTÜR-ANTİBİYOGRAM İÇİN ÖRNEK ALMA VE SONUÇLARINI DEĞERLENDİRME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (200, 145, 'LABORATUVAR TETKİKLERİNİN ETKİN KULLANIMI VE SONUÇLARININ DEĞERLENDİRİLMESİ', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (201, 145, 'MENTAL DURUM DEĞERLENDİRMESİ', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (202, 145, 'NÖROLOJİK VE KAS İSKELET SİSTEMİ MUAYENESİ', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (203, 145, 'PAP SÜRÜNTÜSÜ VE HPV ÖRNEKLEMESİ YAPABİLME VE RAPORLARINI DEĞERLENDİREBİLME', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (204, 145, 'PEAK-FLOWMETER YAPMA VE SONUÇLARINI DEĞERLENDİRME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (205, 145, 'PPD DEĞERLENDİRME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (206, 145, 'PSİKİYATRİK GÖRÜŞME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (207, 145, 'SEVK VE KONSÜLTASYON', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (208, 145, 'SPİROMETRE KULLANABİLME VE SONUÇLARINI DEĞERLENDİRME', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (209, 145, 'YARA VE YANIK BAKIMI ', 1, -1, '2', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (210, 145, 'APSE AÇMA, DRENE ETME ', 1, -1, '2', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (211, 145, 'DAMAR YOLU AÇILMASI (ÇOCUK VE ERİŞKİN)', 1, -1, '4', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (212, 145, 'AŞILARI UYGULAYABİLME', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (213, 145, 'ATEL UYGULAMASI VE HASTA TRANSPORTU', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (214, 145, 'YENİDOĞANDAN TOPUK KANI ALMA', 1, -1, '4', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (215, 145, 'RIA UYGULANMASI VE ÇIKARILMASI', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (216, 145, 'ÜRİNER SONDA TAKMA VE ÇIKARMA ', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (217, 145, 'SÜTÜR ATMA/ALMA', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (218, 145, 'NAZOGASTRİK SONDA TAKMA VE ÇIKARMA', 1, -1, '3', 1, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (219, 146, 'ÇAĞDAŞ İLETİŞİM TEKNİKLERİNİ KULLANABİLME', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (220, 146, 'BİRİNCİ BASAMAK SAĞLIK KURUMLARINI YÖNETME', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (221, 146, 'SÜREKLİ MESLEKSEL GELİŞİMİ PLANLAYABİLME', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (222, 146, 'VERİ ANALİZİ YAPABİLEN PROGRAMLARIN TEMEL ÖZELLİKLERİNİ TANIMA VE KULLANMA', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (223, 147, 'BAĞIŞIKLAMA ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (224, 147, 'BİREYE ÖZGÜ GEREKLİ TARAMA TESTLERİNİN BELİRLENMESİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (225, 147, 'BİREYİN SAĞLIK İNANIŞLARININ ORTAYA ÇIKARILMASI, SAĞLIK KARARLARINA KATILIMININ SAĞLANMASI', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (226, 147, 'BİREYİN SAĞLIK RİSKLERİNİN BELİRLENMESİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (227, 147, 'ENGELLİ HASTANIN VE AİLE ETKİLEŞİMİNİN YÖNETİMİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (228, 147, 'EVDE SAĞLIK HİZMETİ SUNUMU VE EVDE HASTA YÖNETİMİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (229, 147, 'FARKLI DURUMLARA UYGUN EĞİTİM PLANI YAPMA VE UYGULAMA', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (230, 147, 'GEBELİK YÖNETİMİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (231, 147, 'HASTALAR İÇİN EĞİTİM MATERYALİ HAZIRLANMASI', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (232, 147, 'KRONİK HASTALIK YÖNETİMİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (233, 147, 'MENOPOZ YÖNETİMİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (234, 147, 'MULTİMORBİDİTENİN YÖNETİMİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (235, 147, 'ÖLMEKTE OLAN HASTA VE AİLESİNE YAKLAŞIM', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (236, 147, 'SAĞLIK DANIŞMANLIĞI YAPMA', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (237, 147, 'SAĞLIKLI BİREY/HASTA EĞİTİMİ PLANLAMA VE UYGULAMA', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (238, 147, 'SAĞLIKLI CİNSEL YAŞAM DANIŞMANLIĞI', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (239, 147, 'TÜTÜN BAĞIMLILIĞI YÖNETİMİ', 1, -1, '4', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (240, 148, 'ÇOCUK VE ERGEN SAĞLIĞIN KORUNMASI VE GELİŞTİRİLMESİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (241, 148, 'FİZİKSEL, DUYGUSAL VE CİNSEL İSTİSMARIN VE ŞİDDETİN ÖNLENMESİ', 1, -1, '3', 2, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (242, 148, 'SEYAHAT TIBBI (DİNİ, SOSYAL VE KÜLTÜREL TURİZM, GÖÇERLER, YURT İÇİ VE DIŞINDA ÇALIŞANLAR) YÖNETİMİ', 1, -1, '3', 3, 'YE,UE,BE', 0);
INSERT INTO `tb_mufredat` VALUES (243, 148, 'YAŞLI SAĞLIĞININ YÖNETİMİ  ', 1, -1, '3', 3, 'YE,UE,BE', 0);

-- ----------------------------
-- Table structure for tb_ogrenci_bilimsel_toplanti_sunulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_bilimsel_toplanti_sunulari`;
CREATE TABLE `tb_ogrenci_bilimsel_toplanti_sunulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
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
  `universite_id` int NULL DEFAULT NULL,
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
INSERT INTO `tb_ogrenci_bilimsel_toplantilar` VALUES (2, 1, 1, 133, 'Doku Mühendisliğinde Biyomimetik Yaklaşımlar', 'Acıbadem Üniversitesi', '2022-10-05', '1) Doku Mühendisliğinde Kullanılan Teknolojiler\r\n2) Tıp Eğitiminde Yapay Zeka', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_klinik_sunulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_klinik_sunulari`;
CREATE TABLE `tb_ogrenci_klinik_sunulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `yeri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `tarih` date NULL DEFAULT NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_klinik_sunulari
-- ----------------------------
INSERT INTO `tb_ogrenci_klinik_sunulari` VALUES (1, 1, 1, 133, 'Pandemide Alıcı-Verici Hazırlanması', 'Cengiz Andiç Konferans Salonu', '2022-10-12', NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_klinik_sunulari` VALUES (2, 1, 1, 133, 'Solid Organ Nakli Enfeksiyonları Mikrobiyolojisi', 'Dursun Odabaş Tıp Merkezi Amfi III', '2022-12-13', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_makaleleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_makaleleri`;
CREATE TABLE `tb_ogrenci_makaleleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `dergi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `onay` tinyint NULL DEFAULT NULL,
  `onaylayan_id` int NULL DEFAULT NULL,
  `onay_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_makaleleri
-- ----------------------------
INSERT INTO `tb_ogrenci_makaleleri` VALUES (2, 1, 1, 133, 'Evaluation Of The Effect On Perinatal Outcomes Of Maternal Body Mass Index In Ceasarean Births', 'Van Tıp Dergisi, cilt.24, sa.1, ss.1-6, 2017 (Hakemli Dergi)\r\nLayık M. E. , Ekin M., Demirci A.', NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_makaleleri` VALUES (3, 1, 1, 128, 'Deneme', 'Van Tıp Dergisi, cilt.24, sa.1, ss.1-6, 2017 (Hakemli Dergi) Layık M. E. , Ekin M., Demirci A.		', NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_makaleleri` VALUES (4, 1, 1, 110, 'Evaluation Of The Effect On Perinatal Outcomes Of Maternal Body Mass Index In Ceasarean Births', 'Van Tıp Dergisi, cilt.24, sa.1, ss.1-6, 2017 (Hakemli Dergi)\r\nLayık M. E. , Ekin M., Demirci A.', NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_makaleleri` VALUES (6, 1, 1, 133, 'The Relationship Between Qt Interval And Pain Severity In Trauma Patients In The Emergency Department', 'KASTAMONU MEDICAL JOURNAL, cilt.1, sa.3, ss.75-78, 2021 (Hakemli Dergi) Nimetoğlu M. S. , Gökdemir M. T. , İz M., Layık M. E.', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_mufredat_degerlendirme
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_mufredat_degerlendirme`;
CREATE TABLE `tb_ogrenci_mufredat_degerlendirme`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  `rotasyon_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `mufredat_id` int NULL DEFAULT NULL,
  `degerlendirme` tinyint NULL DEFAULT -1,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  `ekleme_tarihi` datetime NULL DEFAULT NULL,
  `guncelleme_tarihi` datetime NULL DEFAULT NULL,
  `silme_tarihi` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_mufredat_degerlendirme
-- ----------------------------
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (2, 1, 1, -1, 133, 71, -1, 4, '2022-12-02 14:56:21', '2022-12-23 15:45:40', NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (3, 1, 1, -1, 133, 73, 0, 4, '2022-12-03 14:56:21', '2022-12-21 15:43:25', NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (4, 1, 1, -1, 133, 72, 1, 4, '2022-12-06 14:56:21', NULL, NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (5, 1, 1, -1, 133, 76, 1, 4, '2022-12-08 14:56:21', NULL, NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (6, 1, 1, -1, 133, 96, 1, 4, '2022-12-11 14:56:21', '2022-12-22 17:37:35', NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (7, 1, 1, -1, 133, 240, 1, 4, '2022-12-22 14:56:21', NULL, NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (8, 1, 1, -1, 133, 241, 0, 4, '2022-12-21 14:56:21', NULL, NULL);
INSERT INTO `tb_ogrenci_mufredat_degerlendirme` VALUES (9, 1, 1, -1, 133, 242, 0, 4, '2022-12-23 15:44:07', NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_sinavlari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_sinavlari`;
CREATE TABLE `tb_ogrenci_sinavlari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenci_sinavlari
-- ----------------------------
INSERT INTO `tb_ogrenci_sinavlari` VALUES (2, 1, 1, 133, 1, 'Formatif Sınav 1', '2022-10-05', 54, NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_sinavlari` VALUES (3, 1, 1, 133, 1, 'Formatif Sınav 2', '2022-10-04', 75.6, NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_sinavlari` VALUES (4, 1, 1, 133, 1, 'Formatif Sınav 3', '2022-11-22', 82.5, NULL, NULL, NULL);
INSERT INTO `tb_ogrenci_sinavlari` VALUES (5, 1, 1, 133, 2, 'Summatif Sınav', '2022-12-20', 85.5, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_tez_izlemeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_tez_izlemeleri`;
CREATE TABLE `tb_ogrenci_tez_izlemeleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
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
INSERT INTO `tb_ogrenci_tez_izlemeleri` VALUES (1, 1, 1, 133, 1, '2022-10-11', 'Tez çalışmaları incelendi. Yeni makaleler önerildi.', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ogrenci_tezleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenci_tezleri`;
CREATE TABLE `tb_ogrenci_tezleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
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
INSERT INTO `tb_ogrenci_tezleri` VALUES (1, 1, 1, 133, 'Hasta Güvenliği Literatürünün Bibliyometrik Analizi', '2022-10-05', '2022-10-21', NULL, NULL, NULL);

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
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int NULL DEFAULT 19,
  `super` tinyint NULL DEFAULT 0,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'resim_yok.png',
  `kullanici_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'ogrenci',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenciler
-- ----------------------------
INSERT INTO `tb_ogrenciler` VALUES (1, 1, 1, '', '17060001008', 'Şeyma Nur', 'ERÇİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (2, 1, 1, '', '17060001009', 'Oğulcan', 'AKÇAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (3, 1, 1, '', '17060001010', 'Azad', 'ZENGİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (4, 1, 1, '', '17060001011', 'Ferhat', 'BUCAĞA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (5, 1, 1, '', '17060001012', 'Ayşenur', 'ALMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (6, 1, 1, '', '17060001013', 'Erkan', 'BAĞTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (7, 1, 1, '', '17060001014', 'Berçem Fatma', 'YILDIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (8, 1, 1, '', '17060001015', 'Musa', 'İNCEER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (9, 1, 1, '', '17060001016', 'Fatma Betül', 'UĞURLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (10, 1, 1, '', '17060001017', 'Elif Sümeyya', 'AKSÖZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (11, 1, 1, '', '17060001018', 'Hasan', 'SÖNMEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (12, 1, 1, '', '17060001019', 'Sözdar', 'CİHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (13, 1, 1, '', '17060001020', 'Muhammed', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (14, 1, 1, '', '17060001022', 'Ömer', 'BEKİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (15, 1, 1, '', '17060001023', 'Onur', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (16, 1, 1, '', '17060001024', 'Neslihan', 'DİZMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (17, 1, 1, '', '17060001025', 'Taha Miraç', 'GÜNEŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (18, 1, 1, '', '17060001026', 'Cevdet', 'ŞEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (19, 1, 1, '', '17060001027', 'Tekin', 'TÜRKER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (20, 1, 1, '', '17060001028', 'Meryem', 'ERŞEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (21, 1, 1, '', '17060001029', 'Dudu', 'ÇEKİCİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (22, 1, 1, '', '17060001031', 'Şehnaz', 'DOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (23, 1, 1, '', '17060001035', 'Mehmet', 'ALTUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (24, 1, 1, '', '17060001036', 'Elif Berfin', 'KÖKLİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (25, 1, 1, '', '17060001037', 'Kadir', 'KALAÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (26, 1, 1, '', '17060001038', 'Yunus', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (27, 1, 1, '', '17060001039', 'Zelal', 'YAYLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (28, 1, 1, '', '17060001040', 'Veysel Karani', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (29, 1, 1, '', '17060001041', 'Burhan', 'KIZILTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (30, 1, 1, '', '17060001043', 'İbrahim', 'ÇOBANOĞLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (31, 1, 1, '', '17060001047', 'Özcan', 'DAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (32, 1, 1, '', '17060001048', 'Vedat', 'KAVAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (33, 1, 1, '', '17060001051', 'Mert', 'KARTAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (34, 1, 1, '', '17060001053', 'Evin', 'BÖLER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (35, 1, 1, '', '17060001054', 'Beyza', 'TUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (36, 1, 1, '', '17060001055', 'Mizgin', 'BOZKURT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (37, 1, 1, '', '17060001057', 'Naz Neval', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (38, 1, 1, '', '17060001058', 'Yasin', 'DENİZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (39, 1, 1, '', '17060001060', 'Ahmet', 'KOÇAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (40, 1, 1, '', '17060001062', 'Emine', 'KIZILDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (41, 1, 1, '', '17060001063', 'Arif', 'GÖKDERE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (42, 1, 1, '', '17060001065', 'Hüseyin Harun', 'KADIRHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (43, 1, 1, '', '17060001066', 'Diyar', 'VARIŞLI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (44, 1, 1, '', '17060001067', 'Yüksel', 'METİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (45, 1, 1, '', '17060001069', 'Fatma', 'YUTAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (46, 1, 1, '', '17060001072', 'İbrahim Halil', 'ERZEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (47, 1, 1, '', '17060001073', 'Mehmet Barsim', 'BOĞATEKİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (48, 1, 1, '', '17060001074', 'Tuğba', 'ATLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (49, 1, 1, '', '17060001075', 'Adem', 'KARAMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (50, 1, 1, '', '17060001078', 'Bedirhan', 'ERDAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (51, 1, 1, '', '17060001079', 'Cihat', 'SEVİNÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (52, 1, 1, '', '17060001080', 'Nurşen', 'CENGİZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (53, 1, 1, '', '17060001081', 'Ahmet Alperen', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (54, 1, 1, '', '17060001082', 'Yasemin', 'TUNÇAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (55, 1, 1, '', '17060001087', 'İsmail', 'ERDOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (56, 1, 1, '', '17060001088', 'Afşin', 'DUMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (57, 1, 1, '', '17060001090', 'Cennet', 'ÖZTÜRK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (58, 1, 1, '', '17060001091', 'Mesut', 'GÜLER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (59, 1, 1, '', '17060001093', 'Mustafa', 'GÜVEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (60, 1, 1, '', '17060001094', 'Veysel', 'GÜR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (61, 1, 1, '', '17060001095', 'Zafer', 'KATAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (62, 1, 1, '', '17060001096', 'Gamze', 'AĞCA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (63, 1, 1, '', '17060001098', 'Saliha Nihan', 'ÜRKMEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (64, 1, 1, '', '17060001099', 'Eda', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (65, 1, 1, '', '17060001101', 'Murat', 'AKSOY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (66, 1, 1, '', '17060001102', 'Pelin', 'UNUL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (67, 1, 1, '', '17060001109', 'Ezgi', 'CESUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (68, 1, 1, '', '17060001111', 'Batuhan', 'BAYKUŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (69, 1, 1, '', '17060001112', 'Serhat', 'UYGUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (70, 1, 1, '', '17060001113', 'Muhammed', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (71, 1, 1, '', '17060001116', 'Nefise', 'AYDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (72, 1, 1, '', '17060001118', 'Fatmanur', 'MİRBEY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (73, 1, 1, '', '17060001119', 'Gönül Aslı', 'CAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (74, 1, 1, '', '17060001120', 'Ömer Faruk', 'YUNAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (75, 1, 1, '', '17060001121', 'Zehra', 'HANBABA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (76, 1, 1, '', '17060001124', 'Ümmügülsüm', 'GÜRAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (77, 1, 1, '', '17060001125', 'Betül', 'AYÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (78, 1, 1, '', '17060001127', 'Çağdaş', 'DİLEKCİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (79, 1, 1, '', '17060001130', 'Arzu', 'DEMİRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (80, 1, 1, '', '17060001131', 'Sümeyye Nur', 'ÖNER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (81, 1, 1, '', '17060001134', 'Hasret', 'BULUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (82, 1, 1, '', '17060001135', 'Esra', 'DEĞER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (83, 1, 1, '', '17060001137', 'Melike', 'KARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (84, 1, 1, '', '17060001138', 'Mücahit', 'ÇALIŞKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (85, 1, 1, '', '17060001139', 'Fehime', 'KURT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (86, 1, 1, '', '17060001143', 'Ümran', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (87, 1, 1, '', '17060001144', 'Saruhan Fikri', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (88, 1, 1, '', '17060001147', 'Nursena', 'KARABULUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (89, 1, 1, '', '17060001148', 'Gurbet', 'KARABAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (90, 1, 1, '', '17060001149', 'Melek', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (91, 1, 1, '', '17060001150', 'Beyza', 'ÖZDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (92, 1, 1, '', '17060001129', 'Beyzanur', 'EYVAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (93, 1, 1, '', '17060001151', 'Emine Şevval', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (94, 1, 1, '', '17060001153', 'Muhammed Hamza', 'YAZÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (95, 1, 1, '', '17060001162', 'Ahmet Sait', 'AĞIRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (96, 1, 1, '', '17060001165', 'Ahmed.M.Y.', 'SAIDAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (97, 1, 1, '', '17060001171', 'Serkan', 'CEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (98, 1, 1, '', '16060001006', 'Deniz', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (99, 1, 1, '', '16060001011', 'Şahin', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (100, 1, 1, '', '16060001021', 'Mehmet Emin', 'ÇAKIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (101, 1, 1, '', '16060001024', 'Rojin', 'KIZILAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (102, 1, 1, '', '16060001028', 'Melek', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (103, 1, 1, '', '16060001045', 'Baran', 'DAKMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (104, 1, 1, '', '16060001060', 'Mehmet Ali', 'SEÇMEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (105, 1, 1, '', '16060001071', 'Berivan İdil', 'ABİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (106, 1, 1, '', '16060001088', 'Dilek', 'AFERİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (107, 1, 1, '', '16060001104', 'Ali', 'EROĞULLARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (108, 1, 1, '', '16060001129', 'Mevlüt Özgür', 'ACAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (109, 1, 1, '', '16060001151', 'Mohamad', 'ALHAMDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (110, 1, 1, '45985696652', '15060001133', 'Abdulsamettt', 'BEŞKARDEŞ', NULL, NULL, 'dr.emin07@gmail.com', '5425655654', 'İskele mah. 2134 sk. İpekyolu/VAN', '1989-01-20', 'Van', '2021 Güz Dönemi', 85.3, '2022-10-05', '2022-10-02', '2022-10-03', 4, 4, 1, 'e10adc3949ba59abbe56e057f20f883e', 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (111, 1, 1, '', '14060001069', 'İbrahim', 'GÜLTEKİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (112, 1, 1, '', '14060001135', 'Nail', 'BEYAZIT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (113, 1, 1, '', '19060001152', 'Elif', 'AVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (114, 1, 1, '', '19060001153', 'Barış', 'TUNÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (115, 1, 1, '', '19060001162', 'Neslihan', 'ARSLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (116, 1, 1, '', '20060001152', 'Yasemin', 'ÖZMEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (117, 1, 1, '', '20060001153', 'Abdullah Harun', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (118, 1, 1, '', '21060001170', 'Hakan', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (119, 1, 1, '', '16060001061', 'Fulya', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (120, 1, 1, '', '16060001080', 'Ramazan', 'YALMAÇ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (121, 1, 1, '', '15060001059', 'Dıjvar', 'DENLİ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (122, 1, 1, '', '14060001130', 'Gülezgi', 'KAYAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (123, 1, 1, '', '13060001135', 'Muhammed', 'FATİH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (124, 1, 1, '', '16060001121', 'Furkan Kağan', 'DALDABAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (125, 1, 1, '', '20060001007', 'Muhammed Enes', 'UÇAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (126, 1, 1, '', '20060001002', 'Dilara', 'AVCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (127, 1, 1, '', '16060001119', 'Ömer', 'KUTLU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (128, 1, 1, '', '16060001013', 'Abdullah', 'SEVAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (129, 1, 1, '', '14060001140', 'M.Kasım', 'ÇAKILLIKOYAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (130, 1, 1, '', '15060001168', 'Mehmet', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 19, 0, 'resim_yok.png', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (133, 1, 1, '45982964018', '45982964018', 'Serbest', 'Ziyanak', NULL, NULL, 'serbest.ziyanak@gmail.com', '5444961144', 'Teknokent sk. Teknokent Binası No:20', '1989-01-20', 'Cizre', '2022-TUS 2. Dönem', 73.25, '2022-12-13', '2022-10-20', '2022-06-25', 4, 4, 1, 'bc000ebca4a5687a014d9c9f94da86e8', 19, 0, 'ogrenci_133.jpg', 'ogrenci');
INSERT INTO `tb_ogrenciler` VALUES (134, 1, 1, '15151515151', '151515151515', 'deneme', 'deneme', NULL, NULL, 'serbest.ziyanak@gmail.com', '5444961144', 'Teknokent sk. Teknokent Binası No:20', '1989-01-20', 'asdasd', 'asdasd', 25, '2022-10-05', '2022-10-02', '2022-10-03', 7, 7, 1, 'bc000ebca4a5687a014d9c9f94da86e8', 19, 0, 'ogrenci_134.jpg', 'ogrenci');

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
  `kullanici_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'ogretim_elemani',
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int NULL DEFAULT 20,
  `super` tinyint NULL DEFAULT 0,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'resim_yok.png',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogretim_elemanlari
-- ----------------------------
INSERT INTO `tb_ogretim_elemanlari` VALUES (1, 1, 1, 1, NULL, 1, 'Sıddık', 'KESKİN', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (2, 1, 1, 1, NULL, 3, 'Şükran', 'SEVİMLİ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (3, 1, 1, 1, NULL, 3, 'Sinemis', 'ÇETİN DAĞLI', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (4, 1, 1, 1, '45985698965', 3, 'Mehmet Emin', 'LAYIK', 'melayik@yyu.edu.tr', '05333992652', 1, 'ogretim_elemani', 'e10adc3949ba59abbe56e057f20f883e', 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (5, 1, 1, 1, NULL, 5, 'Duygu', 'KORKMAZ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (6, 1, 1, 1, NULL, 5, 'Tuncay', 'ULU', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (7, 1, 1, 1, NULL, 5, 'Ahmet', 'SALTIK', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (8, 1, 1, 1, NULL, 5, 'Zülkaf', 'AKBALIK', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (9, 1, 1, 1, NULL, 5, 'Zeynep', 'ŞAHİN', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (10, 1, 1, 1, NULL, 5, 'Hale Mükerrem', 'KAYA', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (11, 1, 1, 1, NULL, 5, 'Rukiye', 'TOKUŞ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (12, 1, 1, 1, NULL, 5, 'İslam', 'KÖSE', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (14, 1, 1, 1, NULL, 3, 'Hava', 'BEKTAŞ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (15, 1, 1, 1, NULL, 4, 'Nuray', 'KAYA', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (16, 1, 1, 1, NULL, 3, 'İzzet', 'ÇELEĞEN', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (18, 1, 1, 1, NULL, 2, 'Özlem Ergül', 'ERKEÇ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (20, 1, 1, 1, NULL, 3, 'Mustafa', 'BİLİCİ', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (21, 1, 1, 3, NULL, 1, 'Resül', 'EVİS', 'resul.evis@yyu.edu.tr', '05366373523', 0, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (22, 1, 1, 1, '', 2, 'Tahir', 'ÇAKIR', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (23, 1, 1, 1, NULL, 2, 'Hamit Hakan', 'ALP', NULL, NULL, 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (25, 1, 1, 1, NULL, 1, 'Halil', 'ÖZKOL', 'mail@mail.com', '5555555555', 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (26, 1, 1, 1, NULL, 2, 'Zübeyir', 'HUYUT', 'mail@mail.com', '555 555 5555', 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (27, 1, NULL, 1, NULL, 1, 'Deneme', 'Deneme', 'deneme@yyu.edu.tr', '5444961144', 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (28, 1, NULL, 1, '123456987', 1, 'Deneme', 'Deneme', 'deneme@deneme.com', '444965588', 1, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');
INSERT INTO `tb_ogretim_elemanlari` VALUES (29, 1, NULL, 1, '345345345', 1, 'dfgdfg', 'dfgdfg', 'serbest.ziyanak@gmail.com', '0(544) 496-1144', 0, 'ogretim_elemani', NULL, 20, 0, 'resim_yok.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rol_yetkiler
-- ----------------------------
INSERT INTO `tb_rol_yetkiler` VALUES (1, 14, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (2, 14, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (3, 19, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (4, 19, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (15, 19, 151, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (16, 19, 150, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (17, 19, 148, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (18, 19, 148, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (19, 19, 148, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (20, 19, 148, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (21, 19, 148, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (22, 19, 145, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (23, 19, 145, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (24, 19, 145, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (25, 19, 145, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (26, 19, 145, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (27, 19, 142, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (28, 19, 142, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (29, 19, 142, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (30, 19, 142, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (31, 19, 142, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (32, 19, 141, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (33, 19, 141, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (34, 19, 141, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (35, 19, 141, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (36, 19, 141, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (38, 19, 149, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (39, 19, 131, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (40, 19, 131, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (41, 19, 131, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (42, 20, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (43, 20, 1, 32);
INSERT INTO `tb_rol_yetkiler` VALUES (44, 20, 117, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (45, 20, 117, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (46, 20, 117, 6);
INSERT INTO `tb_rol_yetkiler` VALUES (47, 20, 133, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (48, 20, 131, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (49, 20, 137, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (50, 20, 138, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (51, 20, 142, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (52, 20, 145, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (53, 20, 148, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (54, 20, 149, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (55, 20, 151, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (56, 20, 151, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (57, 20, 151, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (58, 20, 151, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (59, 20, 151, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (60, 20, 151, 42);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_roller
-- ----------------------------
INSERT INTO `tb_roller` VALUES (1, 'Varsayılan', 1);
INSERT INTO `tb_roller` VALUES (19, 'Öğrenci', 0);
INSERT INTO `tb_roller` VALUES (20, 'Öğretim Elemanı', 0);

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
  `kullanici_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'admin',
  `uzmanlik_dali_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sistem_kullanici
-- ----------------------------
INSERT INTO `tb_sistem_kullanici` VALUES (19, 'Ahmet', 'ŞAHAN', 'ahmetsahan@yandex.com', '0(551) 432-1362', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '19.png', '22756151942', '1987-05-15 00:00:00', '1', 'admin', NULL);
INSERT INTO `tb_sistem_kullanici` VALUES (31, 'Mehmet Emin', 'LAYIK', 'eminlayik@gmail.com', '0(533) 399-2652', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '31.png', '19438375628', '1985-10-29 00:00:00', '1', 'admin', NULL);
INSERT INTO `tb_sistem_kullanici` VALUES (32, 'Serbest', 'ZİYANAK', 'serbest.ziyanak@gmail.com', '0(544) 496-1144', 'bc000ebca4a5687a014d9c9f94da86e8', 1, 1, '32.jpg', '45982964018', '1989-01-20 00:00:00', '1', 'admin', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_universiteler
-- ----------------------------
INSERT INTO `tb_universiteler` VALUES (1, 'Van Yüzüncü Yıl Üniversitesi', 1);
INSERT INTO `tb_universiteler` VALUES (2, 'İstanbul Teknik Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (3, 'Hacattepe Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (4, 'Yıldız Teknik Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (5, 'Dicle Üniversitesi', 1);
INSERT INTO `tb_universiteler` VALUES (6, 'Adana Şehir Eğitim ve Araştırma Hastanesi', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yetki_islem_turleri
-- ----------------------------
INSERT INTO `tb_yetki_islem_turleri` VALUES (1, 'goruntule', 'Görüntüle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (2, 'ekle', 'Ekle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (3, 'sil', 'Sil');
INSERT INTO `tb_yetki_islem_turleri` VALUES (4, 'duzenle', 'Düzenle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (5, 'kaydet', 'Kaydet');
INSERT INTO `tb_yetki_islem_turleri` VALUES (6, 'guncelle', 'Güncelle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (10, 'super', 'Super Yetki Ataması');
INSERT INTO `tb_yetki_islem_turleri` VALUES (11, 'rol-degistir', 'Kullanıcı Rol Değiştir');
INSERT INTO `tb_yetki_islem_turleri` VALUES (12, 'birim-ata', 'Birim Yetkisi Ver');
INSERT INTO `tb_yetki_islem_turleri` VALUES (15, 'rol-islem-ata', 'Rol Yetkilendirme');
INSERT INTO `tb_yetki_islem_turleri` VALUES (22, 'yedek_al', 'Yedek Alma');
INSERT INTO `tb_yetki_islem_turleri` VALUES (27, 'onayla', 'Onayla');
INSERT INTO `tb_yetki_islem_turleri` VALUES (28, 'onay_kaldir', 'Onay Kaldır');
INSERT INTO `tb_yetki_islem_turleri` VALUES (32, 'ara', 'Ara');
INSERT INTO `tb_yetki_islem_turleri` VALUES (34, 'onaya_gonder', 'Onaya Gönder');
INSERT INTO `tb_yetki_islem_turleri` VALUES (42, 'ogrenci_sec', 'Öğrenci Seç');
INSERT INTO `tb_yetki_islem_turleri` VALUES (43, 'kategori_ekle', 'Kategori Ekle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (44, 'yetkinlik_ekle', 'Yetkinlik Ekle');

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

-- ----------------------------
-- View structure for ogrenci_sinavlari
-- ----------------------------
DROP VIEW IF EXISTS `ogrenci_sinavlari`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ogrenci_sinavlari` AS SELECT 
	os.*
	,sk.adi AS sinav_kategori_adi
	,concat(o.adi," ",o.soyadi) AS ogrenci_adi_soyadi
FROM 
	tb_ogrenci_sinavlari AS os
LEFT JOIN tb_sinav_kategorileri AS sk ON sk.id = os.sinav_kategori_id
LEFT JOIN tb_ogrenciler AS o ON o.id = os.ogrenci_id ;

-- ----------------------------
-- View structure for view_sistem_kullanici
-- ----------------------------
DROP VIEW IF EXISTS `view_sistem_kullanici`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_sistem_kullanici` AS (SELECT
	 id
	,adi
	,soyadi
	,email
	,sifre
	,resim
	,rol_id
	,super
	,universiteler as universite_id
	,kullanici_turu
	,uzmanlik_dali_id
FROM
	tb_sistem_kullanici
)
UNION
(SELECT
	 id
	,adi
	,soyadi
	,email
	,sifre
	,resim
	,rol_id
	,super
	,universite_id
	,kullanici_turu
	,uzmanlik_dali_id
FROM
	tb_ogrenciler AS o
) 
UNION
(SELECT
	 id
	,adi
	,soyadi
	,email
	,sifre
	,resim
	,rol_id
	,super
	,universite_id
	,kullanici_turu
	,uzmanlik_dali_id
FROM
	tb_ogretim_elemanlari
) ;

-- ----------------------------
-- View structure for view_soyadi_yilmaz_ogrenciler
-- ----------------------------
DROP VIEW IF EXISTS `view_soyadi_yilmaz_ogrenciler`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_soyadi_yilmaz_ogrenciler` AS select * from tb_ogrenciler where soyadi="YILMAZ" ;

-- ----------------------------
-- View structure for view_zaman_tuneli
-- ----------------------------
DROP VIEW IF EXISTS `view_zaman_tuneli`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_zaman_tuneli` AS (
select 
	 omd.universite_id
	,omd.uzmanlik_dali_id
	,omd.rotasyon_id
	,omd.ogrenci_id
	,omd.mufredat_id
	,omd.degerlendirme
	,concat(u.adi," ",oe.adi," ",oe.soyadi) as ogretim_elemani_adi
	,oe.resim
	,omd.ekleme_tarihi as tarih
	,"ekleme" as islem_turu
from tb_ogrenci_mufredat_degerlendirme as omd
left join tb_ogretim_elemanlari as oe on oe.id = omd.ogretim_elemani_id
left join tb_unvanlar as u on u.id = oe.unvan_id
where ekleme_tarihi is not null
)
union
(
select 
	 omd.universite_id
	,omd.uzmanlik_dali_id
	,omd.rotasyon_id
	,omd.ogrenci_id
	,omd.mufredat_id
	,omd.degerlendirme
	,concat(u.adi," ",oe.adi," ",oe.soyadi) as ogretim_elemani_adi
	,oe.resim
	,omd.guncelleme_tarihi as tarih
	,"guncelleme" as islem_turu
from tb_ogrenci_mufredat_degerlendirme as omd
left join tb_ogretim_elemanlari as oe on oe.id = omd.ogretim_elemani_id
left join tb_unvanlar as u on u.id = oe.unvan_id
where guncelleme_tarihi is not null
) ;

SET FOREIGN_KEY_CHECKS = 1;
