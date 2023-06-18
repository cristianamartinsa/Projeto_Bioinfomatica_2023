-- -----------------------------------------------------
-- JOIN
-- -----------------------------------------------------
SELECT pp.phage_protein_name, pp.phage_name, hir.receptor_name, hir.receptor_gene, pp.phage_protein_id, hir.receptor_id
FROM phage_proteins pp
JOIN interactions i ON pp.phage_protein_id = i.phage_proteins_phage_protein_id
JOIN human_innate_receptors hir ON hir.receptor_id = i.human_innate_receptors_receptor_id;


