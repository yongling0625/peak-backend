/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 39.107.93.44:3306
 Source Schema         : gy-peak

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 11/12/2020 09:47:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NULL DEFAULT NULL COMMENT '产品类型',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片链接',
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品详情',
  `category_imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前类型的所有产品图片(轮播用，格式用’;‘拼接)',
  `depict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `synopsis` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品简介',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品编号',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品型号',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `delivery_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '交货类型（现货、预约、）',
  `after_sale_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '售后服务',
  `product_features` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品特点（图片链接，格式用’;‘拼接）',
  `specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品规格（图片链接，格式用’;‘拼接）',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 1, '减速机', 'AB/ABR 系列', 'images/dm-ABcal.jpg', 'pdf/ABABR-Ch.pdf', 'images/AB/AB.jpg;images/AB/ABR.jpg;images/AB/ABR_Dissection.jpg', '不含保持器之满针滚针轴承、齿形及导程修整、采用蜗线伞齿轮设计，容许更高的输出扭矩。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AB/ABR 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AB/features/AB_00.jpg;images/AB/features/AB_01.jpg', 'images/AB/specifications/AB_00.jpg;images/AB/specifications/AB_01.jpg', 'images/AB/size_00.png;images/AB/size/size_01.png;images/AB/size/size_02.png;images/AB/size/size_03.png');
