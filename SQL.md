# Create
## users
```sql
CREATE TABLE `hongdb`.`users` (
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`username`));
```
## questions
```sql
CREATE TABLE `hongdb`.`questions` (
  `id` INT NOT NULL,
  `question` VARCHAR(100) NULL,
  `A` VARCHAR(45) NULL,
  `B` VARCHAR(45) NULL,
  `C` VARCHAR(45) NULL,
  `answer` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
```
## record
```sql
CREATE TABLE `record` (
  `username` varchar(20) DEFAULT NULL,
  `answerID` varchar(45) DEFAULT NULL,
  `userAnswer` varchar(45) DEFAULT NULL,
  `correctAnswer` varchar(45) DEFAULT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`date`),
  KEY `fk_record_1_idx` (`username`),
  CONSTRAINT `fk_record_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
)
```
## articles
```sql
CREATE TABLE `hongdb`.`articles` (
  `columns` INT NOT NULL,
  `headline` VARCHAR(45) NOT NULL,
  `body` VARCHAR(10000) NULL,
  PRIMARY KEY (`headline`));
```