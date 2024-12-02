-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `active_loans`
--

DROP TABLE IF EXISTS `active_loans`;
/*!50001 DROP VIEW IF EXISTS `active_loans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `active_loans` AS SELECT 
 1 AS `Title`,
 1 AS `Member_Name`,
 1 AS `Loan_Date`,
 1 AS `Due_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `book_loan_info`
--

DROP TABLE IF EXISTS `book_loan_info`;
/*!50001 DROP VIEW IF EXISTS `book_loan_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `book_loan_info` AS SELECT 
 1 AS `Book_ID`,
 1 AS `Title`,
 1 AS `Author`,
 1 AS `Member_ID`,
 1 AS `Member_Name`,
 1 AS `Loan_Date`,
 1 AS `Due_Date`,
 1 AS `Return_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `active_loans`
--

/*!50001 DROP VIEW IF EXISTS `active_loans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_loans` AS select `books`.`Title` AS `Title`,`members`.`First_Name` AS `Member_Name`,`loans`.`Loan_Date` AS `Loan_Date`,`loans`.`Due_Date` AS `Due_Date` from ((`loans` join `books` on((`loans`.`Book_ID` = `books`.`Book_ID`))) join `members` on((`loans`.`Member_ID` = `members`.`Member_ID`))) where (`loans`.`Return_Date` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `book_loan_info`
--

/*!50001 DROP VIEW IF EXISTS `book_loan_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_loan_info` AS select `books`.`Book_ID` AS `Book_ID`,`books`.`Title` AS `Title`,`books`.`Author` AS `Author`,`members`.`Member_ID` AS `Member_ID`,`members`.`First_Name` AS `Member_Name`,`loans`.`Loan_Date` AS `Loan_Date`,`loans`.`Due_Date` AS `Due_Date`,`loans`.`Return_Date` AS `Return_Date` from ((`books` join `loans` on((`books`.`Book_ID` = `loans`.`Book_ID`))) join `members` on((`loans`.`Member_ID` = `members`.`Member_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 21:29:28
