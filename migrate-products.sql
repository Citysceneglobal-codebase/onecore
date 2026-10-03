-- Migrate offline products to the MySQL database

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Calmme', 'calmme', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Calcium citrate maleate 1250 mg + Vitamin D3 400 IU', '/assets/therapeutic-womens-health.jpg', 'published', 1, 'Calmme | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Folentis', 'folentis', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'L-methylfolate 5 mg + methylcobalamin 1500 mcg + pyridoxal-5-phosphate 0.5 mg tablets', '/assets/therapeutic-womens-health.jpg', 'published', 2, 'Folentis | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Folatis-D', 'folatis-d', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'L-methylfolate 800 mcg + methylcobalamin 1500 mcg + pyridoxal-5-phosphate 500 mcg + DHA 200 mg softgel capsules', '/assets/products/folatis-d.jpeg', 'published', 3, 'Folatis-D | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Dydronyx', 'dydronyx', 'An orally active selective progestogen used in several gynaecologic and obstetric settings.', 'An orally active selective progestogen used in several gynaecologic and obstetric settings.', 'Dydrogesterone 10 mg', '/assets/therapeutic-womens-health.jpg', 'published', 4, 'Dydronyx | Onecore Pharma', 'An orally active selective progestogen used in several gynaecologic and obstetric settings.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Ferolink', 'ferolink', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.', 'Ferrous ascorbate 100 mg + folic acid 1.5 mg + zinc 22.5 mg', '/assets/therapeutic-womens-health.jpg', 'published', 5, 'Ferolink | Onecore Pharma', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Ferolink-Plus', 'ferolink-plus', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'Methylcobalamin 500 mcg + ferrous bis-glycinate equivalent to elemental iron 60 mg + zinc bis-glycinate equivalent to elemental zinc 15 mg + folic acid 1 mg', '/assets/therapeutic-womens-health.jpg', 'published', 6, 'Ferolink-Plus | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Chromolyn', 'chromolyn', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Myo-inositol 1800 mg + magnesium sulphate 600 mg + ashwagandha root extract 525 mg + N-acetyl-L-cysteine 450 mg + inositol 45 mg + zinc 13.2 mg + chromium picolinate 400 mcg + Vitamin D2 600 IU', '/assets/therapeutic-womens-health.jpg', 'published', 7, 'Chromolyn | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Humiphin-5000', 'humiphin-5000', 'An injectable gonadotropin hormone that mimics luteinizing hormone activity.', 'An injectable gonadotropin hormone that mimics luteinizing hormone activity.', 'Highly purified human chorionic gonadotropin 5000 IU injection', '/assets/products/humiphin-5000.jpeg', 'published', 8, 'Humiphin-5000 | Onecore Pharma', 'An injectable gonadotropin hormone that mimics luteinizing hormone activity.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Throfree', 'throfree', 'A 5-HT3 receptor antagonist antiemetic.', 'A 5-HT3 receptor antagonist antiemetic.', 'Ondansetron mouth-dissolving 4 mg', '/assets/therapeutic-womens-health.jpg', 'published', 9, 'Throfree | Onecore Pharma', 'A 5-HT3 receptor antagonist antiemetic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Easefate', 'easefate', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.', 'Sucralfate 1000 mg + oxetacaine 20 mg', '/assets/therapeutic-womens-health.jpg', 'published', 10, 'Easefate | Onecore Pharma', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Pro-Ova', 'pro-ova', 'A progestogen formulation designed to supplement progesterone activity.', 'A progestogen formulation designed to supplement progesterone activity.', 'Natural micronized progesterone 200/300 mg SR', '/assets/therapeutic-womens-health.jpg', 'published', 11, 'Pro-Ova | Onecore Pharma', 'A progestogen formulation designed to supplement progesterone activity.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Myoriv', 'myoriv', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Myo-inositol 550 mg + D-chiro-inositol 13.8 mg + Vitamin D3 1000 IU + AHA 100 mg tablet', '/assets/therapeutic-womens-health.jpg', 'published', 12, 'Myoriv | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Clindaone-CT', 'clindaone-ct', 'A local anti-infective combination aimed at mixed bacterial, fungal and anaerobic vaginal infections.', 'A local anti-infective combination aimed at mixed bacterial, fungal and anaerobic vaginal infections.', 'Clindamycin 100 mg + clotrimazole 100 mg + tinidazole 100 mg', '/assets/products/clindaone-ct.jpeg', 'published', 13, 'Clindaone-CT | Onecore Pharma', 'A local anti-infective combination aimed at mixed bacterial, fungal and anaerobic vaginal infections.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Ferticore', 'ferticore', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'L-methylfolate 500 mcg + myo-inositol 2000 mg + Vitamin D3 1000 IU, 5 g sachet', '/assets/therapeutic-womens-health.jpg', 'published', 14, 'Ferticore | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Calmme-CZ', 'calmme-cz', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Calcium citrate 425 mg + calcitriol 0.25 mcg + magnesium + zinc softgel capsules', '/assets/therapeutic-womens-health.jpg', 'published', 15, 'Calmme-CZ | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Ecofem-BV', 'ecofem-bv', 'An oral probiotic/prebiotic blend selected around Lactobacillus species normally associated with a healthy vaginal microbiome.', 'An oral probiotic/prebiotic blend selected around Lactobacillus species normally associated with a healthy vaginal microbiome.', 'Lactobacillus crispatus + L. rhamnosus + L. jensenii + L. gasseri + fructo-oligosaccharides capsules', '/assets/therapeutic-womens-health.jpg', 'published', 16, 'Ecofem-BV | Onecore Pharma', 'An oral probiotic/prebiotic blend selected around Lactobacillus species normally associated with a healthy vaginal microbiome.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'OneQ10-LM', 'oneq10-lm', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Astaxanthin 8 mg + CoQ10 100 mg + manganese 0.5 mg + selenium 50 mcg + L-methylfolate 0.5 mg + levocarnitine 300 mg + lycopene 5000 mcg + Vitamin A 2500 IU + B6 50 mg + C 75 mg + D3 1000 IU + E 25 IU + zinc monomethionine 21 mg', '/assets/products/oneq10-lm.jpeg', 'published', 17, 'OneQ10-LM | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Cranly', 'cranly', 'A urinary-tract support combination aimed mainly at reducing bacterial adhesion and supporting the urogenital microbiome.', 'A urinary-tract support combination aimed mainly at reducing bacterial adhesion and supporting the urogenital microbiome.', 'Cranberry extract 300 mg + D-mannose 600 mg + hibiscus extract 100 mg + Lacticaseibacillus rhamnosus 0.5 billion + Lactobacillus reuteri 0.5 billion', '/assets/therapeutic-womens-health.jpg', 'published', 18, 'Cranly | Onecore Pharma', 'A urinary-tract support combination aimed mainly at reducing bacterial adhesion and supporting the urogenital microbiome.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Myoglow', 'myoglow', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.', 'Yellow pea powder 9.6 g + rice 3.225 g + myo-inositol 600 mg + L-carnitine 120 mg + alpha-lipoic acid 60 mg + omega-3 fatty acids 24 mg + vitamins', '/assets/therapeutic-womens-health.jpg', 'published', 19, 'Myoglow | Onecore Pharma', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (1, 'Traxpause MF', 'traxpause-mf', 'A combined antifibrinolytic plus NSAID formulation for heavy, painful menstrual bleeding.', 'A combined antifibrinolytic plus NSAID formulation for heavy, painful menstrual bleeding.', 'Tranexamic acid 500 mg + mefenamic acid 250 mg tablets', '/assets/products/traxpause-mf.jpeg', 'published', 20, 'Traxpause MF | Onecore Pharma', 'A combined antifibrinolytic plus NSAID formulation for heavy, painful menstrual bleeding.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Glypocal-LP', 'glypocal-lp', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Liposomal calcium 350 mg + Vitamin K2 125 mcg + Vitamin D2 10 mcg syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 21, 'Glypocal-LP | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Zincolys Syrup', 'zincolys-syrup', 'A paediatric micronutrient syrup focused on zinc-dependent growth, immune function and appetite/tissue repair, with lysine and vitamin B6 support.', 'A paediatric micronutrient syrup focused on zinc-dependent growth, immune function and appetite/tissue repair, with lysine and vitamin B6 support.', 'Zinc bisglycinate 50 mg + Lysine 200 mg + Vitamin B6 2 mg syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 22, 'Zincolys Syrup | Onecore Pharma', 'A paediatric micronutrient syrup focused on zinc-dependent growth, immune function and appetite/tissue repair, with lysine and vitamin B6 support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Flutiriv', 'flutiriv', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.', 'Fluticasone furoate 27.5 mcg nasal spray', '/assets/therapeutic-paediatrics.jpg', 'published', 23, 'Flutiriv | Onecore Pharma', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Oneriv D3', 'oneriv-d3', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Vitamin D3 400 IU drops', '/assets/therapeutic-paediatrics.jpg', 'published', 24, 'Oneriv D3 | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Glypocal Junior', 'glypocal-junior', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Tricalcium phosphate 260 mg + Vitamin D3 0.015 mg gummies', '/assets/therapeutic-paediatrics.jpg', 'published', 25, 'Glypocal Junior | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Dozokid', 'dozokid', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.', 'Melatonin 3 mg/5 mL syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 26, 'Dozokid | Onecore Pharma', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Appyone', 'appyone', 'A paediatric multinutrient/appetite-support gummy combining vitamins, trace minerals, amino acids and food-derived botanicals.', 'A paediatric multinutrient/appetite-support gummy combining vitamins, trace minerals, amino acids and food-derived botanicals.', 'Vitamin C 30 mg + B12 2.5 mcg + B6 0.7 mg + niacin 3 mg + thiamin 0.5 mg + zinc 2 mg + chicory root extract 5 mg + fenugreek seed extract 25 mg + watercress leaf extract 20 mg + spirulina dry seaweed 10 mg + honey 5 mg + L-lysine HCl 2 mg + L-carnitine tartrate 10 mg + L-histidine 5 mg + colostrum 20 mg gummies', '/assets/therapeutic-paediatrics.jpg', 'published', 27, 'Appyone | Onecore Pharma', 'A paediatric multinutrient/appetite-support gummy combining vitamins, trace minerals, amino acids and food-derived botanicals.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Doxicent DS', 'doxicent-ds', 'An oral third-generation cephalosporin antibiotic.', 'An oral third-generation cephalosporin antibiotic.', 'Cefpodoxime dry syrup 50 mg/5 mL', '/assets/therapeutic-paediatrics.jpg', 'published', 28, 'Doxicent DS | Onecore Pharma', 'An oral third-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Flutiriv-NS', 'flutiriv-ns', 'An isotonic saline nasal spray used to moisturise and mechanically clear nasal secretions.', 'An isotonic saline nasal spray used to moisturise and mechanically clear nasal secretions.', 'Sodium chloride 0.9% + benzalkonium chloride 0.2% nasal spray', '/assets/therapeutic-paediatrics.jpg', 'published', 29, 'Flutiriv-NS | Onecore Pharma', 'An isotonic saline nasal spray used to moisturise and mechanically clear nasal secretions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Vitatots', 'vitatots', 'A paediatric protein supplement intended to increase daily protein/energy intake when normal food intake is insufficient.', 'A paediatric protein supplement intended to increase daily protein/energy intake when normal food intake is insufficient.', 'Kids protein powder (vanilla & chocolate flavour)', '/assets/therapeutic-paediatrics.jpg', 'published', 30, 'Vitatots | Onecore Pharma', 'A paediatric protein supplement intended to increase daily protein/energy intake when normal food intake is insufficient.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'GG Shield Drop', 'gg-shield-drop', 'A probiotic oral drop containing Lactobacillus rhamnosus in an oil carrier, intended to support gut microbial balance.', 'A probiotic oral drop containing Lactobacillus rhamnosus in an oil carrier, intended to support gut microbial balance.', 'Lactobacillus rhamnosus + corn oil oral drops', '/assets/therapeutic-paediatrics.jpg', 'published', 31, 'GG Shield Drop | Onecore Pharma', 'A probiotic oral drop containing Lactobacillus rhamnosus in an oil carrier, intended to support gut microbial balance.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Appycore', 'appycore', 'A cyproheptadine-containing prescription syrup with tricholine citrate. Cyproheptadine is primarily an antihistamine; appetite stimulation is an off-label use in many settings.', 'A cyproheptadine-containing prescription syrup with tricholine citrate. Cyproheptadine is primarily an antihistamine; appetite stimulation is an off-label use in many settings.', 'Cyproheptadine 2 mg + tricholine citrate 275 mg syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 32, 'Appycore | Onecore Pharma', 'A cyproheptadine-containing prescription syrup with tricholine citrate. Cyproheptadine is primarily an antihistamine; appetite stimulation is an off-label use in many settings.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (2, 'Zincolys Plus', 'zincolys-plus', 'A paediatric multivitamin/mineral syrup with DHA, lysine and trace elements intended to cover common dietary micronutrient gaps.', 'A paediatric multivitamin/mineral syrup with DHA, lysine and trace elements intended to cover common dietary micronutrient gaps.', 'Vitamin A + B2 + B3 + B5 + B6 + DHA + lysine + copper + selenium + zinc sulphate syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 33, 'Zincolys Plus | Onecore Pharma', 'A paediatric multivitamin/mineral syrup with DHA, lysine and trace elements intended to cover common dietary micronutrient gaps.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Jorelax', 'jorelax', 'A joint-health combination containing symptomatic slow-acting osteoarthritis agents plus diacerein, which is a prescription anti-osteoarthritis drug in some markets.', 'A joint-health combination containing symptomatic slow-acting osteoarthritis agents plus diacerein, which is a prescription anti-osteoarthritis drug in some markets.', 'Glucosamine sulphate potassium chloride 750 mg + MSM 250 mg + diacerein 50 mg + chondroitin sulphate 100 mg + manganese sulphate 3 mg + sodium borate 0.5 mg + selenium 70 mcg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 34, 'Jorelax | Onecore Pharma', 'A joint-health combination containing symptomatic slow-acting osteoarthritis agents plus diacerein, which is a prescription anti-osteoarthritis drug in some markets.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'DuoDK', 'duodk', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Cissus quadrangularis extract 500 mg + collagen peptide 100 mg + L-arginine 200 mg + Vitamin C 50 mg + Vitamin K2-7 45 mcg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 35, 'DuoDK | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Nervia-NX', 'nervia-nx', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'Pregabalin 75 mg + nortriptyline 10 mg + methylcobalamin 1500 mcg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 36, 'Nervia-NX | Onecore Pharma', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Frecox-SP', 'frecox-sp', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.', 'Aceclofenac 100 mg + paracetamol 325 mg + serratiopeptidase 15 mg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 37, 'Frecox-SP | Onecore Pharma', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Curajoy', 'curajoy', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Curcuma longa (curcumin 95%) 200 mg + rosehip 200 mg + chondroitin sulphate sodium 200 mg + magnesium 45 mg + collagen type I 40 mg + Vitamin C 35 mg + sodium hyaluronate 30 mg + Vitamin D 400 IU capsules', '/assets/therapeutic-orthopaedics.jpg', 'published', 38, 'Curajoy | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Glyp cal LP', 'glyp-cal-lp', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.', 'Elemental calcium (tribasic phosphate calcium as liposomal calcium) 500 mg + Vitamin D2 600 IU tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 39, 'Glyp cal LP | Onecore Pharma', 'A mineral/vitamin formulation intended to support calcium balance, bone mineralization and skeletal health.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'OneFLEXO', 'oneflexo', 'A once-daily joint-support formulation combining Boswellia extract, undenatured type II collagen and a hyaluronic-acid/collagen matrix.', 'A once-daily joint-support formulation combining Boswellia extract, undenatured type II collagen and a hyaluronic-acid/collagen matrix.', 'Aflapin (Boswellia serrata extract) 100 mg + native undenatured collagen type II 40 mg + Mobilee 40 mg (sodium hyaluronate, polysaccharides and collagen) capsules', '/assets/products/oneflexo-packshot.svg', 'published', 40, 'OneFLEXO | Onecore Pharma', 'A once-daily joint-support formulation combining Boswellia extract, undenatured type II collagen and a hyaluronic-acid/collagen matrix.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Frecox', 'frecox', 'A combined NSAID plus analgesic for short-term pain and inflammation.', 'A combined NSAID plus analgesic for short-term pain and inflammation.', 'Aceclofenac 100 mg + paracetamol 325 mg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 41, 'Frecox | Onecore Pharma', 'A combined NSAID plus analgesic for short-term pain and inflammation.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Frecox-TH', 'frecox-th', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.', 'Aceclofenac 100 mg + paracetamol 325 mg + thiocolchicoside 4 mg tablets', '/assets/therapeutic-orthopaedics.jpg', 'published', 42, 'Frecox-TH | Onecore Pharma', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Trypcor', 'trypcor', 'An oral proteolytic-enzyme/flavonoid combination used as an anti-oedema adjunct in soft-tissue inflammation.', 'An oral proteolytic-enzyme/flavonoid combination used as an anti-oedema adjunct in soft-tissue inflammation.', 'Trypsin 48 mg + bromelain 90 mg + rutoside trihydrate 100 mg tablets', '/assets/products/trypcor.jpeg', 'published', 43, 'Trypcor | Onecore Pharma', 'An oral proteolytic-enzyme/flavonoid combination used as an anti-oedema adjunct in soft-tissue inflammation.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (3, 'Trypcor-BR', 'trypcor-br', 'A proteolytic-enzyme/rutoside combination plus diclofenac for short-term pain, inflammation and oedema.', 'A proteolytic-enzyme/rutoside combination plus diclofenac for short-term pain, inflammation and oedema.', 'Trypsin 48 mg + bromelain 90 mg + rutoside trihydrate 100 mg + diclofenac 50 mg tablets', '/assets/products/trypcor-br.jpeg', 'published', 44, 'Trypcor-BR | Onecore Pharma', 'A proteolytic-enzyme/rutoside combination plus diclofenac for short-term pain, inflammation and oedema.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Epinerve-Forte', 'epinerve-forte', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'Methylcobalamin 500 mcg + chromium 50 mcg + zinc 61.80 mg + folic acid 1.5 mg + niacinamide 50 mg + pyridoxine 3 mg tablet', '/assets/therapeutic-neurology.jpg', 'published', 45, 'Epinerve-Forte | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Nervia', 'nervia', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'Methylcobalamin 1500 mcg sublingual tablet / injection', '/assets/therapeutic-neurology.jpg', 'published', 46, 'Nervia | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Epi-Plus', 'epi-plus', 'A neuro-nutrient tablet combining high-dose methylcobalamin with alpha-lipoic acid, B-vitamin cofactors and vitamin D.', 'A neuro-nutrient tablet combining high-dose methylcobalamin with alpha-lipoic acid, B-vitamin cofactors and vitamin D.', 'Mecobalamin 1500 mcg + alpha-lipoic acid 100 mg + pyridoxine 3 mg + folic acid 1.5 mg + Vitamin D3 1000 IU tablet', '/assets/therapeutic-neurology.jpg', 'published', 47, 'Epi-Plus | Onecore Pharma', 'A neuro-nutrient tablet combining high-dose methylcobalamin with alpha-lipoic acid, B-vitamin cofactors and vitamin D.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Nervia-PG', 'nervia-pg', 'A neuropathic-pain/anticonvulsant medicine combined here with methylcobalamin support.', 'A neuropathic-pain/anticonvulsant medicine combined here with methylcobalamin support.', 'Methylcobalamin 1500 mcg + pregabalin 75 mg SR tablet', '/assets/therapeutic-neurology.jpg', 'published', 48, 'Nervia-PG | Onecore Pharma', 'A neuropathic-pain/anticonvulsant medicine combined here with methylcobalamin support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Nervia-NX', 'nervia-nx', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'Pregabalin 75 mg SR + nortriptyline 10 mg + methylcobalamin 1500 mcg tablet', '/assets/therapeutic-neurology.jpg', 'published', 49, 'Nervia-NX | Onecore Pharma', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Citimind', 'citimind', 'A choline donor/neuroactive compound used in some countries for neurologic recovery or cognitive indications.', 'A choline donor/neuroactive compound used in some countries for neurologic recovery or cognitive indications.', 'Citicoline 500 mg tablets/injection; 100 mg injection', '/assets/therapeutic-neurology.jpg', 'published', 50, 'Citimind | Onecore Pharma', 'A choline donor/neuroactive compound used in some countries for neurologic recovery or cognitive indications.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Epinerve-2500', 'epinerve-2500', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'Methylcobalamin 2500 mcg injection', '/assets/therapeutic-neurology.jpg', 'published', 51, 'Epinerve-2500 | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Epinerve-C', 'epinerve-c', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.', 'Folic acid 0.7 mg + methylcobalamin 1500 mcg + niacinamide 12 mg + Vitamin C 150 mg injection', '/assets/therapeutic-neurology.jpg', 'published', 52, 'Epinerve-C | Onecore Pharma', 'A vitamin B12-based formulation, sometimes combined with cofactors used in red-cell and nerve metabolism.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Citimind P4', 'citimind-p4', 'A neuroactive combination used in some markets for selected cognitive or post-stroke indications, although guideline support varies.', 'A neuroactive combination used in some markets for selected cognitive or post-stroke indications, although guideline support varies.', 'Citicoline sodium 500 mg + piracetam 400 mg tablets', '/assets/therapeutic-neurology.jpg', 'published', 53, 'Citimind P4 | Onecore Pharma', 'A neuroactive combination used in some markets for selected cognitive or post-stroke indications, although guideline support varies.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Pulsorex', 'pulsorex', 'A non-selective beta-adrenergic blocker.', 'A non-selective beta-adrenergic blocker.', 'Propranolol 40 mg SR tablets', '/assets/therapeutic-neurology.jpg', 'published', 54, 'Pulsorex | Onecore Pharma', 'A non-selective beta-adrenergic blocker.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Onepred', 'onepred', 'A potent systemic corticosteroid injection for severe inflammatory or immune-mediated conditions.', 'A potent systemic corticosteroid injection for severe inflammatory or immune-mediated conditions.', 'Methylprednisolone sodium succinate 125 mg & 1000 mg injection', '/assets/therapeutic-neurology.jpg', 'published', 55, 'Onepred | Onecore Pharma', 'A potent systemic corticosteroid injection for severe inflammatory or immune-mediated conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Nervia-G', 'nervia-g', 'A gabapentinoid medicine used mainly for neuropathic pain and some seizure disorders, combined with methylcobalamin.', 'A gabapentinoid medicine used mainly for neuropathic pain and some seizure disorders, combined with methylcobalamin.', 'Methylcobalamin 500 mcg + gabapentin 300 mg tablets', '/assets/therapeutic-neurology.jpg', 'published', 56, 'Nervia-G | Onecore Pharma', 'A gabapentinoid medicine used mainly for neuropathic pain and some seizure disorders, combined with methylcobalamin.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Nervia-Plus', 'nervia-plus', 'A nerve-support micronutrient capsule centred on methylcobalamin and alpha-lipoic acid.', 'A nerve-support micronutrient capsule centred on methylcobalamin and alpha-lipoic acid.', 'Mecobalamin 1500 mcg + alpha-lipoic acid + Vitamin B complex + folic acid 1.5 mg capsules', '/assets/therapeutic-neurology.jpg', 'published', 57, 'Nervia-Plus | Onecore Pharma', 'A nerve-support micronutrient capsule centred on methylcobalamin and alpha-lipoic acid.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Citalom-C', 'citalom-c', 'An SSRI antidepressant combined with a benzodiazepine, generally intended for selected anxiety/depressive presentations where short-term anxiolytic cover is needed.', 'An SSRI antidepressant combined with a benzodiazepine, generally intended for selected anxiety/depressive presentations where short-term anxiolytic cover is needed.', 'Escitalopram + clonazepam', '/assets/therapeutic-neurology.jpg', 'published', 58, 'Citalom-C | Onecore Pharma', 'An SSRI antidepressant combined with a benzodiazepine, generally intended for selected anxiety/depressive presentations where short-term anxiolytic cover is needed.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Zolpicore', 'zolpicore', 'A short-acting non-benzodiazepine hypnotic for insomnia.', 'A short-acting non-benzodiazepine hypnotic for insomnia.', 'Zolpidem', '/assets/therapeutic-neurology.jpg', 'published', 59, 'Zolpicore | Onecore Pharma', 'A short-acting non-benzodiazepine hypnotic for insomnia.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Onepam', 'onepam', 'A non-opioid neuroinflammation/nociceptive-support capsule based on micronized palmitoylethanolamide (PEA) with soy isoflavones.', 'A non-opioid neuroinflammation/nociceptive-support capsule based on micronized palmitoylethanolamide (PEA) with soy isoflavones.', 'Micronized palmitoylethanolamide 300 mg + daidzein 50 mg + genistein 4 mg capsules', '/assets/therapeutic-neurology.jpg', 'published', 60, 'Onepam | Onecore Pharma', 'A non-opioid neuroinflammation/nociceptive-support capsule based on micronized palmitoylethanolamide (PEA) with soy isoflavones.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (4, 'Neurorelax', 'neurorelax', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.', '26 billion CFU probiotic matrix + GABA 100 mg + valerian extract 50 mg + melatonin IR 0.75 mg + melatonin delayed release 0.75 mg', '/assets/therapeutic-neurology.jpg', 'published', 61, 'Neurorelax | Onecore Pharma', 'A sleep-timing hormone formulation intended to support sleep onset/circadian rhythm.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Moxyone-M', 'moxyone-m', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'Moxifloxacin 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 62, 'Moxyone-M | Onecore Pharma', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Moxyone', 'moxyone', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'Gatifloxacin 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 63, 'Moxyone | Onecore Pharma', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Moxyone-MK', 'moxyone-mk', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'Moxifloxacin 0.5% + ketorolac 0.4% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 64, 'Moxyone-MK | Onecore Pharma', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Moxyone-MP', 'moxyone-mp', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Moxifloxacin 0.5% + difluprednate 0.05% + boric acid 0.1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 65, 'Moxyone-MP | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Lotovo', 'lotovo', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Loteprednol etabonate 0.5% eye drops', '/assets/products/lotovo.jpg', 'published', 66, 'Lotovo | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Lotnova-T', 'lotnova-t', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Loteprednol etabonate + tobramycin 0.3% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 67, 'Lotnova-T | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Lotnova-M', 'lotnova-m', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Loteprednol etabonate 0.5% + moxifloxacin 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 68, 'Lotnova-M | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Tobraeye', 'tobraeye', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Tobramycin 0.3% + fluorometholone 0.1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 69, 'Tobraeye | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Angelcent-TM', 'angelcent-tm', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'Dorzolamide HCl 2% + timolol maleate 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 70, 'Angelcent-TM | Onecore Pharma', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Brincore TM', 'brincore-tm-brimonidine', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'Brimonidine tartrate 0.2% + timolol maleate 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 71, 'Brincore TM | Onecore Pharma', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Femacore', 'femacore', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'Nepafenac 0.1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 72, 'Femacore | Onecore Pharma', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Olgerix', 'olgerix', 'An anti-allergy eye drop with antihistamine and mast-cell-stabilising activity.', 'An anti-allergy eye drop with antihistamine and mast-cell-stabilising activity.', 'Olopatadine 0.1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 73, 'Olgerix | Onecore Pharma', 'An anti-allergy eye drop with antihistamine and mast-cell-stabilising activity.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Ecoliq', 'ecoliq', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'Polyethylene glycol 400 0.4% + propylene glycol 0.3% + hydroxypropyl methylcellulose 0.39% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 74, 'Ecoliq | Onecore Pharma', 'A lubricating/artificial-tear formulation for ocular-surface dryness.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Cortear', 'cortear', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'Sodium carboxymethylcellulose 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 75, 'Cortear | Onecore Pharma', 'A lubricating/artificial-tear formulation for ocular-surface dryness.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Cortear Plus', 'cortear-plus', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'Glycerine 1% + carboxymethylcellulose sodium 0.3% + NAC 1% + boric acid 0.3% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 76, 'Cortear Plus | Onecore Pharma', 'A lubricating/artificial-tear formulation for ocular-surface dryness.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Eyovex', 'eyovex', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'Sodium hyaluronate 0.10% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 77, 'Eyovex | Onecore Pharma', 'A lubricating/artificial-tear formulation for ocular-surface dryness.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Tearix', 'tearix', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'A lubricating/artificial-tear formulation for ocular-surface dryness.', 'Polyethylene glycol 400 0.4% + propylene glycol 0.3% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 78, 'Tearix | Onecore Pharma', 'A lubricating/artificial-tear formulation for ocular-surface dryness.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Eyfen', 'eyfen', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'Bromfenac eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 79, 'Eyfen | Onecore Pharma', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Ocuvion', 'ocuvion', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Astaxanthin 4 mg + zeaxanthin 4 mg + lutein 20 mg + Vitamin A 2500 IU + Vitamin C 240 mg + Vitamin E acetate 120 IU softgel', '/assets/therapeutic-ophthalmology.jpg', 'published', 80, 'Ocuvion | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Brincore', 'brincore', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'Brinzolamide 1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 81, 'Brincore | Onecore Pharma', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Gaticent', 'gaticent', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.', 'Gatifloxacin + ketorolac eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 82, 'Gaticent | Onecore Pharma', 'An ophthalmic antibacterial preparation, sometimes combined with an NSAID.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Brimovis', 'brimovis', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'Brimonidine tartrate 0.2% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 83, 'Brimovis | Onecore Pharma', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Flurbirix', 'flurbirix', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.', 'Flurbiprofen 0.03% + HPMC 0.25% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 84, 'Flurbirix | Onecore Pharma', 'An ophthalmic NSAID used to control ocular pain/inflammation, commonly around eye surgery.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Brincore-TM', 'brincore-tm', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.', 'Brinzolamide 1% + timolol 0.5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 85, 'Brincore-TM | Onecore Pharma', 'An intraocular-pressure-lowering medicine for glaucoma/ocular hypertension.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Moxyone-DM', 'moxyone-dm', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.', 'Moxifloxacin 0.5% + dexamethasone 0.1% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 86, 'Moxyone-DM | Onecore Pharma', 'An ophthalmic anti-inflammatory steroid, sometimes combined with an antibiotic for selected postoperative or inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Natmore', 'natmore', 'A topical polyene antifungal eye medicine.', 'A topical polyene antifungal eye medicine.', 'Natamycin 5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 87, 'Natmore | Onecore Pharma', 'A topical polyene antifungal eye medicine.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (5, 'Ikarix', 'ikarix', 'A diagnostic mydriatic combination that dilates the pupil.', 'A diagnostic mydriatic combination that dilates the pupil.', 'Tropicamide 0.8% + phenylephrine HCl 5% eye drops', '/assets/therapeutic-ophthalmology.jpg', 'published', 88, 'Ikarix | Onecore Pharma', 'A diagnostic mydriatic combination that dilates the pupil.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Itrafite', 'itrafite', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'Itraconazole 1% + ofloxacin 0.75% + ornidazole 2% + clobetasol 0.05% + methylparaben 0.20% + propylparaben 0.02% cream', '/assets/therapeutic-dermatology.jpg', 'published', 89, 'Itrafite | Onecore Pharma', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Lulifite', 'lulifite', 'A topical azole antifungal medicine.', 'A topical azole antifungal medicine.', 'Luliconazole 1% cream', '/assets/therapeutic-dermatology.jpg', 'published', 90, 'Lulifite | Onecore Pharma', 'A topical azole antifungal medicine.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Tracore (topical)', 'tracore-topical', 'A non-steroidal topical immunomodulator for inflammatory skin disease.', 'A non-steroidal topical immunomodulator for inflammatory skin disease.', 'Tacrolimus 0.1% ointment', '/assets/therapeutic-dermatology.jpg', 'published', 91, 'Tracore (topical) | Onecore Pharma', 'A non-steroidal topical immunomodulator for inflammatory skin disease.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Yuvizee', 'yuvizee', 'A topical sunscreen lotion designed to reduce ultraviolet A and B exposure to the skin.', 'A topical sunscreen lotion designed to reduce ultraviolet A and B exposure to the skin.', 'Sunscreen lotion', '/assets/therapeutic-dermatology.jpg', 'published', 92, 'Yuvizee | Onecore Pharma', 'A topical sunscreen lotion designed to reduce ultraviolet A and B exposure to the skin.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Ebacore', 'ebacore', 'A second-generation H1 antihistamine used for allergic symptoms.', 'A second-generation H1 antihistamine used for allergic symptoms.', 'Ebastine 20 mg tablet', '/assets/therapeutic-dermatology.jpg', 'published', 93, 'Ebacore | Onecore Pharma', 'A second-generation H1 antihistamine used for allergic symptoms.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Tracore (oral)', 'tracore-oral', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.', 'Biotin 40 mcg + N-acetyl-L-cysteine 50 mg + pantothenic acid 5 mg + selenium 40 mcg + iron 8 mg + copper 0.5 mg + zinc 17 mg + niacin 14 mg + 5-MTHF 0.3 mg tablet', '/assets/therapeutic-dermatology.jpg', 'published', 94, 'Tracore (oral) | Onecore Pharma', 'An iron replacement formulation, often combined with folate, B12 and zinc to support red-blood-cell production.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Acnozoe', 'acnozoe', 'A keratolytic and anti-inflammatory acne gel combining salicylic acid with nicotinamide.', 'A keratolytic and anti-inflammatory acne gel combining salicylic acid with nicotinamide.', 'Salicylic acid + nicotinamide face gel', '/assets/therapeutic-dermatology.jpg', 'published', 95, 'Acnozoe | Onecore Pharma', 'A keratolytic and anti-inflammatory acne gel combining salicylic acid with nicotinamide.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Dazzon', 'dazzon', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Intraoral spray of glutathione + Vitamin C', '/assets/therapeutic-dermatology.jpg', 'published', 96, 'Dazzon | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Coresoft', 'coresoft', 'A paraffin-based emollient cream for very dry, eczematous or barrier-impaired skin.', 'A paraffin-based emollient cream for very dry, eczematous or barrier-impaired skin.', 'White soft paraffin 13.2% + liquid paraffin 10.2% + methylparaben 0.15% + propylparaben 0.05% cream', '/assets/therapeutic-dermatology.jpg', 'published', 97, 'Coresoft | Onecore Pharma', 'A paraffin-based emollient cream for very dry, eczematous or barrier-impaired skin.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Velibact', 'velibact', 'A topical antibiotic active against many gram-positive skin pathogens.', 'A topical antibiotic active against many gram-positive skin pathogens.', 'Mupirocin 2% ointment', '/assets/therapeutic-dermatology.jpg', 'published', 98, 'Velibact | Onecore Pharma', 'A topical antibiotic active against many gram-positive skin pathogens.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Camycore', 'camycore', 'A soothing barrier cream combining calamine with liquid paraffin for itchy or irritated skin.', 'A soothing barrier cream combining calamine with liquid paraffin for itchy or irritated skin.', 'Calamine 8% + liquid paraffin 10% cream', '/assets/therapeutic-dermatology.jpg', 'published', 99, 'Camycore | Onecore Pharma', 'A soothing barrier cream combining calamine with liquid paraffin for itchy or irritated skin.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Defazone', 'defazone', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.', 'Deflazacort 6 mg tablet', '/assets/therapeutic-dermatology.jpg', 'published', 100, 'Defazone | Onecore Pharma', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Fexocore', 'fexocore', 'A second-generation H1 antihistamine used for allergic symptoms.', 'A second-generation H1 antihistamine used for allergic symptoms.', 'Fexofenadine 120/180 mg tablet', '/assets/therapeutic-dermatology.jpg', 'published', 101, 'Fexocore | Onecore Pharma', 'A second-generation H1 antihistamine used for allergic symptoms.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Zion', 'zion', 'A macrolide antibiotic with a long tissue half-life.', 'A macrolide antibiotic with a long tissue half-life.', 'Azithromycin 250/500 mg tablet', '/assets/therapeutic-dermatology.jpg', 'published', 102, 'Zion | Onecore Pharma', 'A macrolide antibiotic with a long tissue half-life.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Glukozoe', 'glukozoe', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Glutathione + kojic acid + Vitamin C + Vitamin E + nicotinamide face wash', '/assets/therapeutic-dermatology.jpg', 'published', 103, 'Glukozoe | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Oxyvive', 'oxyvive', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'L-glutathione 500 mg + alpha-lipoic acid 100 mg + resveratrol 10 mg + astaxanthin 4 mg tablets', '/assets/therapeutic-dermatology.jpg', 'published', 104, 'Oxyvive | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Melacore', 'melacore', 'A triple depigmenting combination used under dermatologic supervision for melasma/hyperpigmentation.', 'A triple depigmenting combination used under dermatologic supervision for melasma/hyperpigmentation.', 'Hydroquinone 2% + mometasone 0.1% + tretinoin 0.025% cream', '/assets/therapeutic-dermatology.jpg', 'published', 105, 'Melacore | Onecore Pharma', 'A triple depigmenting combination used under dermatologic supervision for melasma/hyperpigmentation.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Clindaone-AD', 'clindaone-ad', 'A topical antibiotic plus retinoid combination for acne.', 'A topical antibiotic plus retinoid combination for acne.', 'Clindamycin 1% + adapalene 0.1% gel', '/assets/therapeutic-dermatology.jpg', 'published', 106, 'Clindaone-AD | Onecore Pharma', 'A topical antibiotic plus retinoid combination for acne.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Clobtos-AD', 'clobtos-ad', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'Clobetasol propionate 0.05% + salicylic acid 6.5% ointment', '/assets/therapeutic-dermatology.jpg', 'published', 107, 'Clobtos-AD | Onecore Pharma', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Fungione', 'fungione', 'A triple topical anti-infective/steroid cream containing antifungal, antibacterial and corticosteroid components. It should be reserved for carefully selected mixed inflamed infections.', 'A triple topical anti-infective/steroid cream containing antifungal, antibacterial and corticosteroid components. It should be reserved for carefully selected mixed inflamed infections.', 'Clotrimazole 1% + beclomethasone 0.025% + neomycin sulphate 0.5% cream', '/assets/therapeutic-dermatology.jpg', 'published', 108, 'Fungione | Onecore Pharma', 'A triple topical anti-infective/steroid cream containing antifungal, antibacterial and corticosteroid components. It should be reserved for carefully selected mixed inflamed infections.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Fusi-one', 'fusi-one', 'A topical antibiotic used mainly for susceptible staphylococcal skin infections.', 'A topical antibiotic used mainly for susceptible staphylococcal skin infections.', 'Fusidic acid cream', '/assets/therapeutic-dermatology.jpg', 'published', 109, 'Fusi-one | Onecore Pharma', 'A topical antibiotic used mainly for susceptible staphylococcal skin infections.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Velliglow', 'velliglow', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Glutathione + kojic acid + Vitamin A + C + E cream', '/assets/therapeutic-dermatology.jpg', 'published', 110, 'Velliglow | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Trakomin', 'trakomin', 'A multi-pathway depigmenting serum for melasma and post-inflammatory hyperpigmentation.', 'A multi-pathway depigmenting serum for melasma and post-inflammatory hyperpigmentation.', 'Tranexamic acid + kojic acid + alpha-arbutin + niacinamide + flower acid + Vitamin C + base q.s. face serum', '/assets/therapeutic-dermatology.jpg', 'published', 111, 'Trakomin | Onecore Pharma', 'A multi-pathway depigmenting serum for melasma and post-inflammatory hyperpigmentation.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Azure-C', 'azure-c', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'L-glutathione 600 mg + milk thistle extract 250 mg + NAC 125 mg + CoQ10 60 mg + alpha-lipoic acid 50 mg + pine bark extract 50 mg + curcuma extract 50 mg + phycocyanin 50 mg + Vitamin C 40 mg + grape seed 15 mg + tea catechins 10 mg + Vitamin E 10 mg + provitamin A 4.8 mg + astaxanthin 4 mg + lycopene 2 mg + folic acid 0.1 mg', '/assets/therapeutic-dermatology.jpg', 'published', 112, 'Azure-C | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Nicotinamide + Clindamycin Gel', 'nicotinamide-clindamycin-gel', 'A topical acne treatment combining clindamycin with nicotinamide and soothing excipients.', 'A topical acne treatment combining clindamycin with nicotinamide and soothing excipients.', 'Nicotinamide 4% + clindamycin 1% + aloe + allantoin gel', '/assets/therapeutic-dermatology.jpg', 'published', 113, 'Nicotinamide + Clindamycin Gel | Onecore Pharma', 'A topical acne treatment combining clindamycin with nicotinamide and soothing excipients.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Clobetasol + Miconazole Cream', 'clobetasol-miconazole-cream', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.', 'Clobetasol propionate 0.05% + miconazole 2% cream', '/assets/therapeutic-dermatology.jpg', 'published', 114, 'Clobetasol + Miconazole Cream | Onecore Pharma', 'A very-high-potency topical corticosteroid combination intended for short courses in selected inflammatory dermatoses.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Diclofenac Combination Pain Relief Gel', 'diclofenac-combination-pain-relief-gel', 'A topical analgesic/anti-inflammatory gel for local musculoskeletal pain.', 'A topical analgesic/anti-inflammatory gel for local musculoskeletal pain.', 'Diclofenac + linseed oil + methyl salicylate + menthol gel', '/assets/therapeutic-dermatology.jpg', 'published', 115, 'Diclofenac Combination Pain Relief Gel | Onecore Pharma', 'A topical analgesic/anti-inflammatory gel for local musculoskeletal pain.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (6, 'Ketoconazole + Zinc Pyrithione Shampoo', 'ketoconazole-zinc-pyrithione-shampoo', 'A medicated antifungal/anti-dandruff shampoo combining ketoconazole with zinc pyrithione.', 'A medicated antifungal/anti-dandruff shampoo combining ketoconazole with zinc pyrithione.', 'Ketoconazole 2% + zinc pyrithione 1% shampoo', '/assets/therapeutic-dermatology.jpg', 'published', 116, 'Ketoconazole + Zinc Pyrithione Shampoo | Onecore Pharma', 'A medicated antifungal/anti-dandruff shampoo combining ketoconazole with zinc pyrithione.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Flutiriv', 'flutiriv', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.', 'Fluticasone furoate 27.5 mcg nasal spray', '/assets/therapeutic-ent.jpg', 'published', 117, 'Flutiriv | Onecore Pharma', 'An intranasal corticosteroid for allergic/inflammatory nasal symptoms.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Deftos-6', 'deftos-6', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.', 'Deflazacort 6 mg tablets', '/assets/products/deftos-6.jpeg', 'published', 118, 'Deftos-6 | Onecore Pharma', 'A systemic glucocorticoid with anti-inflammatory and immunosuppressive effects.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Flutiriv NS', 'flutiriv-ns', 'A non-medicated saline nasal spray used for nasal hygiene and hydration.', 'A non-medicated saline nasal spray used for nasal hygiene and hydration.', 'Sodium chloride solution BP nasal spray', '/assets/therapeutic-ent.jpg', 'published', 119, 'Flutiriv NS | Onecore Pharma', 'A non-medicated saline nasal spray used for nasal hygiene and hydration.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Onerest', 'onerest', 'An inhalant vapour capsule for temporary relief of nasal congestion and cold-related upper-airway discomfort. It is not swallowed.', 'An inhalant vapour capsule for temporary relief of nasal congestion and cold-related upper-airway discomfort. It is not swallowed.', 'Camphor 25 mg + chlorothymol 5 mg + eucalyptol 125 mg + menthol 66 mg + terpineol 120 mg vapour capsules', '/assets/therapeutic-ent.jpg', 'published', 120, 'Onerest | Onecore Pharma', 'An inhalant vapour capsule for temporary relief of nasal congestion and cold-related upper-airway discomfort. It is not swallowed.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Otomentin-625', 'otomentin-625', 'A broad-spectrum beta-lactam antibiotic plus a beta-lactamase inhibitor.', 'A broad-spectrum beta-lactam antibiotic plus a beta-lactamase inhibitor.', 'Amoxicillin + clavulanic acid tablet', '/assets/products/otomentin-625.jpeg', 'published', 121, 'Otomentin-625 | Onecore Pharma', 'A broad-spectrum beta-lactam antibiotic plus a beta-lactamase inhibitor.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Flutiriv AZ', 'flutiriv-az', 'A combination intranasal antihistamine plus corticosteroid for allergic rhinitis.', 'A combination intranasal antihistamine plus corticosteroid for allergic rhinitis.', 'Azelastine + fluticasone', '/assets/therapeutic-ent.jpg', 'published', 122, 'Flutiriv AZ | Onecore Pharma', 'A combination intranasal antihistamine plus corticosteroid for allergic rhinitis.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Bilariv-M', 'bilariv-m', 'An oral antihistamine plus leukotriene-receptor antagonist combination.', 'An oral antihistamine plus leukotriene-receptor antagonist combination.', 'Bilastine 20 mg + montelukast 10 mg tablets', '/assets/therapeutic-ent.jpg', 'published', 123, 'Bilariv-M | Onecore Pharma', 'An oral antihistamine plus leukotriene-receptor antagonist combination.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Bilariv', 'bilariv', 'A second-generation, relatively non-sedating H1 antihistamine.', 'A second-generation, relatively non-sedating H1 antihistamine.', 'Bilastine 20 mg tablets', '/assets/therapeutic-ent.jpg', 'published', 124, 'Bilariv | Onecore Pharma', 'A second-generation, relatively non-sedating H1 antihistamine.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Otivy', 'otivy', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.', 'Ivy leaf extract + Zingiber officinale rhizome extract (ginger) + Alpinia galanga rhizome extract + Sambucus nigra extract + curcuminoids-soft extract + Ocimum tenuiflorum (tulsi) seed extract + menthol (cough syrup)', '/assets/therapeutic-ent.jpg', 'published', 125, 'Otivy | Onecore Pharma', 'A multi-antioxidant/nutraceutical formulation intended to support redox balance and tissue nutrition.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (7, 'Histocore', 'histocore', 'A botanical flavonoid/antioxidant formulation intended to support inflammatory and upper-airway symptom control.', 'A botanical flavonoid/antioxidant formulation intended to support inflammatory and upper-airway symptom control.', 'Hesperidin + Berberis aristata root extract + quercetin from botanical sources + Vitamin C (L-ascorbic acid) + bromelain (pineapple)', '/assets/therapeutic-ent.jpg', 'published', 126, 'Histocore | Onecore Pharma', 'A botanical flavonoid/antioxidant formulation intended to support inflammatory and upper-airway symptom control.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Stomazo-40', 'stomazo-40', 'Stomazo-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Stomazo-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Esomeprazole 40 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 127, 'Stomazo-40 | Onecore Pharma', 'Stomazo-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Stomazo-D', 'stomazo-d', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'Esomeprazole 40 mg + domperidone 30 mg capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 128, 'Stomazo-D | Onecore Pharma', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Doxicent 100/200', 'doxicent-100-200', 'An oral third-generation cephalosporin antibiotic.', 'An oral third-generation cephalosporin antibiotic.', 'Cefpodoxime proxetil tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 129, 'Doxicent 100/200 | Onecore Pharma', 'An oral third-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Doxicent CV', 'doxicent-cv', 'An oral third-generation cephalosporin antibiotic.', 'An oral third-generation cephalosporin antibiotic.', 'Cefpodoxime proxetil 200 mg + clavulanic acid 125 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 130, 'Doxicent CV | Onecore Pharma', 'An oral third-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Frecox', 'frecox', 'A combined NSAID plus analgesic for short-term pain and inflammation.', 'A combined NSAID plus analgesic for short-term pain and inflammation.', 'Aceclofenac 100 mg + paracetamol 325 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 131, 'Frecox | Onecore Pharma', 'A combined NSAID plus analgesic for short-term pain and inflammation.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Frecox-SP', 'frecox-sp', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.', 'Aceclofenac 100 mg + paracetamol 325 mg + serratiopeptidase 15 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 132, 'Frecox-SP | Onecore Pharma', 'An analgesic/anti-inflammatory combination sometimes used for acute painful inflammatory conditions.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Frecox-TH', 'frecox-th', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.', 'Aceclofenac 100 mg + paracetamol 325 mg + thiocolchicoside 4 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 133, 'Frecox-TH | Onecore Pharma', 'A short-course combination for painful musculoskeletal inflammation with muscle spasm.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Nervia-NX', 'nervia-nx', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.', 'Pregabalin 75 mg + nortriptyline 10 mg + methylcobalamin 1500 mcg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 134, 'Nervia-NX | Onecore Pharma', 'A multimodal neuropathic-pain combination, with methylcobalamin included for vitamin B12/nerve support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Mesolac', 'mesolac', 'An osmotic laxative that also reduces ammonia absorption in hepatic encephalopathy.', 'An osmotic laxative that also reduces ammonia absorption in hepatic encephalopathy.', 'Lactulose 100 g/15 mL syrup', '/assets/therapeutic-general-medicine.jpg', 'published', 135, 'Mesolac | Onecore Pharma', 'An osmotic laxative that also reduces ammonia absorption in hepatic encephalopathy.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Goodfate-O', 'goodfate-o', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.', 'Sucralfate 1 g + oxetacaine 20 mg suspension', '/assets/therapeutic-general-medicine.jpg', 'published', 136, 'Goodfate-O | Onecore Pharma', 'A mucosal-protective medicine combined with a local anaesthetic for acid-related upper-GI pain.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Omnagut', 'omnagut', 'A synbiotic supplement combining probiotics with a prebiotic substrate to support intestinal microbiome recovery and bowel function.', 'A synbiotic supplement combining probiotics with a prebiotic substrate to support intestinal microbiome recovery and bowel function.', 'Probiotics (2.5 billion cells) + prebiotic softgel capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 137, 'Omnagut | Onecore Pharma', 'A synbiotic supplement combining probiotics with a prebiotic substrate to support intestinal microbiome recovery and bowel function.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Rabefort-20', 'rabefort-20', 'Rabefort-20 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Rabefort-20 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Rabeprazole sodium 20 mg tablets & injection', '/assets/therapeutic-general-medicine.jpg', 'published', 138, 'Rabefort-20 | Onecore Pharma', 'Rabefort-20 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Rabefort-DSR', 'rabefort-dsr', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'Rabeprazole 20 mg + domperidone 30 mg SR capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 139, 'Rabefort-DSR | Onecore Pharma', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Rabefort-L', 'rabefort-l', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'Rabeprazole 20 mg + levosulpiride 75 mg SR capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 140, 'Rabefort-L | Onecore Pharma', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Rabefort-IT', 'rabefort-it', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'Rabeprazole 20 mg + itopride 150 mg SR capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 141, 'Rabefort-IT | Onecore Pharma', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Pantazon-40', 'pantazon-40', 'Pantazon-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Pantazon-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.', 'Pantoprazole 40 mg tablets & injection', '/assets/therapeutic-general-medicine.jpg', 'published', 142, 'Pantazon-40 | Onecore Pharma', 'Pantazon-40 contains a proton-pump inhibitor (PPI) that suppresses gastric acid secretion.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Pantazon-DSR', 'pantazon-dsr', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.', 'Pantoprazole 40 mg + domperidone 30 mg SR capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 143, 'Pantazon-DSR | Onecore Pharma', 'A fixed-dose acid-suppressing PPI plus a prokinetic/antiemetic agent.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Omnacare', 'omnacare', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.', 'Myo-inositol + Tribulus terrestris extract + Ecklonia bicyclis (brown algae) + chitosan oligosaccharides tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 144, 'Omnacare | Onecore Pharma', 'An inositol-centered nutritional/metabolic formulation often positioned for insulin signalling and reproductive-metabolic support.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Cefvanta-250', 'cefvanta-250', 'A second-generation cephalosporin antibiotic.', 'A second-generation cephalosporin antibiotic.', 'Cefuroxime 250 mg', '/assets/products/cefvanta-250.jpeg', 'published', 145, 'Cefvanta-250 | Onecore Pharma', 'A second-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Cefnara-500', 'cefnara-500', 'A second-generation cephalosporin antibiotic.', 'A second-generation cephalosporin antibiotic.', 'Cefuroxime 500 mg', '/assets/therapeutic-general-medicine.jpg', 'published', 146, 'Cefnara-500 | Onecore Pharma', 'A second-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Cefnara-CV', 'cefnara-cv', 'A second-generation cephalosporin antibiotic.', 'A second-generation cephalosporin antibiotic.', 'Cefuroxime + clavulanate', '/assets/therapeutic-general-medicine.jpg', 'published', 147, 'Cefnara-CV | Onecore Pharma', 'A second-generation cephalosporin antibiotic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Bilariv-M', 'bilariv-m', 'An oral antihistamine plus leukotriene-receptor antagonist combination.', 'An oral antihistamine plus leukotriene-receptor antagonist combination.', 'Bilastine 20 mg + montelukast 10 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 148, 'Bilariv-M | Onecore Pharma', 'An oral antihistamine plus leukotriene-receptor antagonist combination.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (8, 'Throfree', 'throfree', 'A 5-HT3 receptor antagonist antiemetic.', 'A 5-HT3 receptor antagonist antiemetic.', 'Ondansetron mouth-dissolving 4 mg tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 149, 'Throfree | Onecore Pharma', 'A 5-HT3 receptor antagonist antiemetic.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Cytos SUPPORT', 'cytos-support', 'A specialized nutritional formulation designed to support patients undergoing active oncology treatments, counter muscle wasting and maintain metabolic balance.', 'A specialized nutritional formulation designed to support patients undergoing active oncology treatments, counter muscle wasting and maintain metabolic balance.', 'Specialized high-protein nutritional supplement with glutamine, EPA, DHA, antioxidants and essential micronutrients', '/assets/cytos.jpg', 'published', 150, 'Cytos SUPPORT | Onecore Pharma', 'A specialized nutritional formulation designed to support patients undergoing active oncology treatments, counter muscle wasting and maintain metabolic balance.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Oncora-4', 'oncora-4', 'A selective 5-HT3 receptor antagonist antiemetic used to prevent nausea and vomiting induced by cytotoxic chemotherapy and radiotherapy.', 'A selective 5-HT3 receptor antagonist antiemetic used to prevent nausea and vomiting induced by cytotoxic chemotherapy and radiotherapy.', 'Ondansetron 4 mg orally disintegrating tablets', '/assets/cytos.jpg', 'published', 151, 'Oncora-4 | Onecore Pharma', 'A selective 5-HT3 receptor antagonist antiemetic used to prevent nausea and vomiting induced by cytotoxic chemotherapy and radiotherapy.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Oncora-8', 'oncora-8', 'A high-potency selective 5-HT3 receptor antagonist antiemetic for moderate-to-high emetogenic cancer therapies.', 'A high-potency selective 5-HT3 receptor antagonist antiemetic for moderate-to-high emetogenic cancer therapies.', 'Ondansetron 8 mg orally disintegrating tablets', '/assets/cytos.jpg', 'published', 152, 'Oncora-8 | Onecore Pharma', 'A high-potency selective 5-HT3 receptor antagonist antiemetic for moderate-to-high emetogenic cancer therapies.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Leuco-Boost', 'leuco-boost', 'A recombinant human granulocyte colony-stimulating factor (G-CSF) used to stimulate white blood cell production and reduce the risk of neutropenic infections.', 'A recombinant human granulocyte colony-stimulating factor (G-CSF) used to stimulate white blood cell production and reduce the risk of neutropenic infections.', 'Filgrastim 300 mcg / 0.5 mL solution for injection (Recombinant Human G-CSF)', '/assets/cytos.jpg', 'published', 153, 'Leuco-Boost | Onecore Pharma', 'A recombinant human granulocyte colony-stimulating factor (G-CSF) used to stimulate white blood cell production and reduce the risk of neutropenic infections.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Aprecore', 'aprecore', 'A selective substance P / neurokinin-1 (NK1) receptor antagonist antiemetic used in combination regimens for highly emetogenic chemotherapy.', 'A selective substance P / neurokinin-1 (NK1) receptor antagonist antiemetic used in combination regimens for highly emetogenic chemotherapy.', 'Aprepitant 125 mg (Day 1) + 80 mg (Days 2 & 3) capsules', '/assets/cytos.jpg', 'published', 154, 'Aprecore | Onecore Pharma', 'A selective substance P / neurokinin-1 (NK1) receptor antagonist antiemetic used in combination regimens for highly emetogenic chemotherapy.');
INSERT IGNORE INTO `products` 
  (`therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) 
VALUES 
  (9, 'Nausex-IV', 'nausex-iv', 'A second-generation 5-HT3 receptor antagonist with high binding affinity and an extended half-life for prolonged antiemetic protection.', 'A second-generation 5-HT3 receptor antagonist with high binding affinity and an extended half-life for prolonged antiemetic protection.', 'Palonosetron hydrochloride 0.25 mg / 5 mL IV injection', '/assets/cytos.jpg', 'published', 155, 'Nausex-IV | Onecore Pharma', 'A second-generation 5-HT3 receptor antagonist with high binding affinity and an extended half-life for prolonged antiemetic protection.');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
