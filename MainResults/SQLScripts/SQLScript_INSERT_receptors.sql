-- -----------------------------------------------------
-- INSERTS Table `projetobioinf`.`human_innate_receptors`
-- -----------------------------------------------------
INSERT INTO human_innate_receptors
(receptor_id, receptor_family, receptor_name, receptor_gene, cell_location, immune_cell_location, organism_recognized, agent_recognized, virus_recognized)
VALUES 
    ('Q15399','Toll-like Receptor','Toll-like receptor 1','TLR1','Cell membrane, phagossome membrane, membrane raft, golgi apparatus','At mRNA exphuman_innate_receptorsression level: neutrophils, macrophages','Bacteria and virus','Diacylated and triacylated lipopeptides, bacterial lipoproteins, viral proteins','Hepatitis C virus, human cytomegalovirus, HIV‐1, SARS-CoV-2, Chikungunya virus'),
	('O60603','Toll-like Receptor','Toll-like receptor 2','TLR2','Plasma membrane, phagosome membrane, membrane raft','At mRNA expression level: neutrophils, macrophages','Bacteria and virus','Bacterial lipoproteins or lipoproteins and other microbial cell wall components (bacterial peptidoglycan), virus spike proteins','SARS-CoV-2, human cytomegalovirus, HIV‐1, foot-and-mouth disease virus, HBV, Chikungunya virus, hepatitis C virus'),
	('O15455','Toll-like Receptor','Toll-like receptor 3','TLR3','Endoplasmatic reticulum membrane, endosome membrane, early endosome','At mRNA expression level: Memory CD8 T-cell, gdT-cell','Virus','Viral dsRNA',NULL),
	('O00206','Toll-like Receptor','Toll-like receptor 4','TLR4','Cell membrane, early endosome','At mRNA expression level: Monocytes, macrophages, dendritic cells and several types of T-cells','Bacteria and virus','Bacterial lipopolysaccharide (LPS)','Human cytomegalovirus, SARS-CoV-2, HIV-1'),
	('O60602','Toll-like Receptor','Toll-like receptor 5','TLR5','Cell membrane, golgi apparatus, nucleoplasm, cytosol ','At mRNA expression level: classical monocyte, intermediate monocyte, neutrophil, myeloid DC, non-classical monocyte','Bacteria and virus','Small molecular motifs named pathogen-associated molecular pattern (PAMPs) expressed by pathogens and microbe-associated molecular patterns (MAMPs) usually expressed by resident microbiota','HIV-1'),
	('Q9Y2C9','Toll-like Receptor','Toll-like receptor 6','TLR6','Cell membrane, phagosome membrane, golgi apparatus','At mRNA expression level: neutrophils','Bacteria and virus','Diacylated lipopeptides','SARS-CoV-2, HIV-1'),
	('Q9NYK1','Toll-like Receptor','Toll-like receptor 7','TLR7','Endoplasmatic reticulum membrane, endosome, lysosome, phagosome','At mRNA expression level: plasmacytoid pre-dendritic cells','Virus','Uridine-containing single strand RNAs (ssRNAs) of viral origin or guanosine analogs','Rabies virus, HIV-1'),
	('Q9NR97','Toll-like Receptor','Toll-like receptor 8','TLR8','Endosome membrane','At mRNA expression level: neutrophils, classical monocytes, non-classical monocytes, intermediate monocytes, myeloid DCs','Virus','RNA degradation products specific to microorganisms that are initially processed by RNASET2, GU-rich single-stranded RNA (GU-rich RNA)','SARS-CoV-2, SARS-CoV-1, HIV-1'),
	('Q9NR96','Toll-like Receptor','Toll-like receptor 9','TLR9','Endoplasmatic reticulum membrane, endosome, lysosome, phagosome','At mRNA expression level: plasmacytoid pre-dendritic cells','Bacteria and virus','Unmethylated cytidine-phosphate-guanosine (CpG) dinucleotides','HIV-1'),
	('Q9BXR5','Toll-like Receptor','Toll-like receptor 10','TLR10','Membrane','At mRNA expression level: memory B-cell, naive B-cell','Bacteria ',NULL,NULL),
	('P33076','Nod-like receptor - NLRA','MHC class II transactivator','CIITA','Nucleous, PML body','At mRNA expression level: naive B-cell, plasmacytoid DC, memory B-cell, myeloid DC, classical monocyte, non-classical monocyte, intermediate monocyte, eosinophil','Virus',NULL,'Ebola virus, coronaviruses (SARS-CoV-2), HIV-1'),
	('Q13075','Nod-like receptor - NLRB','Baculoviral IAP repeat-containing protein 1','NAIP','Basolateral plasma membrane, cytoplasm, inflammasome complex','At mRNA expression level: classical monocyte, myeloid DC','Bacteria','Needle protein CprI',NULL),
	('Q9NPP4','Nod-like receptor - NLRC','NLR family CARD domain-containing protein 4','NLRC4','Cytoplasm, cytosol, inflammasome','At mRNA expression level: intermediate monocyte, classical monocyte, non-classical monocyte, myeloid DC, neutrophil','Bacteria','Specific proteins from pathogenic bacteria and fungi',NULL),
	('Q9Y239','Nod-like receptor - NLRC','Nucleotide-binding oligomerization domain-containing protein 1','NOD1','Cytoplasm, cell membrane, apical cell membrane, basolateral cell membrane, mitochondria','At mRNA expression level: low immune cell specificity (detected in all)','Bacteria and virus','Bacterial peptidoglycan fragments, dsRNA',NULL),
	('Q9HC29','Nod-like receptor - NLRC','Nucleotide-binding oligomerization domain-containing protein 2','NOD2','Cell membrane, cytoplasm, mitochondrion, basolateral cell membrane, golgi apparatus, cytosol','At mRNA expression level: classical monocyte, myeloid DC, intermediate monocyte, neutrophil, non-classical monocyte, eosinophil','Bacteria and virus','Bacterial peptidoglycan fragments, ssRNA','HIV-1'),
	('Q7RTR2','Nod-like receptor - NLRC','NLR family CARD domain-containing protein 3','NLRC3','Cytoplasm, cytosol','At mRNA expression level: low immune cell specificity (detected in many)','Virus','Intracellular poly(dA:dT), viral DNA','Herpes simplex virus 1'),
	('Q86WI3','Nod-like receptor - NLRC','Protein NLRC5','NLRC5','Cytoplasm, cytosol','At mRNA expression level: low immune cell specificity (detected in all)','Virus',NULL,NULL),
	('Q86UT6','Nod-like receptor - NLRC','NLR family member X1','NLRX1','Mitochondrion outer membrane, plasma membrane, cytosol','At mRNA expression level: eosinhophils','Virus',NULL,'SARS-CoV-2, rabies virus, influenza A virus, human respiratory syncytial virus A '),
	('Q9C000','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 1','NLRP1','Cytoplasm, cytosol, nucleus','At protein level: neutrophils, monocytes/macrophages, dendritic cells (mostly Langerhans cells), B- and T-lymphocytes | At mRNA expression level: low immune cell specificity (detected in many)','Bacteria and virus','Specific pathogens and other damage-associated signals (cleavage by some human enteroviruses and rhinoviruses, dsRNA, dsDNA UV-B irradiation, Val-boroPro inhibitor, bacterial peptidoglycan muramyl dipeptide (MDP)','Human rhinoviruses 14 and 16 (HRV-14 and HRV-16), Semliki forest virus, vaccinia virus, human herpes virus 8 (HHV-8), HIV-1'),
	('Q9NX02','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 2','NLRP2','Cytoplasm, golgi apparatus, vesicles, cytosol','At mRNA expression level: low immune cell specificity (detected in many)','Bacteria and virus','Bacterial lipopolysaccharides (LPS)','Influenza A virus, rabies virus'),
	('Q96P20','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 3','NLRP3','Cytoplasm, cytosol, inflammasome, cytoskeleton, microtubule organizing center, golgi apparatus membrane, endoplasmatic reticulum, mitochondrion, nucleus, secreted','At protein level: dendritic cells,  B- and T-lymphocytes | At mRNA expression level: basophils','Bacteria and virus','Extracellular ATP, nigericin, reactive oxygen species, crystals of monosodium urate or cholesterol, amyloid-beta fibers, environmental or industrial particles and nanoparticles, such as asbestos, silica, aluminum salts, cytosolic dsRNA','SARS-CoV-2, HIV-1'),
	('Q96MN2','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 4','NLRP4','Cytoplasm, cytosol, mitochondria','At mRNA expression level: not detected in immune cells',NULL,'Cytosolic pathogen-associated molecular patterns (PAMPs)',NULL),
	('P59047','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 5','NLRP5','Cytoplasmic vesicle, secretory vesicle, cortical granule, mitochondrion, nucleus, nucleolus, cytoplasm, golgi apparatus','At mRNA expression level: not detected in immune cells','Virus',NULL,'Rabies virus'),
	('P59044','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 6','NLRP6','Cytoplasm, cytosol, inflammasome, cell membrane, nucleus membrane','At mRNA expression level: neutrophils, non-classical monocytes','Bacteria and virus','Lipoteichoic acid (LTA), dsRNA, LPS',NULL),
	('Q8WX94','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 7','NLRP7','Cytoplasm','At mRNA expression level: plasmacytoid dendritic cells','Bacteria ','LPS',NULL),
	('Q86W28','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 8','NLRP8','Cytoplasm','At mRNA expression level: not detected in immune cells',NULL,NULL,NULL),
	('Q7RTR0','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 9','NLRP9','Cytoplasm, inflammasome','At mRNA expression level: not detected in immune cells','Virus','dsRNA','Rotavirus, rabies virus'),
	('Q86W26','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 10','NLRP10','Cytoplasm, cell membrane, nucleoplas, cytosol','At mRNA expression level: not detected in immune cells','Bacteria and virus',NULL,'Rabies virus'),
	('P59045','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 11','NLRP11','Cytoplasm, cytosol','At mRNA expression level: not detected in immune cells',NULL,NULL,NULL),
	('P59046','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 12','NLRP12','Cytoplasm','At mRNA expression level: basophils, neutrophils, eosinophils, classical monocytes','Virus',NULL,'SARS-CoV-2'),
	('Q86W25','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 13','NLRP13','Cytoplasm','At mRNA expression level: not detected in immune cells',NULL,NULL,NULL),
	('Q86W24','Nod-like receptor - NLRP','NACHT, LRR and PYD domains-containing protein 14','NLRP14','Cytoplasm, cytosol','At mRNA expression level: not detected in immune cells','Virus',NULL,'Rabies virus'),
	('P59665','Defensins - α-defensins','Neutrophil defensin 1','DEFA1; DEFA1B','Secreted','At mRNA expression level: not detected in immune cells','Bacteria and virus','Precursor of cell wall synthesis lipid II','Adenovirus, HIV-1, herpes virus 1 (HHV1), SARS-CoV-2, HIV-1, hendra virus'),
	('P59666','Defensins - α-defensins','Neutrophil defensin 3','DEFA3','Secreted','At mRNA expression level: neutrophils','Bacteria and virus',NULL,'Herpes simplex virus, HIV-1, hendra virus'),
	('P12838','Defensins - α-defensins','Defensin alpha 4','DEFA4','Secreted, cytoplasmic vesicle, secretory vesicle','At protein level: neutrophils | At mRNA expression level: neutrophils','Bacteria and virus','Pathogenic surface proteins and toxins','HIV-1, hendra virus'),
	('Q01523','Defensins - α-defensins','Defensin alpha 5','DEFA5','Secreted, cytoplasmic vesicle, secretory vesicle','At mRNA expression level: not detected in immune cells','Bacteria and virus','Bacterial membranes, bacterial surface proteins','SARS-CoV-2, HIV-1'),
	('Q01524','Defensins - α-defensins','Defensin-6','DEFA6','Secreted, cytoplasmic vesicle, secretory vesicle','At mRNA expression level: not detected in immune cells','Bacteria and virus','Bacterial surface proteins','HIV-1'),
	('P60022','Defensins - β-defensins','Beta-defensin 1','DEFB1','Secreted','At mRNA expression level: not detected in immune cells','Bacteria',NULL,NULL),
	('O15263','Defensins - β-defensins','Defensin beta 4A','DEFB4A; DEFB4B','Secreted','At mRNA expression level: not detected in immune cells','Bacteria and virus','Bacterial lipopolysaccharides (LPS)','HIV-1'),
	('P81534','Defensins - β-defensins','Beta-defensin 103','DEFB103A; DEFB103B','Secreted','At mRNA expression level: not detected in immune cells','Bacteria and virus',NULL,'HIV-1'),
	('P22897','C-type lectin receptor (CLR) - Group I CLRs (mannose receptor family)','Macrophage mannose receptor 1','MRC1','Endosome membrane, cell membrane','At mRNA expression level: myeloid DCs','Bacteria and virus','Sulfated and non-sulfated polysaccharide chains','Dengue virus, hepatitis B virus, SARS-CoV-2, HIV-1'),
	('O60449','C-type lectin receptor (CLR) - Group I CLRs (mannose receptor family)','Lymphocyte antigen 75','LY75','Membrane','At mRNA expression level: low immune cell specificity (detected in all)','Virus',NULL,'HIV-1'),
	('Q6EIG7','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; DCIR subfamily)','C-type lectin domain family 6 member A','CLEC6A','Cell membrane','At mRNA expression level: classical monocytes, myeloid DCs',NULL,'Alpha-mannans (Candida albicans), soluble elements from the eggs of Shistosoma mansoni',NULL),
	('Q8WTT0','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; DCIR subfamily)','C-type lectin domain family 4 member C','CLEC4C','Cell membrane','At mRNA expression level: plasmacytoid DCs','Virus','Non-sialylated galactose-terminated biantennary glycans containing the trisaccharide epitope Gal(beta1-3/4)GlcNAc(beta1-2)Man','HIV-1'),
	('Q9ULY5','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; DCIR subfamily)','C-type lectin domain family 4 member E','CLEC4E','Cell membrane, phagocytic cup','At mRNA expression level: neutrophils, classical monocytes','Bacteria','Damage-associated molecular patterns (DAMPs) of abnormal self, pathogen-associated molecular patterns (PAMPs) of bacteria and fungi (mycobacterial trehalose 6,6''-dimycolate (TDM))',NULL),
	('Q9UMR7','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; DCIR subfamily)','C-type lectin domain family 4 member A','CLEC4A','Cell membrane','At protein level: dendritic cells, myeloid cells, monocytes, macrophages, B-cells, epidermal Langerhans cells | At mRNA expression level: classical monocytes, myeloid DCs, neutrophils, basophils, intermediate monocytes, non-classical monocytes','Virus','Carbohydrates mannose and fucose, N-acetylglucosamine (GlcNAc)','HIV-1 (promotes virus entry)'),
	('Q9BXN2','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; dectin 1 subfamily)','C-type lectin domain family 7 member A','CLEC7A','Cell membrane','At mRNA expression level: neutrophils','Bacteria and virus','Cell wall components (beta-1,3-linked and beta-1,6-linked glucans)','Epstein-Barr virus'),
	('Q5QGZ9','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; dectin 1 subfamily)','C-type lectin domain family 12 member A','CLEC12A','Cell membrane','At mRNA expression level: eosinhphils',NULL,NULL,NULL),
	('Q9P126','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; dectin 1 subfamily)','C-type lectin domain family 1 member B','CLEC1B','Membrane','At mRNA expression level: basophils','Virus','Platelet-aggregating snake venom protein rhodocytin, attachment factor (virus)','Human immunodeficiency virus type 1 (HIV-1)'),
	('Q2HXU8','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family; dectin 1 subfamily)','C-type lectin domain family 12 member B','CLEC12B','Cell membrane','At mRNA expression level: not detected in immune cells',NULL,NULL,NULL),
	('Q9NNX6','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family)','CD209 antigen','CD209','Cell membrane','At mRNA expression level: intermediate monocyte, classical monocyte, myeloid DC','Bacteria and virus','Mannose-like carbohydrates, attachment factor (for virus)','HIV-1 and HIV-2, ebolavirus, cytomegalovirus, HCV, dengue virus, measles virus, herpes simplex virus 1, influenzavirus A, SARS-CoV, japanese encephalitis virus, lassa virus, marburg virusn, respiratory syncytial virus, rift valley fever virus, uukuniemi virus, west-nile virus, SARS-CoV-2'),
	('Q9UJ71','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family)','C-type lectin domain family 4 member K','CD207','Membrane, cytosol','At mRNA expression level: myeloid DCs','Bacteria and virus','Mannose-binding specificity','HIV-1, SARS-CoV-2'),
	('Q8IUN9','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family)','C-type lectin domain family 10 member A','CLEC10A','Membrane','At mRNA expression level: myeloid DCs','Virus','Terminal galactose and N-acetylgalactosamine units','HIV-1, SARS-CoV-2'),
	('Q9NY25','C-type lectin receptor (CLR) - Group II CLRs (asialoglycoprotein receptor family)','C-type lectin domain family 5 member A','CLEC5A','Cell membrane, cytosol','At mRNA expression level: monocytes ','Virus','Viral proteins','Dengue virus serotypes 1-4'),
	('O95786','RIG-like receptor (RLR)','Antiviral innate immune response receptor RIG-I','RIGI','Cytoplasm, cytoskeleton, ruffle membrane, cytosol','At mRNA expression level: neutrophils','Virus','Cytoplasmic viral nucleic acids (5''-triphosphorylated ssRNAs and dsRNAs but also short dsRNAs)','Paramyxoviridae (Human respiratory syncytial virus and measles virus (MeV)), Rhabdoviridae (vesicular stomatitis virus (VSV)), Orthomyxoviridae (influenza A and B virus), Flaviviridae (Japanese encephalitis virus (JEV), hepatitis C virus (HCV), dengue virus (DENV) and west Nile virus (WNV)), rotaviruses (Rotavirus A), reoviruses, SARS-CoV-2, SARS-CoV, Epstein-Barr virus (EBV), Guanarito virus, Machupo virus, Junin arenavirus, Sabia virus, herpes simplex virus 1, thrombocytopenia virus (SFTSV), junin mammarenavirus, toscana virus, sabia mammarenavirus, human metapneumovirus, porcine enteric alphacoronavirus, HIV-1'),
	('Q9BYX4','RIG-like receptor (RLR)','Interferon-induced helicase C domain-containing protein 1','IFIH1','Cytoplasm, nucleous, mitochondrion','At mRNA expression level: low immune cell specificity (detected in all)','Virus','Viral nucleic acids (mRNA lacking 2''-O-methylation at their 5'' cap and long-dsRNA)','Picornaviridae family members (encephalomyocarditis virus (EMCV), mengo encephalomyocarditis virus (ENMG) and rhinovirus), coronavirus SARS-CoV-2, dengue virus (DENV), west Nile virus (WNV), reovirus, vaccinia virus, paramyxoviruses, herpes simplex virus 1, coxsackievirus A16, MERS-CoV, human-parainfluenza-2 virus, murine coronavirus, human respiratory syncytial virus A, measles virus, nipah virus, hendra virus, newcastle disease virus, sendai virus, sendai virus 5, human coronavirus NL63 (HCoV-NL63), mumpus virus, HIV-1'),
	('Q96C10','RIG-like receptor (RLR)','ATP-dependent RNA helicase DHX58','DHX58','Cytoplasm','At mRNA expression level: low immune cell specificity (detected in all)','Bacteria and virus','Viral RNA and DNA','Poxviruses, coronavirus SARS-CoV-2, paramyxoviruses (human parainfluenza 2 virus, human parainfluenza 5 virus, measles virus, mumps virus, hendra virus and nipah virus)');
