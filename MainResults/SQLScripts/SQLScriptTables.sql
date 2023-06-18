-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Table `mydb`.`human_innate_receptors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetobioinf`.`human_innate_receptors` (
  `receptor_id` VARCHAR(50) NOT NULL,
  `receptor_family` VARCHAR(500) NULL,
  `receptor_name` VARCHAR(500) NULL,
  `receptor_gene` VARCHAR(500) NULL,
  `cell_location` VARCHAR(500) NULL,
  `immune_cell_location` VARCHAR(500) NULL,
  `organism_recognized` VARCHAR(500) NULL,
  `agent_recognized` VARCHAR(500) NULL,
  PRIMARY KEY (`receptor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`virus_proteins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetobioinf`.`virus_proteins` (
  `virus_protein_id` VARCHAR(50) NOT NULL,
  `virus_protein_name` VARCHAR(500) NULL,
  `virus_protein_gene` VARCHAR(500) NULL,
  `virus_name` VARCHAR(500) NULL,
  `virus_other_ids` VARCHAR(50) NULL,
  PRIMARY KEY (`virus_protein_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`phage_proteins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetobioinf`.`phage_proteins` (
  `phage_protein_id` VARCHAR(20) NOT NULL,
  `phage_protein_name` VARCHAR(500) NULL,
  `phage_protein_gene` VARCHAR(500) NULL,
  `phage_name` VARCHAR(500) NULL,
  `infected_bacteria` VARCHAR(500) NULL,
  `phage_other_ids` VARCHAR(500) NULL,
  PRIMARY KEY (`phage_protein_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`experiments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetobioinf`.`experiments` (
  `experiment_id` INT NOT NULL,
  `description` VARCHAR(500) NULL,
  PRIMARY KEY (`experiment_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`interactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetobioinf`.`interactions` (
  `interaction_id` INT NOT NULL,
  `human_innate_receptors_receptor_id` VARCHAR(50) NOT NULL,
  `virus_proteins_virus_protein_id` VARCHAR(50) NOT NULL,
  `phage_proteins_phage_protein_id` VARCHAR(20) NOT NULL,
  `experiments_experiment_id` INT NULL,
  PRIMARY KEY (`interaction_id`),
  INDEX `fk_interactions_human_innate_receptors1_idx` (`human_innate_receptors_receptor_id` ASC) VISIBLE,
  INDEX `fk_interactions_virus_proteins1_idx` (`virus_proteins_virus_protein_id` ASC) VISIBLE,
  INDEX `fk_interactions_phage_proteins1_idx` (`phage_proteins_phage_protein_id` ASC) VISIBLE,
  INDEX `fk_interactions_experiments1_idx` (`experiments_experiment_id` ASC) VISIBLE,
  CONSTRAINT `fk_interactions_human_innate_receptors1`
    FOREIGN KEY (`human_innate_receptors_receptor_id`)
    REFERENCES `projetobioinf`.`human_innate_receptors` (`receptor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interactions_virus_proteins1`
    FOREIGN KEY (`virus_proteins_virus_protein_id`)
    REFERENCES `projetobioinf`.`virus_proteins` (`virus_protein_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interactions_phage_proteins1`
    FOREIGN KEY (`phage_proteins_phage_protein_id`)
    REFERENCES `projetobioinf`.`phage_proteins` (`phage_protein_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interactions_experiments1`
    FOREIGN KEY (`experiments_experiment_id`)
    REFERENCES `projetobioinf`.`experiments` (`experiment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
