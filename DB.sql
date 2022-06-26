-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: hongdb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `columns` int NOT NULL,
  `headline` varchar(45) NOT NULL,
  `body` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`headline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (2,'test',NULL),(1,'你是一个',NULL),(0,'曲折前行','“长征这一人类历史上的伟大壮举，留给我们最可宝贵的精神财富，就是中国共产党人和红军将士用生命和热血铸就的伟大长征精神。”习近平总书记深刻指出：“伟大长征精神，就是把全国人民和中华民族的根本利益看得高于一切，坚定革命的理想和信念，坚信正义事业必然胜利的精神；就是为了救国救民，不怕任何艰难险阻，不惜付出一切牺牲的精神；就是坚持独立自主、实事求是，一切从实际出发的精神；就是顾全大局、严守纪律、紧密团结的精神；就是紧紧依靠人民群众，同人民群众生死相依、患难与共、艰苦奋斗的精神。”\n\n纵横十余省，长驱二万五千里，同敌人进行了600余次战役战斗，跨越近百条江河，攀越40余座高山险峰……1934年10月至1936年10月，我们党领导红军，以非凡的智慧和大无畏的英雄气概，战胜千难万险，付出巨大牺牲，胜利完成震撼世界、彪炳史册的长征。这是一次理想信念的伟大远征、一次检验真理的伟大远征、一次唤醒民众的伟大远征、一次开创新局的伟大远征，是中国共产党和红军谱写的壮丽史诗，是中华民族伟大复兴历史进程中的巍峨丰碑。这一惊天动地的革命壮举所铸就的伟大长征精神，是中国共产党人及其领导的人民军队革命风范的生动反映，是中华民族自强不息的民族品格的集中展示，是以爱国主义为核心的民族精神的最高体现。习近平总书记强调：“不论我们的事业发展到哪一步，不论我们取得了多大成就，我们都要大力弘扬伟大长征精神，在新的长征路上继续奋勇前进。”\n\n伟大长征精神，作为中国共产党人红色基因和精神谱系的重要组成部分，已经深深融入中华民族的血脉和灵魂，成为社会主义核心价值观的丰富滋养，成为鼓舞和激励中国人民不断攻坚克难、从胜利走向胜利的强大精神动力。长征胜利80多年来，我们党团结带领全国各族人民，不断推进革命、建设、改革伟大事业，进行了一次又一次波澜壮阔的伟大长征，夺取了一个又一个举世瞩目的伟大胜利。长征永远在路上。必须清醒认识到，夺取坚持和发展中国特色社会主义伟大事业新进展，夺取推进党的建设新的伟大工程新成效，夺取具有许多新的历史特点的伟大斗争新胜利，还有许多“雪山”“草地”需要跨越，还有许多“娄山关”“腊子口”需要征服。弘扬伟大长征精神，走好今天的长征路，是新的时代条件下我们面临的一个重大课题。习近平总书记深刻指出：“伟大长征精神，是党和人民付出巨大代价、进行伟大斗争获得的宝贵精神财富，我们世世代代都要牢记伟大长征精神、学习伟大长征精神、弘扬伟大长征精神，使之成为我们党、我们国家、我们人民、我们军队、我们民族不断走向未来的强大精神动力。”\n\n今天，我们实现了第一个百年奋斗目标，正在意气风发向着全面建成社会主义现代化强国的第二个百年奋斗目标迈进。在新的长征路上，要深刻认识到：只有坚定理想信念，不论时代如何变化，不论条件如何变化，都风雨如磐不动摇，才能用理想之光照亮奋斗之路，用信仰之力开创美好未来；只有不怕牺牲、英勇斗争，不断增强斗争意识、丰富斗争经验、提升斗争本领，逢山开道、遇水架桥，才能战胜一切风险挑战；只有掌握科学理论才能把握正确前进方向，只有立足实际、独立自主开辟前进道路，才能不断走向胜利；只有坚持大团结大联合，团结一切可以团结的力量、调动一切可以调动的积极因素，才能形成海内外全体中华儿女心往一处想、劲往一处使的生动局面；只有始终相信人民，紧紧依靠人民，充分调动广大人民的积极性、主动性、创造性，才能凝聚起众志成城的磅礴之力。弘扬伟大长征精神，走好今天的长征路，必须坚定共产主义远大理想和中国特色社会主义共同理想，为崇高理想信念而矢志奋斗；必须坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信，为夺取中国特色社会主义伟大事业新胜利而矢志奋斗；必须把人民放在心中最高位置，坚持一切为了人民、一切依靠人民，为人民过上更加美好生活而矢志奋斗；必须把握方向、统揽大局、统筹全局，为实现我们的总任务、总布局、总目标而矢志奋斗；必须建设同我国国际地位相称、同国家安全和发展利益相适应的巩固国防和强大军队，为维护国家安全和世界和平而矢志奋斗；必须加强党的领导，坚持全面从严治党，为推进新时代党的建设新的伟大工程而矢志奋斗。\n\n精神是一个民族赖以长久生存的灵魂，唯有精神上达到一定的高度，这个民族才能在历史的洪流中屹立不倒、奋勇向前。奋斗新时代、奋进新征程，大力弘扬伟大长征精神，激励和鼓舞全党全军全国各族人民发愤图强、奋发有为，继续把革命前辈开创的伟大事业推向前进，我们就一定能在新的长征路上续写新的篇章、创造新的辉煌！'),(0,'燎原星火','<video src=\"http://play.shipin.beijing.gov.cn/vod/73681404/szfwbcpk/mrlm/2021/03/26/F3C9C21D551F4d30B1DBE400015B8BD51.mp4\" controls=\"controls\"  autoplay width=\"700\"></video>\n\n南昌起义、秋收起义的失败并没有让毛泽东、朱德等共产党人失去信念。相反，他们前赴后继，突破了敌人的围追堵截，建立了中国共产党领导的第一个革命根据地——井冈山革命根据地。革命的火种有了暂时的栖身之处。接下来，井冈山革命根据地如何长久存在，以及中国革命今后的发展方向等等这些战略问题，便提上了毛泽东的案头。此时，毛泽东等人对于革命根据地建立的经验还不是很丰富。不仅如此，党内对于革命的前途问题所持有的意见也并不统一，这些问题都大大影响了中国革命的发展。那么，井冈山革命根据地的建立经过了哪些挫折与挑战呢？在四面重兵的包围下，如星星之火一般的井冈山革命根据地到底是如何一步步建成的？毛泽东对于中国革命的发展，以及井冈山革命根据地的存续问题等重大革命问题，又有哪些独到的见解呢？'),(0,'谱写新章','“改革开放是党和人民大踏步赶上时代的重要法宝，是坚持和发展中国特色社会主义的必由之路，是决定当代中国命运的关键一招，也是决定实现‘两个一百年’奋斗目标、实现中华民族伟大复兴的关键一招。”在2018年举行的庆祝改革开放40周年大会上，习近平总书记深刻指出：“改革开放铸就的伟大改革开放精神，极大丰富了民族精神内涵，成为当代中国人民最鲜明的精神标识！”\n\n![](http://www.mod.gov.cn/education/attachement/jpg/site21/20211129/6c4b9041ab8b230eaf9a09.jpg)\n\n1978年12月，在党和国家面临何去何从的重大历史关头，我们党召开十一届三中全会。当时，世界经济快速发展，科技进步日新月异，而“文化大革命”十年内乱导致我国经济濒临崩溃的边缘，人民温饱都成问题，国家建设百业待兴。在邓小平同志领导下和老一辈革命家支持下，党的十一届三中全会冲破长期“左”的错误的严重束缚，批评“两个凡是”的错误方针，充分肯定必须完整、准确地掌握毛泽东思想的科学体系，高度评价关于真理标准问题的讨论，果断结束“以阶级斗争为纲”，重新确立马克思主义的思想路线、政治路线、组织路线。从此，我国改革开放拉开大幕，实现新中国成立以来党的历史上具有深远意义的伟大转折，开启了改革开放和社会主义现代化的伟大征程。\n\n![](http://www.mod.gov.cn/education/attachement/jpg/site21/20211129/6c4b9041ab8b230eafab0a.jpg)\n\n从开启新时期到跨入新世纪，从站上新起点到进入新时代，改革开放以来，我们党引领人民绘就了一幅波澜壮阔、气势恢宏的历史画卷，谱写了一曲感天动地、气壮山河的奋斗赞歌，改革开放和社会主义现代化建设的伟大成就举世瞩目，我国实现了从生产力相对落后的状况到经济总量跃居世界第二的历史性突破，实现了人民生活从温饱不足到总体小康、奔向全面小康的历史性跨越，推进了中华民族从站起来到富起来的伟大飞跃。党的十八大以来，以习近平同志为核心的党中央领导全党全军全国各族人民砥砺前行，全面建成小康社会目标如期实现，党和国家事业取得历史性成就、发生历史性变革，彰显了中国特色社会主义的强大生机活力，党心军心民心空前凝聚振奋，为实现中华民族伟大复兴提供了更为完善的制度保证、更为坚实的物质基础、更为主动的精神力量，中华民族迎来了从站起来、富起来到强起来的伟大飞跃！党的十一届三中全会是划时代的，实现党和国家工作中心战略转移，开启了改革开放和社会主义现代化建设新时期。党的十八届三中全会也是划时代的，对经济体制、政治体制、文化体制、社会体制、生态文明体制、国防和军队改革和党的建设制度改革作出部署，实现改革由局部探索、破冰突围到系统集成、全面深化的转变，开创了我国改革开放新局面，各领域基础性制度框架基本确立，许多领域实现历史性变革、系统性重塑、整体性重构；实行更加积极主动的开放战略，构建互利共赢、多元平衡、安全高效的开放型经济体系。实践充分表明，改革开放是我们党的一次伟大觉醒，正是这个伟大觉醒孕育了我们党从理论到实践的伟大创造；改革开放是中国人民和中华民族发展史上一次伟大革命，正是这个伟大革命推动了中国特色社会主义事业的伟大飞跃！\n\n![](http://www.mod.gov.cn/education/attachement/jpg/site21/20211129/6c4b9041ab8b230eafb20b.jpg)\n\n改革开放极大改变了中国的面貌、中华民族的面貌、中国人民的面貌、中国共产党的面貌。40多年来，我们解放思想、实事求是，大胆地试、勇敢地改，干出了一片新天地，使改革开放成为当代中国最显著的特征、最壮丽的气象。从“实践是检验真理的唯一标准”，到“冲破思想观念的障碍、突破利益固化的藩篱”，彰显了解放思想、实事求是的精神品质；从“杀出一条血路”，到“敢于啃硬骨头，敢于涉险滩”，蕴含着开拓创新、锐意变革的境界追求；从打开国门搞建设摆脱被开除“球籍”的危险，到形成更大范围、更宽领域、更深层次对外开放格局，展现了开放包容、合作共赢的博大胸怀。伟大改革开放精神是中国共产党人精神谱系的重要组成部分，是党和人民弥足珍贵的精神财富，是激励新时代改革开放再出发、更好坚持和发展中国特色社会主义的强大精神动力。'),(0,'黎明前夜','1840年的一声炮响把两千多年封建历史的中国一下子拉到了近代。从那时起，中国逐渐成为半殖民地半封建社会。为了改变中华民族、中国人民受奴役的屈辱命运，许多知识份子和仁人志士，满怀济世救国的忧患意识进行中艰苦卓绝的探索与斗争。\n\n首先是旧时代的封建统治阶级，他们发起洋务运动，妄图利用西方先进技术维护清朝统治，因其封建制度的根本弊端而惨败收场。随后是农民阶级发动太平天国起义和义和团运动，声势浩大，虽促进了中国广大人民群众的觉醒但又因农民阶级的局限性而失败。接下来是崇尚西方思想的资产阶级改良派、革命派先后发动戊戌变法、辛亥革命，意义深远但归于失败。中国共产党就是在这样的历史背景下登上中国政治舞台的，而共产党的建立不得不提的便是五四运动。\n\n![](https://img03.sogoucdn.com/v2/thumb/retype_exclude_gif/ext/auto/crop/xy/ai/w/969/h/545?appid=200698&url=https://pic.baike.soso.com/ugc/baikepic2/4086/cut-20210512182841-317996927_jpg_969_646_127174.jpg/0)\n\n一场口号为“外争主权，内除国贼”的游行示威轰轰烈烈地在北京上演，史学界将其称之为“五四运动”。无疑，“五四运动”是国人开始从蒙昧走向觉醒的标志。其伟大历史意义在于形成了一场由先进青年知识分子发起，各界人民群众共同参与的彻底反帝反封建的爱国运动，把爱国主义精神发展到了一个高峰。可以说，五四运动前的新文化运动是资产阶级民主主义的新文化反对封建主义的旧文化的斗争，五四运动后的新文化运动是马克思主义作为指导思想的无产阶级。在这场伟大斗争中，很多进步青年真正见识了工人阶级所表现出来的强大力量，他们开始走入民间、走向群众，后来也逐渐成长为了党的早期骨干。1921年7月23日，党的一大在上海召开，几天后在浙江嘉兴南湖的红船上结束。一大的召开标志着中国共产党的正式建立。\n\n一百多年前，五四先驱李大钊曾这样激励青年一代：青年之字典，无「困难」之字，青年之口头，无「障碍」之语；惟知跃进，惟知雄飞，惟知本其自由之精神，奇僻之思想，锐敏之直觉，活泼之生命。对于中国共产党而言，千秋伟业，百年正风华！\"');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `A` varchar(45) DEFAULT NULL,
  `B` varchar(45) DEFAULT NULL,
  `C` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'标志着中国工人阶级开始以独立的政治力量登上历史舞台的事件是(&nbsp;&nbsp;&nbsp;&nbsp;)','中国共产党的成立','五四运动','二七大罢工','B'),(2,'1921年7月下旬至8月初,中国共产党第一次全国代表大会先后在(&nbsp;&nbsp;&nbsp;&nbsp;)召开。','上海、天津','北京、上海','上海、嘉兴','C'),(3,'参加中国共产党第一次代表大会的5位湖北籍共产党人，除了董必武、陈潭秋外，其他三位是(&nbsp;&nbsp;&nbsp;&nbsp)','李汉俊、恽代英、林育南','李汉俊、包惠僧、刘仁静','包惠僧、刘仁静、李求实','B'),(4,'1923年6月，中国共产党第三次全国代表大会在广州召开，会议的中心议题是(&nbsp;&nbsp;&nbsp;&nbsp;)','讨论与国民党合作、建立革命统一战线的问题','如何进一步推动工人运动的发展','无产阶级领导权问题','A'),(5,'中国工人运动史上持续时间最长的一次罢工是(&nbsp;&nbsp;&nbsp;&nbsp;)','香港海员罢工','广州沙面工人罢工','省港大罢工','C');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `username` varchar(20) DEFAULT NULL,
  `answerID` varchar(45) DEFAULT NULL,
  `userAnswer` varchar(45) DEFAULT NULL,
  `correctAnswer` varchar(45) DEFAULT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`date`),
  KEY `fk_record_1_idx` (`username`),
  CONSTRAINT `fk_record_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES ('Yuzi','3,2,5,4,1','C,C,C,C,C','B,C,C,A,B',1653796667216),('Yuzi','4,3,1,2,5','A,B,A,C,B','A,B,B,C,C',1653819098879),('Yuzi','2,4,1,5,3','C,C,B,C,C','C,A,B,C,B',1653819341830),('Yuzi','2,5,4,1,3','C,C,C,C,C','C,C,A,B,B',1653819367980),('Yuzi','5,1,3,2,4','B,B,C,C,A','C,B,B,C,A',1653819394922),('Yuzi','4,5,1,2,3','C,C,A,B,C','A,C,B,C,B',1653819409649),('Yuzi','1,4,2,3,5','C,B,C,B,A','B,A,C,B,C',1653819425886),('Yuzi','1,3,4,2,5','B,B,A,C,C','B,B,A,C,C',1653831018976);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('yuzi','19198100',19,'Yuzi0201'),('Yuzi19','11111111',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-26 13:35:03
