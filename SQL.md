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
CREATE TABLE `hongdb`.`record` (
  `username` VARCHAR(20) NULL,
  `answerID` VARCHAR(45) NULL,
  `userAnswer` VARCHAR(45) NULL,
  `correctAnswer` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  INDEX `fk_record_1_idx` (`username` ASC) VISIBLE,
  CONSTRAINT `fk_record_1`
    FOREIGN KEY (`username`)
    REFERENCES `hongdb`.`users` (`username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```