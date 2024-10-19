CREATE DATABASE  IF NOT EXISTS `descarte_medicamentos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `descarte_medicamentos`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: descarte_medicamentos
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `ponto_coleta`
--

DROP TABLE IF EXISTS `ponto_coleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ponto_coleta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zona` varchar(255) DEFAULT NULL,
  `regiao_descr` varchar(255) DEFAULT NULL,
  `regiao_cod` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponto_coleta`
--

LOCK TABLES `ponto_coleta` WRITE;
/*!40000 ALTER TABLE `ponto_coleta` DISABLE KEYS */;
INSERT INTO `ponto_coleta` VALUES (542,'DROGARIA SÃO PAULO','01001000','SÃO PAULO','PC DA SE','SÃO PAULO',-23.55,-46.6332,'Centro','PRAÇA DA SÉ',1),(543,'DROGARIA SÃO PAULO','1029010','SÃO PAULO','LGO SAO BENTO','SÃO PAULO',6.636254,-73.223129,'Centro','PRAÇA DA SÉ',1),(544,'DROGARIA SÃO PAULO','1209010','SÃO PAULO','PC JULIO MESQUITA','SÃO PAULO',-23.550078042349213,-46.633300267359225,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(545,'DROGARIA SÃO PAULO','1226011','SÃO PAULO','R DAS PALMEIRAS','SÃO PAULO',-235344396,-466552211,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(546,'DROGARIA SÃO PAULO','1227100','SÃO PAULO','AV. ANGELICA','SÃO PAULO',-235445499,-466571066,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(547,'DROGARIA SÃO PAULO','1227100','SÃO PAULO','AV. ANGELICA','SÃO PAULO',-235445499,-466571066,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(548,'DROGARIA SÃO PAULO','1232011','SÃO PAULO','R CONSELHEIRO BROTERO','SÃO PAULO',-23536439,-466609338,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(549,'DROGARIA SÃO PAULO','1236050','SÃO PAULO','PC WENDELL WILKIE','SÃO PAULO',-235459098,-466692674,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(550,'DROGARIA SÃO PAULO','1238000','SÃO PAULO','AV. HIGIENOPOLIS','SÃO PAULO',-235422447,-466588414,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(551,'DROGARIA SÃO PAULO','1238000','SÃO PAULO','AV. HIGIENOPOLIS','SÃO PAULO',-235422447,-466588414,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(552,'ULTRAFARMA','1238010','SÃO PAULO','R. DONA VERIDIANA','SÃO PAULO',-235424645,-46651073,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(553,'DROGARIA SÃO PAULO','1242000','SÃO PAULO','R ALAGOAS','SÃO PAULO',-23545703,-466599568,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(554,'DROGARIA SÃO PAULO','1254000','SÃO PAULO','AV. PROF ALFONSO BOVERO','SÃO PAULO',-235427667,-466817011,'Centro','VILA BUARQUE - CONSOLAÇÃO',2),(555,'DROGARIA SÃO PAULO','1302001','SÃO PAULO','R DA CONSOLACAO','SÃO PAULO',-235539495,-466610289,'Centro','CONSOLAÇÃO - BELA VISTA',3),(556,'DROGARIA SÃO PAULO','1307001','SÃO PAULO','R FREI CANECA','SÃO PAULO',-235532037,-46651978,'Centro','CONSOLAÇÃO - BELA VISTA',3),(557,'DROGARIA SÃO PAULO','1310200','SÃO PAULO','AV. PAULISTA','SÃO PAULO',-235600926,-46658056,'Centro','CONSOLAÇÃO - BELA VISTA',3),(558,'DROGARIA SÃO PAULO','1310300','SÃO PAULO','AV. PAULISTA','SÃO PAULO',-235562995,-466620095,'Centro','CONSOLAÇÃO - BELA VISTA',3),(559,'DROGARIA SÃO PAULO','1310300','SÃO PAULO','AV. PAULISTA','SÃO PAULO',-235562995,-466620095,'Centro','CONSOLAÇÃO - BELA VISTA',3),(560,'DROGARIA SÃO PAULO','1311200','SÃO PAULO','AV. PAULISTA','SÃO PAULO',-235637088,-466537127,'Centro','CONSOLAÇÃO - BELA VISTA',3),(561,'DROGARIA SÃO PAULO','1311300','SÃO PAULO','AV. PAULISTA','SÃO PAULO',-23557331,-466613306,'Centro','CONSOLAÇÃO - BELA VISTA',3),(562,'ASSIFAR','1319070','SÃO PAULO','PC GENERAL CRAVEIRO LOPES','SÃO PAULO',-2355086,-46642401,'Centro','CONSOLAÇÃO - BELA VISTA',3),(563,'DROGARIA SÃO PAULO','1323000','SÃO PAULO','R MAESTRO CARDIM','SÃO PAULO',-235643417,-466411192,'Centro','CONSOLAÇÃO - BELA VISTA',3),(564,'DROGARIA SÃO PAULO','1401001','SÃO PAULO','AV. BRIGADEIRO LUIS ANTONIO','SÃO PAULO',-235741176,-466555982,'Centro','JARDINS – Cerqueira César',4),(565,'DROGARIA SÃO PAULO','1402000','SÃO PAULO','AV. BRIGADEIRO LUIS ANTONIO','SÃO PAULO',-235717931,-466531847,'Centro','JARDINS – Cerqueira César',4),(566,'DROGARIA SÃO PAULO','1405001','SÃO PAULO','R PAMPLONA','SÃO PAULO',-235676981,-4665771,'Centro','JARDINS – Cerqueira César',4),(567,'DROGARIA SÃO PAULO','1405002','SÃO PAULO','R PAMPLONA','SÃO PAULO',-235699182,-46659822,'Centro','JARDINS – Cerqueira César',4),(568,'DROGARIA SÃO PAULO','1413100','SÃO PAULO','R AUGUSTA','SÃO PAULO',-235645716,-466667619,'Centro','JARDINS – Cerqueira César',4),(569,'DROGARIA SÃO PAULO','1418100','SÃO PAULO','AL SANTOS','SÃO PAULO',-235658704,-466531387,'Centro','JARDINS – Cerqueira César',4),(570,'DROGARIA SÃO PAULO','1427000','SÃO PAULO','R ESTADOS UNIDOS','SÃO PAULO',-23574,-466604254,'Centro','JARDINS – Cerqueira César',4),(571,'DROGARIA SÃO PAULO','1451000','SÃO PAULO','AV. BRIG. FARIA LIMA','SÃO PAULO',-235793875,-466857007,'Centro','JARDINS – Cerqueira César',4),(572,'DROGARIA SÃO PAULO','1502001','SÃO PAULO','AV. DA LIBERDADE','SÃO PAULO',-235596195,-466378017,'Centro','LIBERDADE – Cambuci',5),(573,'DROGARIA SÃO PAULO','1506000','SÃO PAULO','R GALVAO BUENO','SÃO PAULO',-235597986,-466349005,'Centro','LIBERDADE – Cambuci',5),(574,'DROGARIA SÃO PAULO','1537000','SÃO PAULO','AV. LINS DE VASCONCELOS','SÃO PAULO',-235686808,-466218204,'Centro','LIBERDADE – Cambuci',5),(575,'DROGARIA SÃO PAULO','1537001','SÃO PAULO','AV. LINS DE VASCONCELOS','SÃO PAULO',-235769323,-466236013,'Centro','LIBERDADE – Cambuci',5),(576,'DROGARIA SÃO PAULO','1538001','SÃO PAULO','AV. LINS DE VASCONCELOS','SÃO PAULO',-235769323,-466236013,'Centro','LIBERDADE – Cambuci',5),(577,'DROGARIA SÃO PAULO','2018012','SÃO PAULO','R CONSELHEIRO MOREIRA DE BARROS','SÃO PAULO',-234918451,-466338813,'Norte','SANTANA – Jardim São Paulo',6),(578,'DROGARIA SÃO PAULO','2034001','SÃO PAULO','R EZEQUIEL FREIRE','SÃO PAULO',-235031363,-466235966,'Norte','SANTANA – Jardim São Paulo',6),(579,'DROGARIA SÃO PAULO','2065000','SÃO PAULO','AV. JOAQUINA RAMALHO','SÃO PAULO',-235110417,-466058443,'Norte','SANTANA – Jardim São Paulo',6),(580,'DROGARIA SÃO PAULO','2085100','SÃO PAULO','AV. LUIS DUMONT VILLARES','SÃO PAULO',-234949629,-466118724,'Norte','SANTANA – Jardim São Paulo',6),(581,'DROGARIA SÃO PAULO','2085100','SÃO PAULO','AV. LUIZ DUMONT VILLARES','SÃO PAULO',-234949629,-466118724,'Norte','SANTANA – Jardim São Paulo',6),(582,'DROGARIA SÃO PAULO','2113012','SÃO PAULO','AV. GUILHERME COTCHING','SÃO PAULO',-235160992,-465877643,'Norte','VILA MARIA – Jardim Japão',7),(583,'DROGARIA SÃO PAULO','2113017','SÃO PAULO','AV. GUILHERME COTCHING','SÃO PAULO',-235141937,-465865592,'Norte','VILA MARIA – Jardim Japão',7),(584,'PROFARMA','2124030','SÃO PAULO','PRAÇA NIPPON','SÃO PAULO',273573018,308897252,'Norte','VILA MARIA – Jardim Japão',7),(585,'DROGARIA SÃO PAULO','2138010','SÃO PAULO','AV. MILTON DA ROCHA','SÃO PAULO',-234894324,-465744233,'Norte','VILA MARIA – Jardim Japão',7),(586,'DROGARIA SÃO PAULO','2185000','SÃO PAULO','PC NOVO MUNDO','SÃO PAULO',-235173279,-465680689,'Norte','VILA MARIA – Jardim Japão',7),(587,'PROFARMA','2189010','SÃO PAULO','RUA SOLDADO JOÃO FERREIRA DA SILVA','SÃO PAULO',-23507044,-465684861,'Norte','VILA MARIA – Jardim Japão',7),(588,'RAIA DROGASIL','2201000','SÃO PAULO','AVENIDA JULIO BUONO','SÃO PAULO',-234914361,-465965021,'Norte','JAÇANÃ – Tucuruvi',8),(589,'FORTE FARMA','2229000','SÃO PAULO','AVENIDA EDU CHAVES','SÃO PAULO',-234718803,-46571799,'Norte','JAÇANÃ – Tucuruvi',8),(590,'DROGARIA SÃO PAULO','2242000','SÃO PAULO','AV. GENERAL ATALIBA LEONEL','SÃO PAULO',-234914349,-466085568,'Norte','JAÇANÃ – Tucuruvi',8),(591,'DROGARIA SÃO PAULO','2265002','SÃO PAULO','AV. GUAPIRA','SÃO PAULO',-234728459,-465883668,'Norte','JAÇANÃ – Tucuruvi',8),(592,'EXTRAFARMA','2265002','SÃO PAULO','AV GUAPIRA, 2697, JACANA','SÃO PAULO',-234728459,-465883668,'Norte','JAÇANÃ – Tucuruvi',8),(593,'PROFARMA','2265002','SÃO PAULO','AV GUAPIRA','SÃO PAULO',-234728459,-465883668,'Norte','JAÇANÃ – Tucuruvi',8),(594,'DROGARIA FARMENOS','2273001','SÃO PAULO','AVENIDA JAÇANA - LOJA 09','SÃO PAULO',-234659698,-465865592,'Norte','JAÇANÃ – Tucuruvi',8),(595,'DROGARIA SÃO PAULO','2305000','SÃO PAULO','AV. TUCURUVI','SÃO PAULO',-234812234,-466031319,'Norte','TREMEMBÉ – Água Fria',9),(596,'PROFARMA','2305002','SÃO PAULO','AV TUCURUVI','SÃO PAULO',-23481428,-466035086,'Norte','TREMEMBÉ – Água Fria',9),(597,'PROFARMA','2306002','SÃO PAULO','AV CEL SEZEFREDO FAGUNDES','SÃO PAULO',-234620644,-466028305,'Norte','TREMEMBÉ – Água Fria',9),(598,'DROGARIA SÃO PAULO','2306003','SÃO PAULO','AV. CORONEL SEZEFREDO FAGUNDES','SÃO PAULO',-234530501,-466017461,'Norte','TREMEMBÉ – Água Fria',9),(599,'PROFARMA','2306004','SÃO PAULO','AV CEL SEZEFREDO FAGUNDES','SÃO PAULO',-234501821,-465990885,'Norte','TREMEMBÉ – Água Fria',9),(600,'PROFARMA','2401400','SÃO PAULO','RUA VOLUNTÁRIOS DA PATRIA','SÃO PAULO',-234800069,-466323735,'Norte','MANDAQUI – Santa Teresinha',10),(601,'PROFARMA','2402100','SÃO PAULO','RUA VOLUNTÁRIOS DA PATRIA','SÃO PAULO',-234974737,-466258135,'Norte','MANDAQUI – Santa Teresinha',10),(602,'DROGARIA SÃO PAULO','2415000','SÃO PAULO','AV. SANTA INES','SÃO PAULO',-234734933,-466302071,'Norte','MANDAQUI – Santa Teresinha',10),(603,'DROGARIA SÃO PAULO','2430001','SÃO PAULO','AV. CONSELHEIRO MOREIRA DE BARROS','SÃO PAULO',354449207,1393694399,'Norte','MANDAQUI – Santa Teresinha',10),(604,'PROFARMA','2430001','SÃO PAULO','RUA CONS MOREIRA DE BARROS','SÃO PAULO',354449207,1393694399,'Norte','MANDAQUI – Santa Teresinha',10),(605,'PROFARMA','2432070','SÃO PAULO','AV AGUA FRIA','SÃO PAULO',-234852648,-466391093,'Norte','MANDAQUI – Santa Teresinha',10),(606,'PROFARMA','2443000','SÃO PAULO','RUA ADOLFO COELHO','SÃO PAULO',-234739673,-466459451,'Norte','MANDAQUI – Santa Teresinha',10),(607,'DROGARIA SÃO PAULO','2464100','SÃO PAULO','AV. IMIRIM','SÃO PAULO',-234946755,-466454806,'Norte','MANDAQUI – Santa Teresinha',10),(608,'DROGARIA SÃO PAULO','2465400','SÃO PAULO','AV. IMIRIM','SÃO PAULO',-234799095,-466596223,'Norte','MANDAQUI – Santa Teresinha',10),(609,'DROGARIA SÃO PAULO','2515000','SÃO PAULO','R DR CESAR CASTIGLIONE JUNIOR','SÃO PAULO',-235107208,-466592186,'Norte','CASA VERDE – Parque Peruche',11),(610,'PROFARMA','2515000','SÃO PAULO','RUA DR CESAR CASTIGLIONI JR','SÃO PAULO',-235107208,-466592186,'Norte','CASA VERDE – Parque Peruche',11),(611,'DROGARIA SÃO PAULO','2518050','SÃO PAULO','PC DELEGADO AMOROSO NETO','SÃO PAULO',-235092891,-466656235,'Norte','CASA VERDE – Parque Peruche',11),(612,'PROFARMA','2519000','SÃO PAULO','AV CASA VERDE','SÃO PAULO',-234995074,-466436708,'Norte','CASA VERDE – Parque Peruche',11),(613,'PROFARMA','2545000','SÃO PAULO','RUA ZILDA','SÃO PAULO',-234961515,-466610289,'Norte','CASA VERDE – Parque Peruche',11),(614,'PROFARMA','2545000','SÃO PAULO','RUA ZILDA','SÃO PAULO',-234961515,-466610289,'Norte','CASA VERDE – Parque Peruche',11),(615,'DROGARIA SÃO PAULO','2611002','SÃO PAULO','AV. PARADA PINTO','SÃO PAULO',-234694844,-466640462,'Norte','CACHOEIRINHA – Jardim Peri Peri',12),(616,'DROGARIA SÃO PAULO','2631000','SÃO PAULO','AV. SANTA INES','SÃO PAULO',-234581183,-466483582,'Norte','CACHOEIRINHA – Jardim Peri Peri',12),(617,'PROFARMA','2721200','SÃO PAULO','AV DEP EMILIO CARLOS','SÃO PAULO',-234803516,-466730992,'Norte','LIMÃO – Itaberaba',13),(618,'PROFARMA','2721200','SÃO PAULO','AV DEP EMILIO CARLOS','SÃO PAULO',-234803516,-466730992,'Norte','LIMÃO – Itaberaba',13),(619,'DROGARIA SÃO PAULO','2726100','SÃO PAULO','R CAMPOS DO CAJURU','SÃO PAULO',-235014092,-466857762,'Norte','LIMÃO – Itaberaba',13),(620,'DROGARIA SÃO PAULO','2731000','SÃO PAULO','R BONIFACIO CUBAS','SÃO PAULO',-234990102,-466940892,'Norte','LIMÃO – Itaberaba',13),(621,'DROGARIA SÃO PAULO','2732040','SÃO PAULO','AV. SANTA MARINA','SÃO PAULO',-235025679,-46694337,'Norte','LIMÃO – Itaberaba',13),(622,'DROGARIA SÃO PAULO','2739000','SÃO PAULO','AV. ITABERABA','SÃO PAULO',-234840558,-466877384,'Norte','LIMÃO – Itaberaba',13),(623,'PROFARMA','2739000','SÃO PAULO','AV ITABERABA','SÃO PAULO',-234840558,-466877384,'Norte','LIMÃO – Itaberaba',13),(624,'PROFARMA','2739000','SÃO PAULO','AV ITABERABA','SÃO PAULO',-234840558,-466877384,'Norte','LIMÃO – Itaberaba',13),(625,'RAIA DROGASIL','2763110','SÃO PAULO','RUA EDMUNDO KRUG','SÃO PAULO',-23481126,-466738793,'Norte','LIMÃO – Itaberaba',13),(626,'DROGARIA SÃO PAULO','2831000','SÃO PAULO','R PARAPUA','SÃO PAULO',-234713037,-46691814,'Norte','BRASILÂNDIA – Morro Grande',14),(627,'DROGARIA SÃO PAULO','2880070','SÃO PAULO','AV. DEPUTADO CANTIDIO SAMPAIO','SÃO PAULO',-234683989,-466773245,'Norte','BRASILÂNDIA – Morro Grande',14),(628,'DROGARIA SÃO PAULO','2915100','SÃO PAULO','AV. PAULA FERREIRA','SÃO PAULO',-234935091,-467148434,'Norte','FREGUESIA DO Ó – Piqueri',15),(629,'DROGARIA SÃO PAULO','2936000','SÃO PAULO','AV. BENEDITO ANDRADE','SÃO PAULO',-234876043,-467174621,'Norte','FREGUESIA DO Ó – Piqueri',15),(630,'PROFARMA','2936000','SÃO PAULO','AV BENEDITO ANDRADE','SÃO PAULO',-234876043,-467174621,'Norte','FREGUESIA DO Ó – Piqueri',15),(631,'DROGARIA SÃO PAULO','2936010','SÃO PAULO','AV. CABO ADAO PEREIRA','SÃO PAULO',-23484445,-467163604,'Norte','FREGUESIA DO Ó – Piqueri',15),(632,'PROFARMA','2989095','SÃO PAULO','AV RAIMUNDO PEREIRA DE MAGALHÃES','SÃO PAULO',-234307817,-467203606,'Norte','FREGUESIA DO Ó – Piqueri',15),(633,'PROFARMA','2991000','SÃO PAULO','ESTRADA DAS TAIPAS','SÃO PAULO',-234539037,-467374229,'Norte','FREGUESIA DO Ó – Piqueri',15),(634,'DROGARIA SÃO PAULO','3002000','SÃO PAULO','AV. RANGEL PESTANA','SÃO PAULO',-235442005,-466182027,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(635,'DROGARIA SÃO PAULO','3014000','SÃO PAULO','AV. CELSO GARCIA','SÃO PAULO',-235381186,-465989128,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(636,'CARISTO FARMA BELEM','3057040','SÃO PAULO','LARGO SÃO JOSÉ DO BELÉM','SÃO PAULO',-235409221,-465944269,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(637,'DROGARIA TOTAL','3062000','SÃO PAULO','RUA HERVAL','SÃO PAULO',-235407181,-465883668,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(638,'DROGARIA SÃO PAULO','3064000','SÃO PAULO','AV. CELSO GARCIA','SÃO PAULO',-235344095,-465675827,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(639,'EXTRAFARMA','3066010','SÃO PAULO','RUA PADRE ANTÔNIO DE SÁ, 176, TATUAPE','SÃO PAULO',-235369299,-465757146,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(640,'EXTRAFARMA','3066030','SÃO PAULO','RUA GONÇALVES CRESPO, 78, TATUAPE','SÃO PAULO',-235387039,-465755902,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(641,'CARISTO FARMA TATUAPE','3081012','SÃO PAULO','R. TUIUTI','SÃO PAULO',-235374208,-465754134,'Leste','BRÁS – Belenzinho - ParqueS.Jorge',16),(642,'DROGARIA SÃO PAULO','3114000','SÃO PAULO','AV. PAES DE BARROS','SÃO PAULO',-235573971,-466004196,'Leste','MOÓCA – Vila Zelina',17),(643,'EXTRAFARMA','3114000','SÃO PAULO','AV PAES DE BARROS, 942, MOOCA','SÃO PAULO',-235573971,-466004196,'Leste','MOÓCA – Vila Zelina',17),(644,'DROGARIA SÃO PAULO','3114001','SÃO PAULO','AV. PAES DE BARROS','SÃO PAULO',-235738461,-465875383,'Leste','MOÓCA – Vila Zelina',17),(645,'PROFARMA','3115001','SÃO PAULO','AV PAES DE BARROS','SÃO PAULO',-235707687,-46587463,'Leste','MOÓCA – Vila Zelina',17),(646,'DROGARIA SÃO PAULO','3124020','SÃO PAULO','R JUVENTUS','SÃO PAULO',-235709242,-465907018,'Leste','MOÓCA – Vila Zelina',17),(647,'DROGARIA SÃO PAULO','3126000','SÃO PAULO','R CAPITAO PACHECO E CHAV. ES','SÃO PAULO',-235818937,-465937902,'Leste','MOÓCA – Vila Zelina',17),(648,'DROGARIA SÃO PAULO','3126050','SÃO PAULO','PC PDE DAMIAO','SÃO PAULO',-235814398,-465854435,'Leste','MOÓCA – Vila Zelina',17),(649,'DROGARIA SÃO PAULO','3134001','SÃO PAULO','R IBITIRAMA','SÃO PAULO',-235889224,-465835738,'Leste','MOÓCA – Vila Zelina',17),(650,'DROGARIA SÃO PAULO','3143000','SÃO PAULO','AV. ZELINA','SÃO PAULO',-235893754,-465791032,'Leste','MOÓCA – Vila Zelina',17),(651,'DROGARIA SÃO PAULO','3153001','SÃO PAULO','AV. YERVANT KISSAJIKIAN','SÃO PAULO',-235927016,-465849052,'Leste','MOÓCA – Vila Zelina',17),(652,'EXTRAFARMA','3176000','SÃO PAULO','RUA DA MOOCA, 3355, MOOCA','SÃO PAULO',-23552962,-465906265,'Leste','MOÓCA – Vila Zelina',17),(653,'EXTRAFARMA','3195100','SÃO PAULO','RUA DO ORATÓRIO, 1274, MOOCA','SÃO PAULO',-235712538,-465811366,'Leste','MOÓCA – Vila Zelina',17),(654,'DROGARIA SÃO PAULO','3209080','SÃO PAULO','PC CORONEL MELO GAIA','SÃO PAULO',-235973588,-465594521,'Leste','SÃO LUCAS – Sapopemba',18),(655,'DROGARIA SÃO PAULO','3221100','SÃO PAULO','AV. DO ORATORIO','SÃO PAULO',-235927161,-465467319,'Leste','SÃO LUCAS – Sapopemba',18),(656,'EXTRAFARMA','3221100','SÃO PAULO','AV DO ORATÓRIO, 2451, PARQUE SAO LUCAS','SÃO PAULO',-235927161,-465467319,'Leste','SÃO LUCAS – Sapopemba',18),(657,'EXTRAFARMA','3227000','SÃO PAULO','AV FRANCISCO FALCONI, 326, JARDIM AVELINO','SÃO PAULO',-235905193,-465667925,'Leste','SÃO LUCAS – Sapopemba',18),(658,'DROGARIA SÃO PAULO','3282000','SÃO PAULO','AV. VILA EMA','SÃO PAULO',-235818823,-465522869,'Leste','SÃO LUCAS – Sapopemba',18),(659,'DROGARIA SÃO PAULO','3311000','SÃO PAULO','R APUCARANA','SÃO PAULO',-235427847,-4656427,'Leste','ANÁLIA FRANCO – Tatuapé',19),(660,'EXTRAFARMA','3313000','SÃO PAULO','RUA FRANCISCO MARENGO, 699, CARRAO','SÃO PAULO',-235416049,-46559151,'Leste','ANÁLIA FRANCO – Tatuapé',19),(661,'DROGARIA SÃO PAULO','3318000','SÃO PAULO','R SERRA DE BRAGANCA','SÃO PAULO',-23544706,-465663781,'Leste','ANÁLIA FRANCO – Tatuapé',19),(662,'DROGARIA SÃO PAULO','3322080','SÃO PAULO','LGO NOSSA SENHORA DO BOM PARTO','SÃO PAULO',-235483289,-465690374,'Leste','ANÁLIA FRANCO – Tatuapé',19),(663,'DROGARIA SÃO PAULO','3323000','SÃO PAULO','PC SILVIO ROMERO','SÃO PAULO',-235455227,-465734556,'Leste','ANÁLIA FRANCO – Tatuapé',19),(664,'DROGARIA SÃO PAULO','3323000','SÃO PAULO','PC SILVIO ROMERO','SÃO PAULO',-235455227,-465734556,'Leste','ANÁLIA FRANCO – Tatuapé',19),(665,'CARISTO FARMA MARENGO','3336000','SÃO PAULO','R. EMÍLIA MARENGO','SÃO PAULO',-235540942,-465611443,'Leste','ANÁLIA FRANCO – Tatuapé',19),(666,'DROGARIA SÃO PAULO','3345000','SÃO PAULO','AV. SAPOPEMBA','SÃO PAULO',-235746928,-465556852,'Leste','ANÁLIA FRANCO – Tatuapé',19),(667,'DROGARIA SÃO PAULO','3345000','SÃO PAULO','AV SAPOPEMBA','SÃO PAULO',-235746928,-465556852,'Leste','ANÁLIA FRANCO – Tatuapé',19),(668,'FARMAIS','3361000','SÃO PAULO','AVENIDA JOÃO XXIII','SÃO PAULO',-235717549,-46536498,'Leste','ANÁLIA FRANCO – Tatuapé',19),(669,'DROGARIA SÃO PAULO','3374000','SÃO PAULO','AV. SAPOPEMBA','SÃO PAULO',-235759172,-465512001,'Leste','ANÁLIA FRANCO – Tatuapé',19),(670,'DROGARIA SÃO PAULO','3377000','SÃO PAULO','AV. RENATA','SÃO PAULO',-235744208,-465413889,'Leste','ANÁLIA FRANCO – Tatuapé',19),(671,'DROGARIA SÃO PAULO','3402000','SÃO PAULO','AV. CONSELHEIRO CARRAO','SÃO PAULO',-235389411,-465542583,'Leste','ARICANDUVA – Vila Carrão',20),(672,'DROGARIA SÃO PAULO','3452100','SÃO PAULO','AV. RIO DAS PEDRAS','SÃO PAULO',-235671554,-465108267,'Leste','ARICANDUVA – Vila Carrão',20),(673,'PROFARMA','3453100','SÃO PAULO','AV RIO DAS PEDRAS','SÃO PAULO',-235831851,-464943051,'Leste','ARICANDUVA – Vila Carrão',20),(674,'DROGARIA SÃO PAULO','3526000','SÃO PAULO','AV. ITAQUERA','SÃO PAULO',-235500258,-465079894,'Leste','VILA MATILDE – Artur Alvim',21),(675,'DROGARIA SÃO PAULO','3527000','SÃO PAULO','AV. ARICANDUVA','SÃO PAULO',-235438824,-465305542,'Leste','VILA MATILDE – Artur Alvim',21),(676,'DROGARIA SÃO PAULO','3533000','SÃO PAULO','AV. WALDEMAR CARLOS PEREIRA','SÃO PAULO',-235475903,-465103958,'Leste','VILA MATILDE – Artur Alvim',21),(677,'DROGARIA SÃO PAULO','3566000','SÃO PAULO','R MACIEL MONTEIRO','SÃO PAULO',-235399095,-464911503,'Leste','VILA MATILDE – Artur Alvim',21),(678,'DROGARIA NOVA ERA','3585050','SÃO PAULO','VALDEMAR BASSI','SÃO PAULO',-235608248,-464911477,'Leste','VILA MATILDE – Artur Alvim',21),(679,'DROGARIA SÃO PAULO','3620000','SÃO PAULO','AV. SAO MIGUEL','SÃO PAULO',359773868,1395932162,'Leste','PENHA – Cidade A. E. Carvalho',22),(680,'DROGARIA SÃO PAULO','3634000','SÃO PAULO','AV. CANGAIBA','SÃO PAULO',-235239342,-465468072,'Leste','PENHA – Cidade A. E. Carvalho',22),(681,'DROGARIA SÃO PAULO','3653000','SÃO PAULO','AV. AMADOR BUENO DA VEIGA','SÃO PAULO',-235217556,-465298019,'Leste','PENHA – Cidade A. E. Carvalho',22),(682,'RAIA DROGASIL','3712008','SÃO PAULO','AVENIDA CANGAIBA','SÃO PAULO',-235059809,-465293505,'Leste','CANGAÍBA – Ponte Rasa',23),(683,'DROGARIA SÃO PAULO','3889000','SÃO PAULO','AV. AGUIA DE HAIA','SÃO PAULO',-235349439,-464740112,'Leste','ERMELINO MATARAZZO – Vila Paranaguá',24),(684,'RAIA DROGASIL','3901010','SÃO PAULO','AVENIDA DOS NACIONALISTAS','SÃO PAULO',-235770257,-465164961,'Leste','SÃO MATEUS – Iguaçu',25),(685,'DROGARIA SÃO PAULO','3911000','SÃO PAULO','AV. INCONFIDENCIA MINEIRA','SÃO PAULO',-235726951,-465115991,'Leste','SÃO MATEUS – Iguaçu',25),(686,'DROGARIA SÃO PAULO','3949100','SÃO PAULO','AV. MATEO BEI','SÃO PAULO',-235957774,-464875949,'Leste','SÃO MATEUS – Iguaçu',25),(687,'DROGARIA SÃO PAULO','3949300','SÃO PAULO','AV. MATEO BEI','SÃO PAULO',-236070333,-46478896,'Leste','SÃO MATEUS – Iguaçu',25),(688,'DROGARIA SÃO PAULO','3988010','SÃO PAULO','AV. SAPOPEMBA','SÃO PAULO',-236033977,-465098694,'Leste','SÃO MATEUS – Iguaçu',25),(689,'PROFARMA','3988010','SÃO PAULO','AV SAPOPEMBA','SÃO PAULO',-236033977,-465098694,'Leste','SÃO MATEUS – Iguaçu',25),(690,'DROGARIA SÃO PAULO','4004040','SÃO PAULO','AV. BERNARDINO DE CAMPOS','SÃO PAULO',-235713428,-466441353,'Sul','MOEMA – Vila Mariana',26),(691,'DROGARIA SÃO PAULO','4005003','SÃO PAULO','R ABILIO SOARES','SÃO PAULO',-235764984,-466495648,'Sul','MOEMA – Vila Mariana',26),(692,'EXTRAFARMA','4005003','SÃO PAULO','RUA ABÍLIO SOARES, 925, VILA MARIANA','SÃO PAULO',-235764984,-466495648,'Sul','MOEMA – Vila Mariana',26),(693,'DROGARIA SÃO PAULO','4014001','SÃO PAULO','AV. CONSELHEIRO RODRIGUES ALVES','SÃO PAULO',-235841244,-466425518,'Sul','MOEMA – Vila Mariana',26),(694,'EXTRAFARMA','4015001','SÃO PAULO','RUA JOAQUIM TÁVORA, 887, VILA MARIANA','SÃO PAULO',-235841747,-466373605,'Sul','MOEMA – Vila Mariana',26),(695,'DROGARIA SÃO PAULO','4016003','SÃO PAULO','R FRANÇA PINTO','SÃO PAULO',-235882171,-466438337,'Sul','MOEMA – Vila Mariana',26),(696,'DROGARIA SÃO PAULO','4028000','SÃO PAULO','AV. IBIRAPUERA','SÃO PAULO',-235955518,-466546931,'Sul','MOEMA – Vila Mariana',26),(697,'DROGARIA SÃO PAULO','4028001','SÃO PAULO','AV. IBIRAPUERA','SÃO PAULO',-236018117,-466607272,'Sul','MOEMA – Vila Mariana',26),(698,'DROGARIA SÃO PAULO','4029000','SÃO PAULO','R DAS ROSAS','SÃO PAULO',-235967589,-466555982,'Sul','MOEMA – Vila Mariana',26),(699,'DROGARIA SÃO PAULO','4029000','SÃO PAULO','AV. IBIRAPUERA','SÃO PAULO',-235967589,-466555982,'Sul','MOEMA – Vila Mariana',26),(700,'DROGARIA SÃO PAULO','4029000','SÃO PAULO','AV. IBIRAPUERA','SÃO PAULO',-235967589,-466555982,'Sul','MOEMA – Vila Mariana',26),(701,'DROGARIA SÃO PAULO','4036100','SÃO PAULO','R DOMINGOS DE MORAES','SÃO PAULO',-236014965,-466365954,'Sul','MOEMA – Vila Mariana',26),(702,'DROGARIA SÃO PAULO','4039032','SÃO PAULO','R PEDRO DE TOLEDO','SÃO PAULO',-235982905,-466440489,'Sul','MOEMA – Vila Mariana',26),(703,'DROGARIA SÃO PAULO','4041051','SÃO PAULO','AV. ONZE DE JUNHO','SÃO PAULO',-236015707,-46640893,'Sul','MOEMA – Vila Mariana',26),(704,'DROGARIA SÃO PAULO','4042032','SÃO PAULO','AV. DR ALTINO ARANTES','SÃO PAULO',-236029033,-466404406,'Sul','MOEMA – Vila Mariana',26),(705,'DROGARIA SÃO PAULO','4057000','SÃO PAULO','AV. JOSE MARIA WHITAKER','SÃO PAULO',-236109044,-466456608,'Sul','MOEMA – Vila Mariana',26),(706,'DROGARIA SÃO PAULO','4074031','SÃO PAULO','AV. MOREIRA GUIMARAES','SÃO PAULO',-236152435,-46659294,'Sul','MOEMA – Vila Mariana',26),(707,'DROGARIA SÃO PAULO','4077020','SÃO PAULO','AV. MOEMA','SÃO PAULO',-236039707,-466592186,'Sul','MOEMA – Vila Mariana',26),(708,'DROGARIA SÃO PAULO','4080005','SÃO PAULO','AV. JANDIRA','SÃO PAULO',-236114766,-46656805,'Sul','MOEMA – Vila Mariana',26),(709,'DROGARIA SÃO PAULO','4088005','SÃO PAULO','AL DOS JURUPIS','SÃO PAULO',-236111406,-466661584,'Sul','MOEMA – Vila Mariana',26),(710,'DROGARIA SÃO PAULO','4089011','SÃO PAULO','AL DOS MARACATINS','SÃO PAULO',-236054603,-466592186,'Sul','MOEMA – Vila Mariana',26),(711,'EXTRAFARMA','4089012','SÃO PAULO','ALAMEDA DOS MARACATINS, 923, INDIANOPOLIS','SÃO PAULO',-236081843,-466617078,'Sul','MOEMA – Vila Mariana',26),(712,'DROGARIA SÃO PAULO','4109000','SÃO PAULO','R PEDRA AZUL','SÃO PAULO',-235762005,-466296265,'Sul','SAÚDE - Vila Liviero',27),(713,'DROGARIA SÃO PAULO','4116130','SÃO PAULO','R DAV. I HUME','SÃO PAULO',-235946979,-466244637,'Sul','SAÚDE - Vila Liviero',27),(714,'DROGARIA SÃO PAULO','4117095','SÃO PAULO','PC MONTEIRO DOS SANTOS','SÃO PAULO',-235891082,-466290688,'Sul','SAÚDE - Vila Liviero',27),(715,'DROGARIA SÃO PAULO','4119062','SÃO PAULO','R AFONSO CELSO','SÃO PAULO',-236033568,-466350875,'Sul','SAÚDE - Vila Liviero',27),(716,'DROGARIA SÃO PAULO','4123011','SÃO PAULO','AV. PROF ABRAAO DE MORAES','SÃO PAULO',-236128018,-466273228,'Sul','SAÚDE - Vila Liviero',27),(717,'DROGARIA SÃO PAULO','4123020','SÃO PAULO','AV. DR RICARDO JAFET','SÃO PAULO',-236008903,-466245339,'Sul','SAÚDE - Vila Liviero',27),(718,'DROGARIA SÃO PAULO','4144000','SÃO PAULO','R CARNEIRO DA CUNHA','SÃO PAULO',-236158978,-46636897,'Sul','SAÚDE - Vila Liviero',27),(719,'DROGARIA SÃO PAULO','4151100','SÃO PAULO','PC LEONOR KAUPA','SÃO PAULO',-236198553,-466270172,'Sul','SAÚDE - Vila Liviero',27),(720,'DROGARIA SÃO PAULO','4152000','SÃO PAULO','R ELISA SILVEIRA','SÃO PAULO',-23622469,-466266444,'Sul','SAÚDE - Vila Liviero',27),(721,'DROGARIA SÃO PAULO','4166000','SÃO PAULO','AV. PADRE ARLINDO VIEIRA','SÃO PAULO',-236332058,-466052415,'Sul','SAÚDE - Vila Liviero',27);
/*!40000 ALTER TABLE `ponto_coleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-19  7:21:20
