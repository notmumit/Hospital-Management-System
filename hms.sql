-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `spacility` varchar(40) DEFAULT NULL,
  `degree` varchar(40) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL,
  `ch` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (2021001,'Ekram Hussain','14-09-2001','01625733254','ehfahim11@gmail.com','Neurologists','MBBs, DMC','O+','1400 to 1600'),(2021002,'Muhaiminul Haque','15-12-2000','01912345678','mumit123@gmail.com','Dentist','MBBS, Chittagong Madical College','A-','1700 to 2000'),(2021003,'Shamanta Islam','29-06-2001','01312345678','progga65@gmail.com','Allergists','MBBS, Dhaka Medical College','A+','0900 to 1200'),(2021005,'Kazi Labib','09-12-200','01912345678','labib12@gmail.com','Obstetricians and gynecologists','MBBS, DMC','O-','0800 to 1200'),(202101004,'Ahiya Chowdhury','01-06-2000','01612345678','tiesha75@gmail.com','Obstetricians and gynecologists','MBBS, DMC','O+','2100 to 2300');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `sl` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `taka` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Delux Cabin','5,500','Bed/Cabin And Other'),(2,'Cabin (A.C)','4,000','Bed/Cabin And Other'),(3,'Cabin (Non A.C)','3,500','Bed/Cabin And Other'),(4,' CCU','4,000','Bed/Cabin And Other'),(5,' PCCU','2,500','Bed/Cabin And Other'),(6,'Heart Failure Unit','2,500','Bed/Cabin And Other'),(7,'Post-Cath','2,500','Bed/Cabin And Other'),(8,'ICU (without Ventilator Charge)','6,500','Bed/Cabin And Other'),(9,' PICU  ','4,500','Bed/Cabin And Other'),(10,' Emergency Ward','1,000','Bed/Cabin And Other'),(11,' Pre-Cath','1,000','Bed/Cabin And Other'),(12,' Admission Fee','500','Bed/Cabin And Other'),(13,'OPD','50','Bed/Cabin And Other'),(14,'Mortuary','2,500','Bed/Cabin And Other'),(15,'Alpha Bed (Per Day)','300','Bed/Cabin And Other'),(16,'Oxygen (Per Hour)','100','Bed/Cabin And Other'),(17,'Nebulization (Each)','200','Bed/Cabin And Other'),(18,' ABG (Per Test)','1,000','Bed/Cabin And Other'),(19,'BI-Pap','2,000','Bed/Cabin And Other'),(20,'CI-Pap','2,000','Bed/Cabin And Other'),(21,'Dialysis','3,500','Bed/Cabin And Other'),(23,'Coronary Angiogram with Non-Ionic dye (2 days in Ward, including CD)','16,500','Cath Lab Procedure'),(24,'Congenital ASD, VSD, PDA, TOF (2 days in Ward, including CD)','14,000','Cath Lab Procedure'),(25,'Renal Angiogram (2 days in Ward, including CD)','10,000','Cath Lab Procedure'),(26,'Peripheral Angiogram (2 days in Ward, including CD)','16,000','Cath Lab Procedure'),(27,'Coronary Angiogram + Peripheral Angiogram (2 days in Ward, including CD)','26,000','Cath Lab Procedure'),(28,'Pace Maker (Single Chamber) (8 days in Ward, Excluding Pace Maker)','45,000','Cath Lab Procedure'),(29,'Pace Maker (Duel Chamber) (8 days in Ward, Excluding Pace Maker)','60,000','Cath Lab Procedure'),(30,'Pace Maker CRT/AICD (8 days in Ward, Excluding Pace Maker)','75,000','Cath Lab Procedure'),(31,' Pace Maker (Temporary) (Emergency)','9,000','Cath Lab Procedure'),(32,'Coronary Angiogram + Pace Maker (Single Chamber)','50,000','Cath Lab Procedure'),(33,'Coronary Angiogram + Pace Maker (Double Chamber)','65,000','Cath Lab Procedure'),(34,'PTMC (3 days in Ward)','35,000','Cath Lab Procedure'),(35,' Pulmonary Valvuloplasty (3 days in Ward)','40,000','Cath Lab Procedure'),(36,'Coronary Angioplasty (PTCA) Simple Single Lesion with Single Stent','70,000','Cath Lab Procedure'),(37,'Coronary Angioplasty (PTCA) Complex Lesion with Tow or more Stents (Extra Charge for Special Item will be added)','80,000','Cath Lab Procedure'),(38,'Peripheral Angioplasty ( 3 days in ward, including CD)','75,000/- + Hardware','Cath Lab Procedure'),(39,'Renal Angioplasty (3 days in Ward, Including CD)','50,000','Cath Lab Procedure'),(40,'Primary PCI of Culprit Lesion using BMS','1,50,000','Cath Lab Procedure'),(41,'Medical Device (3 days in Ward, including CD)','45,000','Cath Lab Procedure'),(42,' Aortic Valvuloplasty (3 days in Ward, Including CD)','50,000','Cath Lab Procedure'),(43,'Dobutamin Stress Test','4,500','Cath Lab Procedure'),(44,'Pericardial Fluid Aspiration','8,000','Cath Lab Procedure'),(45,' IABP (If used)','70,000','Cath Lab Procedure'),(46,' Coil Embolization','35,000 + Coil charge','Cath Lab Procedure'),(47,'EP Study','25,000','Cath Lab Procedure'),(49,'FFR Study','35,000','Bed/Cabin And Other'),(50,'IVUS Study','60,000','Bed/Cabin And Other'),(51,'Rotablation','1,00,000','Bed/Cabin And Other'),(52,'RDN','1,75,000','Bed/Cabin And Other'),(53,'OCT','60,000','Bed/Cabin And Other'),(54,'Ventilator Charge Excluding ABG (Per Day)','10,000','Bed/Cabin And Other'),(55,'2D M-mode','1,000','Bed/Cabin And Other'),(56,'2D M-mode','1,000','Echo, ETT, ECG And Others'),(57,'Color Doppler','2,200','Echo, ETT, ECG And Others'),(58,'Paediatric Color Doppler (Below 5 years)','2,500','Echo, ETT, ECG And Others'),(59,'Tissue Doppler Imaging (TDI for CRT)','2,800','Echo, ETT, ECG And Others'),(60,'Paediatric Color Doppler (Under anesthesia)','3,200','Echo, ETT, ECG And Others'),(61,'Carotid Duplex','2,800','Echo, ETT, ECG And Others'),(62,'Peripheral Duplex (upper/lower limb)','3,500','Echo, ETT, ECG And Others'),(63,'Transoesophageal Echo (TEE)','4,000','Echo, ETT, ECG And Others'),(64,'Dobutamine Stress Echo (DSE)','4,500','Echo, ETT, ECG And Others'),(65,'3D Echo for SVR','3,000','Echo, ETT, ECG And Others'),(66,'Foetal Echocardiography','3,000','Echo, ETT, ECG And Others'),(67,'Color Doppler with Strain Imaging','2,800','Echo, ETT, ECG And Others'),(68,'ETT','2,500','Echo, ETT, ECG And Others'),(69,'ECG','200','Echo, ETT, ECG And Others'),(70,'Holter Monitor','4,000','Echo, ETT, ECG And Others'),(71,' TC, DC, HB%, ESR','400','Pathology Investigation'),(72,' TC DC','180','Pathology Investigation'),(73,'HB%','180','Pathology Investigation'),(74,'ESR','150','Pathology Investigation'),(75,'PCV','180','Pathology Investigation'),(76,'MCH','180','Pathology Investigation'),(77,'Platelet','160','Pathology Investigation'),(78,'RBC','180','Pathology Investigation'),(79,'Malarial Parasite (M.P)','250','Pathology Investigation'),(80,'Blood Film','300','Pathology Investigation'),(81,'Troponin-I','1,200','Pathology Investigation'),(82,'Circulating Eosonophil','250','Pathology Investigation'),(83,'BT/CT','250','Pathology Investigation'),(84,'Blood Sugar (F/R)','200','Pathology Investigation'),(85,'1 ½ / 2 hrs. ABF','200','Pathology Investigation'),(86,' G.T.T. with Urine (2 samples)','450','Pathology Investigation'),(87,'Urea','300','Pathology Investigation'),(88,'Creatinine','400','Pathology Investigation'),(89,'BUN','300','Pathology Investigation'),(90,' Uric Acid','400','Pathology Investigation'),(91,'Bilirubin','300','Pathology Investigation'),(92,'SGPT','400','Pathology Investigation'),(93,'SGOT','400','Pathology Investigation'),(94,'Alkaline Phosphatase','400','Pathology Investigation'),(95,'S. Cholesterol','400','Pathology Investigation'),(96,'Serum HDL','400','Pathology Investigation'),(97,'Serum LDL','400','Pathology Investigation'),(98,'TG (Triglycerides)','400','Pathology Investigation'),(99,' Lipid Profile','1,200','Pathology Investigation'),(100,'LDH','1,200','Pathology Investigation'),(101,'Total Protein','300','Pathology Investigation'),(102,' Albumin','300','Pathology Investigation'),(103,'Globulin','200','Pathology Investigation'),(104,'Serum Calcium','450','Pathology Investigation'),(105,'Serum Electrolytes (Na, K, Cl)','700','Pathology Investigation'),(106,'Prothrombin time (PT)','500','Pathology Investigation'),(107,'APTT','500','Pathology Investigation'),(108,' Blood Group + Rh Factor','300','Pathology Investigation'),(109,' Cross Matching','600','Pathology Investigation'),(110,'Blood Group (for Donor)','300','Pathology Investigation'),(111,'ASO','500','Pathology Investigation'),(112,'CRP','500','Pathology Investigation'),(113,'RA Factor','450','Pathology Investigation'),(114,'VDRL','350','Pathology Investigation'),(115,'HBs Ag (Screening)','450','Pathology Investigation'),(116,' HBs Ag (Confirmatory)','650','Pathology Investigation'),(117,'Widal Test','600','Pathology Investigation'),(118,'Package for Blood donor (HBsAg, HIV, VDRL, MP, Blood Group, Rh Factor, Cross Matching with Blood Bag)','2,000','Pathology Investigation'),(119,'Urine R/E','200','Pathology Investigation'),(120,'Urine C/S','600','Pathology Investigation'),(121,'Throat Swab','600','Pathology Investigation'),(122,'Blood C/S','1,200','Pathology Investigation'),(123,'Wound Swab C/S (Acrobic)','600','Pathology Investigation'),(124,'Pus C/S','600','Pathology Investigation'),(125,'Ear Swab C/S','600','Pathology Investigation'),(126,'Bile salt/Pigments/Ketin bodies (Each)','200','Pathology Investigation'),(127,'Surgical Package','6,500','Pathology Investigation'),(128,'Cath Lab Package','5,500','Pathology Investigation'),(129,'HCV (Screening)','500','Pathology Investigation'),(130,' HbA1C','800','Pathology Investigation'),(131,' HIV 1/2 (Screening)','400','Pathology Investigation'),(132,' Total Iron','500','Pathology Investigation'),(133,'Ferritin','1000','Pathology Investigation'),(134,'TIBC (Total Iron Binding Capacity)','500','Pathology Investigation'),(135,'IRON + Ferritin + TIBC','2,000','Pathology Investigation'),(136,'Procalcitonin (PCT)','2,400','Pathology Investigation'),(137,' Inj. Pneumo 23 Vaccine','500','Pathology Investigation'),(138,'T3','800','Pathology Investigation'),(139,' T4','800','Pathology Investigation'),(140,'TSH','800','Pathology Investigation'),(141,' FT3','900','Pathology Investigation'),(142,' FT4','900','Pathology Investigation'),(143,'CEA','800','Pathology Investigation'),(144,' PSA','900','Pathology Investigation'),(145,' HBs Ag','750','Pathology Investigation'),(146,' Dengue IgM','500','Pathology Investigation'),(147,'Dengue IgG','500','Pathology Investigation'),(148,'Dengu Strip (IgG+1gm)','500','Pathology Investigation'),(149,'Malaria Strip (V.F.M)','750','Pathology Investigation'),(150,'Serum Amylase','500','Pathology Investigation'),(151,'Dengue IgM & IgG Antibodies','500','Pathology Investigation'),(152,'Dengue NSI Antigens','500','Pathology Investigation'),(153,'B-type Natriuretic Peptide (BNP)','2,200','Pathology Investigation'),(154,'High Sensitive Troponin I (hr troponin I)','1,300','Pathology Investigation'),(155,'Fibrinogen (Coagulation Factor)','600','Pathology Investigation'),(156,' Ferritin','750','Pathology Investigation'),(157,' Iron','750','Pathology Investigation'),(158,'CRP (Qt)','450','Pathology Investigation'),(159,' Insulin','1,000','Pathology Investigation'),(160,'Homocystin','1,300','Pathology Investigation'),(161,'PSA','800','Pathology Investigation'),(162,' Troponin I','1,300','Pathology Investigation'),(163,'CK-MB (CMBI)','1,000','Pathology Investigation'),(164,'BNP','1,800','Pathology Investigation'),(165,' IgE','800','Pathology Investigation'),(166,'HBs. Ag (Qt)','650','Pathology Investigation'),(167,'HBs.Ab (Qt)','650','Pathology Investigation'),(168,'Vit-D','1,800','Pathology Investigation'),(169,'Vit.B12','1,800','Pathology Investigation'),(170,'Folate','1,000','Pathology Investigation'),(171,'Anti HCV','900','Pathology Investigation'),(172,'D-Dimer (New)','800','Pathology Investigation'),(173,'NT-Pro BNP','1,800','Pathology Investigation'),(174,'CRP (Quantitative)','450','Pathology Investigation'),(175,'eGFR','600','Pathology Investigation'),(176,'Chikungunya Antibodies IgM & IgG','500','Pathology Investigation'),(177,'PO4 (Phosphet)','450','Pathology Investigation'),(178,' ACR','1,000','Pathology Investigation'),(179,'RT-PCR Covid-19','2,500','Pathology Investigation'),(180,'RT-PCR Covid-19','700','Pathology Investigation'),(181,'CABG','2,30,000','Cardiac Operation'),(182,'ASD','1,70,000','Cardiac Operation'),(183,'VSD','1,70,000','Cardiac Operation'),(184,'TOF','2,00,000','Cardiac Operation'),(185,'CMC/PDA (Closed Heart Surgery)','90,000','Cardiac Operation'),(186,'CABG+ASD/VSD','2,90,000','Cardiac Operation'),(187,' IABP (If used)','70,000','Cardiac Operation'),(188,' ICU with Ventilator Charge (Per day)','8,000','Cardiac Operation'),(189,' IABP (if used)','70,000','Cardiac Operation'),(190,'MICS (Normal)','50,000','Cardiac Operation'),(191,'PICU','4,000','Cardiac Operation'),(192,'Chest P/A-View','450','X-Ray And Ultrasonogram'),(193,'Chest (Rt. Lateral)','450','X-Ray And Ultrasonogram'),(194,'Chest (Lt. Lateral)','450','X-Ray And Ultrasonogram'),(195,'Chest (A-P View)','450','X-Ray And Ultrasonogram'),(196,'Chest (Apical View)','450','X-Ray And Ultrasonogram'),(197,'Chest (Lordotic View)','450','X-Ray And Ultrasonogram'),(198,'Chest Rt. Lateral DecubitusView','450','X-Ray And Ultrasonogram'),(199,'Chest Lt. Lateral Decubitus View','450','X-Ray And Ultrasonogram'),(200,'Chest (Oblique View)','450','X-Ray And Ultrasonogram'),(201,'Chest for Lateral Aspect of the Ribeage','450','X-Ray And Ultrasonogram'),(202,'Chest (Supine View)','450','X-Ray And Ultrasonogram'),(203,'Chest (P-A View) for any Paravertebral Soft Tissue Mass','550','X-Ray And Ultrasonogram'),(204,'KUB (Plain X-ray KUB Region)','550','X-Ray And Ultrasonogram'),(205,'Abdomen Erect - Posture','550','X-Ray And Ultrasonogram'),(206,'Plain X-ray Abdomen','550','X-Ray And Ultrasonogram'),(207,'PNS B/V','550','X-Ray And Ultrasonogram'),(208,'Cervical Spine-B/V','550','X-Ray And Ultrasonogram'),(209,'PNS (OM View)','450','X-Ray And Ultrasonogram'),(210,'Skull B/VSkull B/V','550','X-Ray And Ultrasonogram'),(211,'Thoracic Spine B/V','600','X-Ray And Ultrasonogram'),(212,'Lumbo-Sacral Spine-B/V','600','X-Ray And Ultrasonogram'),(213,' S.I Joint (B/V)','600','X-Ray And Ultrasonogram'),(214,'Pelvis A/P View','450','X-Ray And Ultrasonogram'),(215,'Dorso-Lumbar Spine-B/V','600','X-Ray And Ultrasonogram'),(216,'Any Joint B/V','550','X-Ray And Ultrasonogram'),(217,'Bed Side / Portable X-ray','700','X-Ray And Ultrasonogram'),(218,'IVU (With contrast & others)','2,500','X-Ray And Ultrasonogram'),(219,'USG- Upper/Lower Abdomen, Pregnancy Profile','800','X-Ray And Ultrasonogram'),(220,'USG-Whole Abdomen','900','X-Ray And Ultrasonogram'),(221,'Scrotum/Testes','900','X-Ray And Ultrasonogram'),(222,' Breast','900','X-Ray And Ultrasonogram'),(223,'Thyroid / Others','900','X-Ray And Ultrasonogram'),(224,' Mobile USG - Upper/Lower Abdomen','1,000','X-Ray And Ultrasonogram'),(225,'Mobile USG-Whole Abdomen','1,200','X-Ray And Ultrasonogram'),(226,'Brain Plain','3,500','CT Scan & CT Angiogram Investigation'),(227,' Brain Contrast','3,500 + Contrast','CT Scan & CT Angiogram Investigation'),(228,'HRCT Temporal Bone','5,800','CT Scan & CT Angiogram Investigation'),(229,'PNS','5,800','CT Scan & CT Angiogram Investigation'),(230,'Facial Bone','5,300','CT Scan & CT Angiogram Investigation'),(231,'Neck Contrast','5,500 + Contrast','CT Scan & CT Angiogram Investigation'),(232,'Cervical Spine','5,300','CT Scan & CT Angiogram Investigation'),(233,' HRCT Chest','5,400','CT Scan & CT Angiogram Investigation'),(234,' Chest Plain','5,300','CT Scan & CT Angiogram Investigation'),(235,'Chest Contrast','5,300 + Contrast','CT Scan & CT Angiogram Investigation'),(236,'Upper Abdomen','5,500 + Contrast','CT Scan & CT Angiogram Investigation'),(237,'Lower Abdomen','5,500 + Contrast','CT Scan & CT Angiogram Investigation'),(238,'Whole Abdomen','10,000 + Contrast','CT Scan & CT Angiogram Investigation'),(239,'Dorsal Spine','5,800','CT Scan & CT Angiogram Investigation'),(240,' Lumbar Spine','5,800','CT Scan & CT Angiogram Investigation'),(241,'Pelvis','5,700','CT Scan & CT Angiogram Investigation'),(242,'Joint (Shoulder/Elbow/Wrist/Hip/Knee/Ankle)','5,400','CT Scan & CT Angiogram Investigation'),(243,'Extremity (Femer/Leg/Arm/Forearm)','5,400','CT Scan & CT Angiogram Investigation'),(244,'Coronary Cal. Scoring','4,000','CT Scan & CT Angiogram Investigation'),(245,'Coronary Angio + Scoring','15,000','CT Scan & CT Angiogram Investigation'),(246,'Cerebral Angio','11,500','CT Scan & CT Angiogram Investigation'),(247,'Carotid Angio','11,500','CT Scan & CT Angiogram Investigation'),(248,' Pulmonary Angio','12,000','CT Scan & CT Angiogram Investigation'),(249,'Aortic/ Thoracic Angio','15,200','CT Scan & CT Angiogram Investigation'),(250,'Abdominal Angio','15,200','CT Scan & CT Angiogram Investigation'),(251,'Rental Angio','11,800','CT Scan & CT Angiogram Investigation'),(252,'Peripheral Angio (Upper/Lower Limb)','16,000','CT Scan & CT Angiogram Investigation'),(253,'CT IVU','12,000 + Contrast','CT Scan & CT Angiogram Investigation'),(254,'CT Colonoscopy- Virtual','12,000 + Contrast','CT Scan & CT Angiogram Investigation'),(255,' CT Angio Cardiac Congential Anomaly (Paediatric)   (3 days package in ward including CBC & Serum Creatinine)  ','15,500','CT Scan & CT Angiogram Investigation'),(256,' CT Angio Cardiac Congential Anomaly (Adult)','12,200','CT Scan & CT Angiogram Investigation'),(257,'CT Aortogram (Non-contrast)','5,600','CT Scan & CT Angiogram Investigation'),(258,'CT Urogram (Non-contrast)','12,200','CT Scan & CT Angiogram Investigation'),(259,'CT ORBIT','5,600','CT Scan & CT Angiogram Investigation'),(260,'Contrast Charge- 100 ML','2,500','CT Scan & CT Angiogram Investigation'),(261,'Contrast Charge- 50 ML','1,400','CT Scan & CT Angiogram Investigation'),(262,'Film Charge (Per Film)','500','CT Scan & CT Angiogram Investigation'),(263,'CD Charge (Per CD)','200','CT Scan & CT Angiogram Investigation');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `sl` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Hasib Khan','01-01-1987','01234567891','A+','Guard'),(2,'Raisul Islam Rahat','01-01-2000','01712345678','B+','Cleaner'),(3,'Rimon Talukdar','25-10-1999','01612345678','AB+','Wardboy'),(4,'Arpita Saha','31-12-1995','01912345678','O+','Nurse'),(5,'Enjamul Haque Trony','25-10-1999','01812345678','A-','Cleaner');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `voterid` varchar(40) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL,
  `gander` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Ekram Hussain','ekram.cse.20210104061@aust.edu','01625733254','12345678987654321','14-09-2001','O+','MALE','123456'),(' ','','','','','A+','MALE',''),(' ','','','','','A+','MALE',''),('Mumit islam','mixcvbnm,','tyuio','rtyuio','dfghj','A+','MALE','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-12  6:29:42
