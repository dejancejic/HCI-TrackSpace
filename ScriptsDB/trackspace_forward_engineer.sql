-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema trackspace
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `trackspace` ;

-- -----------------------------------------------------
-- Schema trackspace
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trackspace` DEFAULT CHARACTER SET utf8 ;
USE `trackspace` ;

-- -----------------------------------------------------
-- Table `trackspace`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`user` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `type` VARCHAR(30) NOT NULL,
  `themeId` INT NOT NULL DEFAULT 0,
  `fontId` INT NOT NULL DEFAULT 0,
  `languageId` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `KorisnickoIme_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`club_admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`club_admin` (
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idUser`),
  CONSTRAINT `fk_ADMINISTRATOR_KLUBA_KORISNIK`
    FOREIGN KEY (`idUser`)
    REFERENCES `trackspace`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`competition_organizer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`competition_organizer` (
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idUser`),
  CONSTRAINT `fk_ODGANIZATOR_TAKMICENJA_KORISNIK1`
    FOREIGN KEY (`idUser`)
    REFERENCES `trackspace`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`club`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`club` (
  `idClub` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `competitorNumber` SMALLINT NOT NULL,
  `clubCode` CHAR(3) NOT NULL,
  `contact` VARCHAR(30) NULL,
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idClub`),
  UNIQUE INDEX `KodKluba_UNIQUE` (`clubCode` ASC) VISIBLE,
  INDEX `fk_KLUB_ADMINISTRATOR_KLUBA1_idx` (`idUser` ASC) VISIBLE,
  CONSTRAINT `fk_KLUB_ADMINISTRATOR_KLUBA1`
    FOREIGN KEY (`idUser`)
    REFERENCES `trackspace`.`club_admin` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`category` (
  `idCategory` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(10) NULL,
  PRIMARY KEY (`idCategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`location` (
  `postNumber` INT NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`postNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`competition`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`competition` (
  `idCompetition` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `idUser` INT NOT NULL,
  `postNumber` INT NOT NULL,
  `description` VARCHAR(400) NULL,
  `start` DATETIME NOT NULL,
  INDEX `fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1_idx` (`idUser` ASC) VISIBLE,
  PRIMARY KEY (`idCompetition`),
  INDEX `fk_TAKMICENJE_LOKACIJA1_idx` (`postNumber` ASC) VISIBLE,
  CONSTRAINT `fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1`
    FOREIGN KEY (`idUser`)
    REFERENCES `trackspace`.`competition_organizer` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TAKMICENJE_LOKACIJA1`
    FOREIGN KEY (`postNumber`)
    REFERENCES `trackspace`.`location` (`postNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`event` (
  `idEvent` INT NOT NULL AUTO_INCREMENT,
  `idCompetition` INT NOT NULL,
  `start` DATETIME NOT NULL,
  `idCategory` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idEvent`),
  UNIQUE INDEX `idDiscipline_UNIQUE` (`idEvent` ASC) VISIBLE,
  INDEX `fk_DISCIPLINA_TAKMICENJE1_idx` (`idCompetition` ASC) VISIBLE,
  INDEX `fk_event_category1_idx` (`idCategory` ASC) VISIBLE,
  CONSTRAINT `fk_DISCIPLINA_TAKMICENJE1`
    FOREIGN KEY (`idCompetition`)
    REFERENCES `trackspace`.`competition` (`idCompetition`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_category1`
    FOREIGN KEY (`idCategory`)
    REFERENCES `trackspace`.`category` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`running_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`running_event` (
  `idEvent` INT NOT NULL,
  `groupNumber` INT NOT NULL,
  PRIMARY KEY (`idEvent`),
  CONSTRAINT `fk_TRKACKA_DISCIPLINA_DISCIPLINA1`
    FOREIGN KEY (`idEvent`)
    REFERENCES `trackspace`.`event` (`idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`group` (
  `idGroup` INT NOT NULL AUTO_INCREMENT,
  `number` INT NOT NULL,
  `idEvent` INT NOT NULL,
  PRIMARY KEY (`idGroup`),
  INDEX `fk_GRUPA_TRKACKA_DISCIPLINA1_idx` (`idEvent` ASC) VISIBLE,
  CONSTRAINT `fk_GRUPA_TRKACKA_DISCIPLINA1`
    FOREIGN KEY (`idEvent`)
    REFERENCES `trackspace`.`running_event` (`idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`competitor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`competitor` (
  `idCompetitor` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `idClub` INT NOT NULL,
  `dob` DATE NOT NULL,
  `Pol` CHAR(1) NOT NULL,
  `idCategory` INT NOT NULL,
  `idGroup` INT NULL,
  PRIMARY KEY (`idCompetitor`),
  INDEX `fk_TAKMICAR_KLUB1_idx` (`idClub` ASC) VISIBLE,
  INDEX `fk_competitor_category1_idx` (`idCategory` ASC) VISIBLE,
  INDEX `fk_competitor_group1_idx` (`idGroup` ASC) VISIBLE,
  CONSTRAINT `fk_TAKMICAR_KLUB1`
    FOREIGN KEY (`idClub`)
    REFERENCES `trackspace`.`club` (`idClub`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competitor_category1`
    FOREIGN KEY (`idCategory`)
    REFERENCES `trackspace`.`category` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competitor_group1`
    FOREIGN KEY (`idGroup`)
    REFERENCES `trackspace`.`group` (`idGroup`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`jumping_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`jumping_event` (
  `idEvent` INT NOT NULL,
  PRIMARY KEY (`idEvent`),
  CONSTRAINT `fk_SKAKACKA_DISCIPLINA_DISCIPLINA1`
    FOREIGN KEY (`idEvent`)
    REFERENCES `trackspace`.`event` (`idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`throwing_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`throwing_event` (
  `idEvent` INT NOT NULL,
  PRIMARY KEY (`idEvent`),
  CONSTRAINT `fk_BACACKA_DISCIPLINA_DISCIPLINA1`
    FOREIGN KEY (`idEvent`)
    REFERENCES `trackspace`.`event` (`idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`competitor_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`competitor_event` (
  `idCompetitor` INT NOT NULL,
  `idEvent` INT NOT NULL,
  `result` VARCHAR(20) NULL,
  PRIMARY KEY (`idCompetitor`, `idEvent`),
  INDEX `fk_TAKMICAR_DISCIPLINA_DISCIPLINA1_idx` (`idEvent` ASC) INVISIBLE,
  CONSTRAINT `fk_TAKMICAR_DISCIPLINA_TAKMICAR1`
    FOREIGN KEY (`idCompetitor`)
    REFERENCES `trackspace`.`competitor` (`idCompetitor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TAKMICAR_DISCIPLINA_DISCIPLINA1`
    FOREIGN KEY (`idEvent`)
    REFERENCES `trackspace`.`event` (`idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trackspace`.`competitor_entry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trackspace`.`competitor_entry` (
  `entryNumber` INT NOT NULL AUTO_INCREMENT,
  `idUser` INT NOT NULL,
  `idCompetition` INT NOT NULL,
  `idCompetitor` INT NULL,
  `date` DATETIME NOT NULL,
  `idEvent` INT NULL,
  UNIQUE INDEX `BrojPrijave_UNIQUE` (`entryNumber` ASC) VISIBLE,
  PRIMARY KEY (`entryNumber`),
  INDEX `fk_PRIJAVA_NA_TAKMICENJE_TAKMICAR_DISCIPLINA1_idx` (`idCompetitor` ASC, `idEvent` ASC) VISIBLE,
  INDEX `fk_PRIJAVA_TAKMICARA_TAKMICENJE1_idx` (`idCompetition` ASC) VISIBLE,
  INDEX `fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1_idx` (`idUser` ASC) VISIBLE,
  CONSTRAINT `fk_PRIJAVA_NA_TAKMICENJE_TAKMICAR_DISCIPLINA1`
    FOREIGN KEY (`idCompetitor` , `idEvent`)
    REFERENCES `trackspace`.`competitor_event` (`idCompetitor` , `idEvent`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRIJAVA_TAKMICARA_TAKMICENJE1`
    FOREIGN KEY (`idCompetition`)
    REFERENCES `trackspace`.`competition` (`idCompetition`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1`
    FOREIGN KEY (`idUser`)
    REFERENCES `trackspace`.`club_admin` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