INSERT INTO `products` VALUES (2, 1, '减速机', 'AD 系列', 'images/dm-ADcal.jpg', 'pdf/AD-ADR-Ch.pdf', 'images/AD/AD.jpg;images/AD/ADR.jpg;images/AD/ADS.jpg;images/AD/ADS_Dissection.jpg', '一体式的臂架结合法兰面、不含保持器之满针滚针轴承、齿形及导程修整、采用蜗线伞齿轮设计，容许更高的输出扭矩。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AD 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AD/features/AD_00.jpg;images/AD/features/AD_01.jpg', 'images/AD/specifications/AD_00.jpg;images/AD/specifications/AD_01.jpg;images/AD/specifications/AD_02.jpg', 'images/AD/size/AD_size_00.png;images/AD/size/AD_size_01.png;images/AD/size/AD_size_02.png;images/AD/size/AD_size_03.png');
INSERT INTO `products` VALUES (3, 1, '减速机', 'AE 系列', 'images/dm-AEcal.jpg', 'pdf/AEAER-Ch.pdf', 'images/AE/AE.jpg;images/AE/AER.jpg;images/AE/AER_Dissection.jpg', '不含保持器之满针滚针轴承、齿形及导程修整、采用蜗线伞齿轮设计，容许更高的输出扭矩。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AE 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AE/features/AE_00.jpg;images/AE/features/AE_01.jpg', 'images/AE/specifications/AE_00.jpg;images/AE/specifications/AE_01.jpg', 'images/AE/size/AE_size_00.png;images/AE/size/AE_size_01.png;images/AE/size/AE_size_02.png;images/AE/size/AE_size_03.png');
INSERT INTO `products` VALUES (4, 1, '减速机', 'AF/AFR 系列', 'images/dm-AFcal.jpg', 'pdf/AFAFR-Ch.pdf', 'images/AF/AF.jpg;images/AF/AF_Dissection.jpg;images/AF/AFR.jpg', '不含保持器之满针滚针轴承、齿形及导程修整、精密锥形轴承，提升半径的轴向负荷能力。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AF/AFR 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AF/features/AF_00.jpg;images/AF/features/AF_01.jpg', 'images/AF/specifications/AF_00.jpg;images/AF/specifications/AF_01.jpg', 'images/AF/size/AF_size_00.png;images/AF/size/AF_size_01.png;images/AF/size/AF_size_02.png;images/AF/size/AF_size_03.png');
INSERT INTO `products` VALUES (5, 1, '减速机', 'AFH / AFHK 系列', 'images/DM-AFH.jpg', 'pdf/AFH-CH.pdf', 'images/AFH/AFH.jpg;images/AFH/AFHK.jpg', '最佳化惯性力矩及输出扭力、更耐久的保证精度、低噪音、低温升。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AFH / AFHK 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AFH/features/AFH_00.jpg;images/AFH/features/AFH_01.jpg', 'images/AFH/specifications/AFH_00.jpg;images/AFH/specifications/AFH_01.jpg;images/AFH/specifications/AFH_02.jpg;images/AFH/specifications/AFH_03.jpg;images/AFH/specifications/AFH_04.jpg;images/AFH/specifications/AFH_05.jpg', 'images/AFH/size/AFH_size_00.png;images/AFH/size/AFH_size_01.png;images/AFH/size/AFH_size_02.png;images/AFH/size/AFH_size_03.png');
INSERT INTO `products` VALUES (6, 1, '减速机', 'AFX / AFXR 系列', 'images/DM-AFX.jpg', 'pdf/AFX-CH.pdf', NULL, NULL, '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AFX / AFXR 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', NULL, NULL, NULL);
INSERT INTO `products` VALUES (7, 1, '减速机', 'AH / AHK 系列', 'images/DM-AH.jpg', 'pdf/AH-CH.pdf', 'images/AH/AH Set.jpg;images/AH/AH.jpg;images/AH/AHKA.jpg;images/AH/AHKB.jpg;images/AH/AHKC.jpg', '最佳优化惯性力矩及输出力矩、更耐久的保证精度、多样化安装直径。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AH / AHK 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AH/features/AH_00.jpg;images/AH/features/AH_01.jpg', 'images/AH/specifications/AH_00.jpg;images/AH/specifications/AH_01.jpg;images/AH/specifications/AH_02.jpg;images/AH/specifications/AH_03.jpg;images/AH/specifications/AH_04.jpg;images/AH/specifications/AH_05.jpg', 'images/AH/size/AH_size_00.jpg;images/AH/size/AH_size_01.png;images/AH/size/AH_size_02.png;images/AH/size/AH_size_03.png');
INSERT INTO `products` VALUES (8, 1, '减速机', 'AP / APK 系列', 'images/DM-AP.jpg', 'pdf/AP-CH.pdf', 'images/AP/AP.jpg;images/AP/APK.jpg', '最佳化扭力及惯性力矩输出、耐久高精度设计、低噪音、低温升、支援法兰与曲齿介面。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AP / APK 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AP/features/AP_00.jpg;images/AP/features/AP_01.jpg', 'images/AP/specifications/AP_00.jpg;images/AP/specifications/AP_01.jpg;images/AP/specifications/AP_02.jpg', 'images/AP/size/AP_size_00.png;images/AP/size/AP_size_01.png;images/AP/size/AP_size_02.png;images/AP/size/AP_size_03.png');
INSERT INTO `products` VALUES (9, 1, '减速机', 'AT / ATB 系列', 'images/dm-AT-ATBcal.jpg', 'pdf/AT-ATB-Ch.pdf', NULL, '一体化不锈钢本体确保最大刚性与耐蚀性、齿轮采高强力渗碳合金钢，研磨精密度达DIN5级标准以内。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'AT / ATB 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/AT/features/AT_00.jpg;images/AT/features/AT_01.jpg', 'images/AT/specifications/AT_00.jpg;images/AT/specifications/AT_01.jpg', 'images/AT/size/AT_size_00.png;images/AT/size/AT_size_01.png;images/AT/size/AT_size_02.png');
INSERT INTO `products` VALUES (10, 1, '减速机', 'K 系列', 'images/dm-kcal.jpg', 'pdf/K-series.pdf', 'images/K/KF.jpg;images/K/KF-S3.jpg;imaes/K/KF-S4.jpg;images/K/KH.jpg;images/K/K-Series.jpg', '创新的双曲面螺旋斜齿轮、优化的转动惯量、安装灵活、同伺服电机的旋转方向一致。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'K 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/K/features/K_00.jpg;images/K/features/K_01.jpg', 'images/K/specifications/K_00.jpg;images/K/specifications/K_01.jpg;images/K/specifications/K_02.jpg', 'images/K/size/K_size_00.png;images/K/size/K_size_01.png;images/K/size/K_size_02.png;images/K/size/K_size_03.png');
INSERT INTO `products` VALUES (11, 1, '减速机', 'PII / PIIR 系列', 'images/dm-P2P2Rall.jpg', 'pdf/PII&PIIR-Ch.pdf', 'images/P/P.jpg', '经济型、高效能、优化的转动惯量、适用于多种尺寸的马达轴径、尺寸与重量极小化。', '螺旋齿轮设计；筒夹式的锁紧机构；马达连接板的模块化设计；一体式的齿轮箱本体；NyoGel 792D 合成润滑油脂；一体式的臂架；先进的离子氮化技术；3D拓蹼的设计分析技术；满针的滚针轴承设计。', NULL, 'PII / PIIR 系列', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/P/features/PII_00.jpg;images/P/features/PII_01.jpg', 'images/P/specifications/PII_00.jpg;images/P/specifications/PII_01.jpg;images/P/specifications/PII_02.jpg;images/P/specifications/PII_03.jpg;images/P/specifications/PII_04.jpg;images/P/specifications/PII_05.jpg;images/P/specifications/PII_06.jpg', 'images/P/size/PII_size_00.png;images/P/size/PII_size_01.png;images/P/size/PII_size_02.png;images/P/size/PII_size_03.png');
INSERT INTO `products` VALUES (12, 2, '齿轮齿条', '高精密度齿排与齿轮', 'images/DM-Rack.png', 'pdf/Catalog Rack and Pinion-CH.pdf', 'images/CLCT/clct_00.jpg;images/CLCT/clct_01.jpg;images/CLCT/clct_02.jpg', '高精密度、高负载、高速度、低噪音、快速交货', '高精密度，高负载 ，高速度，低噪音，长使用寿命，快速交货。APEX 是全世界唯一一个严格按照以下规范生产齿排的制造商:所有尺寸的几何公差、定义的直线度、平行度和垂直度、螺旋角和压力角的公差、定义的齿部表面粗度、定义的齿部硬度和硬化层深度、APEX也是全世界唯一能自己设计和生产齿排、齿轮和减速机的领导品牌，并提供良好协调的高质量传动组件，以满足不同的工业需求。', NULL, '高精密度齿排与齿轮', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/CLCT/features/clct_td_00.jpg', 'images/CLCT/specifications/clct_gg_00.jpg', NULL);
INSERT INTO `products` VALUES (13, 2, '齿轮齿条', '雷射工业专用线性传动系統', 'images/DM-L-24.png', 'pdf/L-24-Ch.pdf', 'images/CLCT/clct_00.jpg;images/CLCT/clct_01.jpg;images/CLCT/clct_02.jpg', '高精密度、高负载、高速度、低噪音、快速交货', '高精密度，高负载 ，高速度，低噪音，长使用寿命，快速交货。APEX 是全世界唯一一个严格按照以下规范生产齿排的制造商:所有尺寸的几何公差、定义的直线度、平行度和垂直度、螺旋角和压力角的公差、定义的齿部表面粗度、定义的齿部硬度和硬化层深度、APEX也是全世界唯一能自己设计和生产齿排、齿轮和减速机的领导品牌，并提供良好协调的高质量传动组件，以满足不同的工业需求。', NULL, '雷射工业专用线性传动系統', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/CLCT/features/clct_td_00.jpg', 'images/CLCT/specifications/clct_gg_00.jpg', NULL);
INSERT INTO `products` VALUES (14, 2, '齿轮齿条', '工具机润滑裝置', 'images/DM-Lubrication-CNC.png', 'pdf/Lubrication-CNC-Ch.pdf', 'images/CLCT/clct_00.jpg;images/CLCT/clct_01.jpg;images/CLCT/clct_02.jpg', '高精密度、高负载、高速度、低噪音、快速交货', '高精密度，高负载 ，高速度，低噪音，长使用寿命，快速交货。APEX 是全世界唯一一个严格按照以下规范生产齿排的制造商:所有尺寸的几何公差、定义的直线度、平行度和垂直度、螺旋角和压力角的公差、定义的齿部表面粗度、定义的齿部硬度和硬化层深度、APEX也是全世界唯一能自己设计和生产齿排、齿轮和减速机的领导品牌，并提供良好协调的高质量传动组件，以满足不同的工业需求。', NULL, '工具机润滑裝置', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/CLCT/features/clct_td_00.jpg', 'images/CLCT/specifications/clct_gg_00.jpg', NULL);
INSERT INTO `products` VALUES (15, 3, '润滑系统', '润滑裝置', 'images/DM-Lubrication.png', 'pdf/Lubrication-Ch.pdf', 'images/RFZZ/gear.jpg;images/RFZZ/Lug 400.jpg;images/RFZZ/Lug 2000.jpg', 'CE与ATEX认证最多支援40个润滑点,支援间歇润滑模式,支援手控器与PLC控制模式,润滑模式记忆功能,液位侦测与电路自我保护功能', 'LUG 400产品特性:润滑脂可达 NLGI 3 (400mL),Max. 4 出油孔,可支援各种接头,最多润滑点 max. 16,LUG – 411 / 412 / 422 / 423 / 424<br/>LUG 2000产品特性:Oil 油脂 (2000mL)Max. 10 出油孔, 直接头,最多润滑点 max. 40<br/>PU 润滑轮,开放式的聚氨酯结构,直齿和斜齿轮.模数: 1 / 1.5 / 2 / 2.5 / 3 / 4 / 5 / 6 / 8 / 9 / 10 / 11 / 12,通用润滑脂NLGI等级 2,食品级润滑脂NLGI等级 2,低温用润滑脂NLGI等级 2.', NULL, '润滑裝置', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/RFZZ/features/Lubrication-Ch_2-3_00.jpg;images/RFZZ/features/Lubrication-Ch_2-3_01.jpg', 'images/RFZZ/specifications/Lubrication-Ch_4_00.jpg;images/RFZZ/specifications/Lubrication-Ch_5_00.jpg', 'images/RFZZ/size/size_00.png;images/RFZZ/size/size_01.png');
INSERT INTO `products` VALUES (16, 4, '齿轮定制', '齿轮定制', 'images/dzcl.jpg', NULL, NULL, '精密齿轮研磨机可进行多元化动态齿形修正。齿研机切削加工与检测功能二机一体, 工件不须拆下。齿轮研磨加工后精度可达世界最高DIN 1~3级。配合多轴驱动模式加工速度世界最快。', '精密齿轮研磨机可进行多元化动态齿形修正。齿研机切削加工与检测功能二机一体, 工件不须拆下。齿轮研磨加工后精度可达世界最高DIN 1~3级。配合多轴驱动模式加工速度世界最快。', NULL, '齿轮定制', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', NULL, NULL, NULL);
INSERT INTO `products` VALUES (17, 5, '螺旋升降机', '螺旋升降机', 'images/lxsjj.png', NULL, 'images/LXSJJ/cate_lxsjj.8856219f.png', '适用于各平面检测、TFT-LCD、太阳能面板、不锈钢精密制板、芯片等面板厂，取代印刷业的气压缸，将基板平面升降达到更精密之效能。', '适用于各平面检测、TFT-LCD、太阳能面板、不锈钢精密制板、芯片等面板厂，取代印刷业的气压缸，将基板平面升降达到更精密之效能。市场上既有的螺旋升降器，升降速度及传动精密度，无法提升产业效率；创新一代的精密滚珠螺杆轴直角升降器，可节省空间，并提升高精密度、高速率、高效能，使业界大大提高产量。', NULL, '螺旋升降机', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/LXSJJ/features/lxsjj_00.jpg', 'images/LXSJJ/specifications/lxsjj_00.jpg', NULL);
INSERT INTO `products` VALUES (18, 6, '同步电动缸', '同步电动缸', 'images/TBDDG.png', 'pdf/TBDDG.pdf', 'images/DDG/ddg_00.jpg;images/DDG/ddg_01.jpg;images/DDG/ddg_02.jpg;images/DDG/ddg_03.jpg;images/DDG/ddg_04.jpg', '推力范围：根据需求可定制<br/>行程范围：根据需求可定制<br/>可搭配所有伺服马达以及步进马达<br/>精密控制速度<br/>高刚性、抗冲击力<br/>超长寿命、维护简单、噪音低', '推力范围：根据需求可定制<br/>行程范围：根据需求可定制<br/>可搭配所有伺服马达以及步进马达<br/>精密控制速度<br/>高刚性、抗冲击力<br/>超长寿命、维护简单、噪音低', NULL, '同步电动缸', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/DDG/features/ddg_00.jpg', NULL, NULL);
INSERT INTO `products` VALUES (19, 7, '组合模组', '组合模组', 'images/zhmj.png', NULL, NULL, '根据单轴模组不同场合的使用方式和对单轴模组组合形式的多样化，我公司根据单轴模组的特点及客户使用需求开发了多轴组合模组，方便了客户同时也提高了生产效率。', '', NULL, '组合模组', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', NULL, NULL, NULL);
INSERT INTO `products` VALUES (20, 8, '附件工具', '附件工具', 'images/fjgj.png', '', 'images/FJGJ/nlbs_00.jpg', '满足ANSI及DIN等国际标准<br/>耐磨耗<br/>多种方式可选、可定制', '', NULL, '附件工具', 'APEX台湾精锐', '3-4周', '由广用发货并提供售后服务', 'images/FJGJ/features/nlbs_00.jpg', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
