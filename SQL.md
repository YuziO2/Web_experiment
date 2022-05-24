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