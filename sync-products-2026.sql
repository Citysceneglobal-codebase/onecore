-- ============================================================================
-- Complete Onecore Pharma Product Catalog Synchronization (2026)
-- Total Products: 163
-- ============================================================================

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE `product_safety_sections`;
TRUNCATE TABLE `product_mechanisms`;
TRUNCATE TABLE `product_dosage`;
TRUNCATE TABLE `product_benefits`;
TRUNCATE TABLE `product_compositions`;
TRUNCATE TABLE `products`;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(1, 1, 'Glypocal™-LP Tablets', 'glypocal-lp-tablets', 'GLYPOCAL-LP Tablets provide elemental calcium with vitamin D2 to help address inadequate intake and support bone mineralisation.', 'GLYPOCAL-LP Tablets provide elemental calcium with vitamin D2 to help address inadequate intake and support bone mineralisation. Calcium contributes to normal muscle and nerve function, while vitamin D supports calcium absorption. It complements dietary measures and prescribed bone care when nutritional requirements are not adequately met.', 'Elemental Liposomal Calcium (Tribasic Phosphate) 500 mg + Vitamin D2 600 IU Tablets', '/assets/products/glypocal-lp-tablets.jpg', 'published', 1, 'Glypocal™-LP Tablets | Onecore Pharma', 'GLYPOCAL-LP Tablets provide elemental calcium with vitamin D2 to help address inadequate intake and support bone mineralisation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(1, 'Elemental Liposomal Calcium (Tribasic Phosphate) 500 mg + Vitamin D2 600 IU Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(1, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(1, 'Inadequate Calcium and Vitamin D Intake', 'Supplements dietary gaps when food intake or sunlight exposure does not adequately meet assessed nutritional needs.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(1, 'Nutritional Support for Bone Health', 'Supports bone maintenance in adults, including postmenopausal women, alongside exercise, adequate protein and other prescribed measures.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(1, '01 — Provides Calcium', 'Supplies calcium needed for bone mineral and normal muscle and nerve activity.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(1, '02 — Supports Calcium Absorption', 'Vitamin D2 is converted to active metabolites that help the intestine absorb calcium.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(1, '03 — Maintains Bone Mineralisation', 'Adequate calcium and vitamin D support normal bone turnover when nutritional intake is sufficient.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(1, 'high-calcium-and-kidney-problems', 'High Calcium and Kidney Problems', 'Avoid in hypercalcaemia. Kidney stones, kidney disease or parathyroid disorders require medical assessment before calcium or vitamin D supplementation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(1, 'medicine-interactions', 'Medicine Interactions', 'Keep at least 4 hours from levothyroxine. Separate iron and interacting antibiotics according to their prescribing instructions.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(1, 'total-daily-intake', 'Total Daily Intake', 'Include calcium and vitamin D from food and other supplements when assessing the dose. Excess intake can cause constipation or high blood calcium.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(2, 1, 'Folatis™', 'folatis', 'FOLATIS combines active folate with methylcobalamin and pyridoxal phosphate to support folate and vitamin B12 status.', 'FOLATIS combines active folate with methylcobalamin and pyridoxal phosphate to support folate and vitamin B12 status. It helps meet specific nutritional needs involved in red blood cell formation, homocysteine metabolism and normal nerve function, when used under medical supervision alongside a balanced diet.', 'L-Methylfolate 5 mg + Methylcobalamin 1500 mcg + Pyridoxal-5-Phosphate 0.5 mg Tablets', '/assets/products/folatis.jpg', 'published', 2, 'Folatis™ | Onecore Pharma', 'FOLATIS combines active folate with methylcobalamin and pyridoxal phosphate to support folate and vitamin B12 status.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(2, 'L-Methylfolate 5 mg + Methylcobalamin 1500 mcg + Pyridoxal-5-Phosphate 0.5 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(2, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(2, 'Folate and Vitamin B12 Insufficiency', 'Provides targeted supplementation when dietary intake, absorption or laboratory assessment indicates an increased requirement.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(2, 'Nutritional Support for Homocysteine Metabolism', 'Supports folate-dependent pathways when the clinician identifies a relevant nutritional deficiency. It does not replace cardiovascular risk management.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(2, '01 — Supplies Active Coenzymes', 'Methylfolate, methylcobalamin and pyridoxal phosphate provide biologically active forms of folate, vitamin B12 and vitamin B6.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(2, '02 — Supports One-Carbon Metabolism', 'These nutrients participate in DNA synthesis and pathways that convert homocysteine to other compounds.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(2, '03 — Supports Blood and Nerve Function', 'Correcting relevant deficiencies supports normal red blood cell production and nerve function.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(2, 'vitamin-b12-assessment', 'Vitamin B12 Assessment', 'Anaemia or neurological symptoms need assessment. Folate can improve blood counts while untreated vitamin B12 deficiency continues to damage nerves.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(2, 'duplicate-supplements-and-medicines', 'Duplicate Supplements and Medicines', 'Review prenatal vitamins, antiepileptics and methotrexate with the clinician. Do not combine high-dose folate products without advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(2, 'pregnancy-and-individual-requirements', 'Pregnancy and Individual Requirements', 'Use the prescribed folate form and dose during pregnancy. High-dose supplementation is appropriate only for an identified clinical need.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(3, 1, 'Folatis™-D', 'folatis-d', 'FOLATIS-D combines methylfolate, methylcobalamin, active vitamin B6 and DHA to support nutritional needs before and during pregnancy.', 'FOLATIS-D combines methylfolate, methylcobalamin, active vitamin B6 and DHA to support nutritional needs before and during pregnancy. The B vitamins support normal cell division and blood formation, while DHA contributes to brain and retinal structure. Use should be guided by individual dietary and antenatal requirements.', 'L-methylfolate 800 mcg + methylcobalamin 1500 mcg + pyridoxal-5-phosphate 500 mcg + DHA 200 mg per softgel capsule', '/assets/products/folatis-d.jpg', 'published', 3, 'Folatis™-D | Onecore Pharma', 'FOLATIS-D combines methylfolate, methylcobalamin, active vitamin B6 and DHA to support nutritional needs before and during pregnancy.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(3, 'L-methylfolate 800 mcg + methylcobalamin 1500 mcg + pyridoxal-5-phosphate 500 mcg + DHA 200 mg per softgel capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(3, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 softgel capsule once daily.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(3, 'Preconception Nutritional Support', 'Helps meet assessed folate, vitamin B12 and DHA needs while planning pregnancy, alongside a balanced diet and recommended antenatal care.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(3, 'Pregnancy and Breastfeeding Nutrition', 'Supplements relevant nutrients when intake is inadequate. DHA contributes to maternal omega-3 intake and normal fetal tissue development.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(3, '01 — Provides Folate and B Vitamins', 'Supplies coenzymes required for normal DNA synthesis, blood formation and homocysteine metabolism.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(3, '02 — Supplies DHA', 'DHA is incorporated into cell membranes, including those of the developing brain and retina.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(3, '03 — Supports Maternal Nutrition', 'Helps close identified dietary gaps during preconception, pregnancy and breastfeeding.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(3, 'vitamin-b12-assessment', 'Vitamin B12 Assessment', 'Anaemia or neurological symptoms need assessment. Folate can improve blood counts while untreated vitamin B12 deficiency continues to damage nerves.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(3, 'duplicate-supplements-and-medicines', 'Duplicate Supplements and Medicines', 'Review prenatal vitamins, antiepileptics and methotrexate with the clinician. Do not combine high-dose folate products without advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(3, 'dha-source-and-allergy', 'DHA Source and Allergy', 'Check whether DHA is derived from fish or algae and avoid the product if allergic to its source or excipients.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(4, 1, 'Duvia™-10', 'duvia-10', 'Duvia-10 contains dydrogesterone, an oral progestogen used in selected conditions associated with insufficient progesterone activity.', 'Duvia-10 contains dydrogesterone, an oral progestogen used in selected conditions associated with insufficient progesterone activity. It helps regulate the response of the uterine lining and may be prescribed for menstrual disorders or luteal support. The dose and treatment days depend on the diagnosed condition.', 'Dydrogesterone 10 mg per tablet', '/assets/therapeutic-womens-health.jpg', 'published', 4, 'Duvia™-10 | Onecore Pharma', 'Duvia-10 contains dydrogesterone, an oral progestogen used in selected conditions associated with insufficient progesterone activity.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(4, 'Dydrogesterone 10 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(4, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults — irregular cycles: take 1 tablet (10 mg) twice daily on cycle days 11–25. Endometriosis: take 1 tablet twice daily on days 5–25 or continuously under the selected treatment plan. Infertility due to luteal insufficiency: take 1 tablet twice daily on days 11–25 for at least 6 cycles. The prescriber must select one indication-specific schedule.\n\nAdministration Advice\nSwallow with water, with or without food. Day 1 is the first day of menstrual bleeding. Space divided doses evenly. Pregnancy or assisted-reproduction support requires a separate specialist protocol; do not stop it independently.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, 'Menstrual Disorders Associated with Progesterone Insufficiency', 'May be prescribed for irregular cycles, painful periods or dysfunctional bleeding after the cause has been evaluated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, 'Endometriosis', 'May help manage endometriosis-related symptoms when a progestogen is considered appropriate by the gynaecologist.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, 'Luteal Support', 'May be prescribed in selected fertility protocols or progesterone-deficiency states. Pregnancy use requires specialist assessment.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, '01 — Activates Progesterone Receptors', 'Dydrogesterone binds to progesterone receptors in responsive tissues, particularly the uterine lining.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, '02 — Changes the Endometrial Response', 'It promotes a progesterone-type response in an oestrogen-primed endometrium.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(4, '03 — Supports the Prescribed Cycle', 'This helps regulate bleeding patterns or provide progestogenic support according to the treatment protocol.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(4, 'unexplained-bleeding-and-tumours', 'Unexplained Bleeding and Tumours', 'Do not start before unexplained vaginal bleeding is investigated. Avoid with known or suspected progestogen-dependent tumours.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(4, 'liver-disease-and-allergy', 'Liver Disease and Allergy', 'Inform the prescriber about liver disease. Stop and seek review for jaundice, severe abdominal pain or an allergic reaction.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(4, 'individual-pregnancy-and-hormone-assessment', 'Individual Pregnancy and Hormone Assessment', 'Pregnancy, breastfeeding and concurrent oestrogen therapy require individual review. Persistent breakthrough bleeding needs investigation.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(5, 1, 'Feoma™-XT', 'feoma-xt', 'FEOMA-XT combines iron with folic acid and zinc to support red blood cell formation and address related nutritional deficiencies.', 'FEOMA-XT combines iron with folic acid and zinc to support red blood cell formation and address related nutritional deficiencies. Iron contributes to haemoglobin production, while folate supports cell division. It may be prescribed when iron requirements are increased or dietary intake is insufficient, following assessment.', 'Ferrous ascorbate equivalent to elemental iron 100 mg + folic acid 1.5 mg + zinc 22.5 mg per tablet', '/assets/products/feoma-xt.jpg', 'published', 5, 'Feoma™-XT | Onecore Pharma', 'FEOMA-XT combines iron with folic acid and zinc to support red blood cell formation and address related nutritional deficiencies.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(5, 'Ferrous ascorbate equivalent to elemental iron 100 mg + folic acid 1.5 mg + zinc 22.5 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(5, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with water. Iron is better absorbed away from meals but may be taken after food if it causes nausea. Avoid tea, coffee, calcium and antacids near the dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(5, 'Iron Deficiency and Related Anaemia', 'Provides iron when laboratory assessment confirms iron deficiency, with or without anaemia. The cause of deficiency also needs treatment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(5, 'Increased Nutritional Requirements', 'Supports assessed iron and folate needs during pregnancy, recovery or blood loss under medical supervision.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(5, '01 — Provides Absorbable Iron', 'Iron supplies the mineral needed to produce haemoglobin in developing red blood cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(5, '02 — Supports Cell Production', 'Folate and other supplied micronutrients contribute to normal cell division and blood formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(5, '03 — Replenishes Nutrient Stores', 'Continued prescribed supplementation helps restore iron stores and correct deficiency-related symptoms over time.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(5, 'iron-overload-and-non-iron-anaemia', 'Iron Overload and Non-Iron Anaemia', 'Avoid in haemochromatosis or iron overload. Confirm the cause of anaemia before treatment. Not every low haemoglobin level is due to iron deficiency.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(5, 'stomach-effects-and-accidental-ingestion', 'Stomach Effects and Accidental Ingestion', 'Nausea, constipation and dark stools may occur. Iron overdose can be fatal in children. Store securely out of their reach.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(5, 'interactions-and-follow-up', 'Interactions and Follow-Up', 'Separate from levothyroxine by at least 4 hours and from interacting antibiotics as directed. Monitor haemoglobin and iron stores.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(6, 1, 'Feoma™-Plus', 'feoma-plus', 'FEOMA-PLUS provides iron bisglycinate, methylcobalamin, folic acid and zinc to support blood formation when nutritional intake or stores are inadequate.', 'FEOMA-PLUS provides iron bisglycinate, methylcobalamin, folic acid and zinc to support blood formation when nutritional intake or stores are inadequate. Iron supports haemoglobin production, while folate and vitamin B12 contribute to normal red blood cell development. Use should follow assessment of the type and cause of anaemia.', 'Methylcobalamin 500 mcg + Ferrous Bis-Glycinate eq. to Elemental Iron 60 mg + Zinc Bis-Glycinate eq. to Elemental Zinc 15 mg + Folic Acid IP 1 mg Tablet', '/assets/products/feoma-plus.jpg', 'published', 6, 'Feoma™-Plus | Onecore Pharma', 'FEOMA-PLUS provides iron bisglycinate, methylcobalamin, folic acid and zinc to support blood formation when nutritional intake or stores are inadequate.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(6, 'Methylcobalamin 500 mcg + Ferrous Bis-Glycinate eq. to Elemental Iron 60 mg + Zinc Bis-Glycinate eq. to Elemental Zinc 15 mg + Folic Acid IP 1 mg Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(6, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nSwallow with water, preferably away from tea, coffee and calcium. Take after a meal if stomach discomfort occurs.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(6, 'Iron Deficiency with Nutritional Gaps', 'Supplements iron and associated micronutrients when iron deficiency coexists with inadequate folate, vitamin B12 or zinc intake.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(6, 'Nutritional Support in Increased Requirements', 'May be used during pregnancy or recovery when the clinician identifies a need for this specific combination.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(6, '01 — Provides Absorbable Iron', 'Iron supplies the mineral needed to produce haemoglobin in developing red blood cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(6, '02 — Supports Cell Production', 'Folate and other supplied micronutrients contribute to normal cell division and blood formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(6, '03 — Replenishes Nutrient Stores', 'Continued prescribed supplementation helps restore iron stores and correct deficiency-related symptoms over time.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(6, 'iron-overload-and-non-iron-anaemia', 'Iron Overload and Non-Iron Anaemia', 'Avoid in haemochromatosis or iron overload. Confirm the cause of anaemia before treatment. Not every low haemoglobin level is due to iron deficiency.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(6, 'stomach-effects-and-accidental-ingestion', 'Stomach Effects and Accidental Ingestion', 'Nausea, constipation and dark stools may occur. Iron overdose can be fatal in children. Store securely out of their reach.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(6, 'interactions-and-follow-up', 'Interactions and Follow-Up', 'Separate from levothyroxine by at least 4 hours and from interacting antibiotics as directed. Monitor haemoglobin and iron stores.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(7, 1, 'Chromolyn™', 'chromolyn', 'Chromolyn combines myo-inositol with selected minerals, N-acetylcysteine, ashwagandha and vitamin D2 for nutritional support in women with metabolic or reproductive concerns.', 'Chromolyn combines myo-inositol with selected minerals, N-acetylcysteine, ashwagandha and vitamin D2 for nutritional support in women with metabolic or reproductive concerns. These ingredients participate in cellular signalling and antioxidant pathways. Benefits depend on the clinical context, and the formulation should complement an individualised diet and treatment plan.', 'Myo-Inositol 1800 mg + Magnesium Sulphate 600 mg + Ashwagandha root extract 525 mg N-Acetyl-L-Cysteine 450 mg + Inositol 45 mg + Zinc 13.2 mg Chromium picolinate 400 mcg + Vitamin D2 plant source 600 IU Powder', '/assets/therapeutic-womens-health.jpg', 'published', 7, 'Chromolyn™ | Onecore Pharma', 'Chromolyn combines myo-inositol with selected minerals, N-acetylcysteine, ashwagandha and vitamin D2 for nutritional support in women with metabolic or reproductive concerns.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(7, 'Myo-Inositol 1800 mg + Magnesium Sulphate 600 mg + Ashwagandha root extract 525 mg N-Acetyl-L-Cysteine 450 mg + Inositol 45 mg + Zinc 13.2 mg Chromium picolinate 400 mcg + Vitamin D2 plant source 600 IU Powder', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(7, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this powder in the dose and duration as advised by your doctor.\n\nAdministration Advice\nMix the prescribed measured serving in water and consume promptly after a meal. Do not estimate a serving using an uncalibrated household spoon.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(7, 'Adjunct Nutritional Support in PCOS', 'May be considered when the clinician identifies nutritional or metabolic support needs. Evidence for improved ovulation, fertility or weight loss remains limited.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(7, 'Inadequate Micronutrient Intake', 'Provides selected micronutrients when dietary intake is insufficient and this combination is considered appropriate.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(7, '01 — Supports Cellular Signalling', 'Myo-inositol participates in intracellular pathways involved in insulin and reproductive hormone signalling.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(7, '02 — Provides Antioxidant Substrates', 'N-acetylcysteine supplies cysteine for glutathione synthesis. Other ingredients provide additional nutritional support.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(7, '03 — Supports Assessed Nutrient Needs', 'Magnesium, zinc, chromium and vitamin D contribute to normal physiological processes when intake is inadequate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(7, 'pregnancy-thyroid-and-liver-disease', 'Pregnancy, Thyroid and Liver Disease', 'Avoid during pregnancy unless specifically cleared. Ashwagandha may affect thyroid function and has been linked to rare liver injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(7, 'glucose-and-medicine-interactions', 'Glucose and Medicine Interactions', 'Review diabetes medicines, sedatives, thyroid treatment and immunosuppressants. Monitor glucose if receiving glucose-lowering therapy.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(7, 'serving-size-and-tolerance', 'Serving Size and Tolerance', 'Confirm the powder serving and elemental mineral amounts. Excess magnesium may cause diarrhoea, particularly in kidney impairment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(8, 1, 'Humiphin™', 'humiphin', 'Humiphin contains highly purified human chorionic gonadotropin, a hormone with luteinising hormone-like activity.', 'Humiphin contains highly purified human chorionic gonadotropin, a hormone with luteinising hormone-like activity. It is used in specialist fertility treatment to trigger final follicular maturation and ovulation after appropriate stimulation. It may also be prescribed for selected male hormonal disorders, with monitoring tailored to the indication.', 'Highly purified Human Chorionic Gonadotropin 5000 IU Injection', '/assets/products/humiphin.jpg', 'published', 8, 'Humiphin™ | Onecore Pharma', 'Humiphin contains highly purified human chorionic gonadotropin, a hormone with luteinising hormone-like activity.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(8, 'Highly purified Human Chorionic Gonadotropin 5000 IU Injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(8, 'Administration and Dosage Guidance', 'Dosing and Schedule\nOvulation trigger in adult women: administer 5000–10000 IU once after adequate follicular development; each vial supplies 5000 IU. Use ultrasound and hormone monitoring to determine the exact trigger time.\n\nAdministration Advice\nA trained healthcare professional must reconstitute the required vial(s) with the supplied diluent and administer by the route authorised for the pack. Do not assume that an intramuscular-only preparation is suitable for subcutaneous use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(8, 'Ovulation Induction in Women', 'Used after suitable follicular development to trigger ovulation in selected fertility treatment protocols.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(8, 'Selected Male Hypogonadism', 'May stimulate testicular testosterone production in hypogonadotropic hypogonadism under specialist care, sometimes with other gonadotropins.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(8, '01 — Mimics the LH Signal', 'hCG activates luteinising hormone receptors in the ovary or testis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(8, '02 — Stimulates Gonadal Function', 'It promotes final oocyte maturation and ovulation or stimulates Leydig-cell testosterone production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(8, '03 — Supports the Treatment Objective', 'Carefully timed administration supports the fertility or endocrine protocol selected by the specialist.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(8, 'ovarian-hyperstimulation-and-clots', 'Ovarian Hyperstimulation and Clots', 'Seek urgent care for severe abdominal swelling, rapid weight gain, breathlessness or reduced urine. Ovarian hyperstimulation can cause thrombosis.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(8, 'multiple-pregnancy-and-monitoring', 'Multiple Pregnancy and Monitoring', 'Ultrasound and hormonal monitoring are required during ovarian stimulation. Multiple pregnancy and ovarian torsion risks need counselling.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(8, 'hormone-sensitive-conditions', 'Hormone-Sensitive Conditions', 'Avoid in relevant hormone-dependent tumours, unexplained genital bleeding or unsuitable uncontrolled endocrine disorders. Disclose all fertility medicines.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(9, 8, 'Throfree™', 'throfree', 'Throfree contains ondansetron in a mouth-dissolving tablet that helps prevent nausea and vomiting by blocking serotonin signals.', 'Throfree contains ondansetron in a mouth-dissolving tablet that helps prevent nausea and vomiting by blocking serotonin signals. It is prescribed in settings such as chemotherapy, radiotherapy or surgery. The dose and timing depend on the treatment, age and liver function, and should follow medical advice.', 'Ondansetron - Mouth Dissolving 4 mg Tablet', '/assets/products/throfree.jpg', 'published', 9, 'Throfree™ | Onecore Pharma', 'Throfree contains ondansetron in a mouth-dissolving tablet that helps prevent nausea and vomiting by blocking serotonin signals.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(9, 'Ondansetron - Mouth Dissolving 4 mg Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(9, 'Administration and Dosage Guidance', 'Dosing and Schedule\nModerately emetogenic chemotherapy — adults and ages 12–17: take 8 mg (2 tablets) 30 minutes before chemotherapy and again 8 hours later, then 8 mg every 12 hours for 1–2 days afterwards. Ages 4–11: give 4 mg (1 tablet) before chemotherapy and 4 and 8 hours later, then 4 mg three times daily for 1–2 days. Severe liver impairment: maximum 8 mg/day. Radiotherapy and surgery require their own prescribed schedules.\n\nAdministration Advice\nWith dry hands, peel back the foil and place the tablet on the tongue. Let it dissolve and swallow with saliva. Water is not required.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(9, 'Chemotherapy-Related Nausea and Vomiting', 'Helps prevent nausea and vomiting caused by prescribed cancer chemotherapy when used in the selected antiemetic regimen.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(9, 'Radiotherapy or Surgery-Related Nausea and Vomiting', 'May be prescribed around radiotherapy or surgery. The required dose differs from routine symptom-directed use.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(9, '01 — Blocks Serotonin Receptors', 'Ondansetron selectively blocks 5-HT3 receptors on gut vagal nerves and within central vomiting pathways.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(9, '02 — Reduces Vomiting Signals', 'This interrupts serotonin-triggered communication between the gastrointestinal tract and the brain’s vomiting centres.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(9, '03 — Prevents Nausea and Vomiting', 'Reduced activation of these pathways helps control treatment-associated nausea and vomiting.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(9, 'heart-rhythm-and-electrolytes', 'Heart Rhythm and Electrolytes', 'Avoid in congenital long-QT syndrome. Low potassium or magnesium and other QT-prolonging medicines increase rhythm risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(9, 'serotonergic-interactions-and-apomorphine', 'Serotonergic Interactions and Apomorphine', 'Do not combine with apomorphine. Seek urgent advice for agitation, fever, tremor or rigidity when taking serotonergic medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(9, 'liver-disease-and-bowel-symptoms', 'Liver Disease and Bowel Symptoms', 'Severe liver impairment requires a lower maximum daily dose. Persistent vomiting, severe constipation or abdominal distension needs assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(10, 1, 'Easefate™', 'easefate', 'Easefate combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain.', 'Easefate combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain. Sucralfate forms a protective barrier over damaged mucosa, while oxetacaine provides local anaesthetic relief. It is used within a prescribed treatment plan after the underlying cause of symptoms is assessed.', 'Sucralfate 1 g + oxetacaine 20 mg per 10 mL oral suspension', '/assets/products/easefate.jpg', 'published', 10, 'Easefate™ | Onecore Pharma', 'Easefate combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(10, 'Sucralfate 1 g + oxetacaine 20 mg per 10 mL oral suspension', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(10, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults being treated for an active peptic ulcer: take 10 mL four times daily, before the three main meals and at bedtime, for the prescribed course. Each dose supplies sucralfate 1 g and oxetacaine 20 mg. Reassess persistent pain or bleeding instead of increasing the dose.\n\nAdministration Advice\nShake well and measure with a calibrated medicine cup or oral syringe. Take on an empty stomach, 1 hour before or 2 hours after food. Keep other oral medicines at least 2 hours apart and antacids at least 30 minutes apart.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(10, 'Peptic Ulcer-Related Mucosal Injury', 'May be prescribed to protect injured stomach or duodenal lining as part of treatment for an assessed ulcer condition.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(10, 'Painful Gastritis or Acid-Related Irritation', 'Helps relieve burning discomfort associated with mucosal irritation when the clinician considers this combination appropriate.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(10, '01 — Forms a Protective Barrier', 'Sucralfate adheres to damaged mucosa and forms a local protective layer.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(10, '02 — Reduces Exposure to Irritants', 'The barrier limits contact with acid, pepsin and bile while the lining recovers.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(10, '03 — Relieves Local Pain', 'Oxetacaine provides local anaesthetic activity that helps reduce burning and discomfort.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(10, 'kidney-disease-and-aluminium', 'Kidney Disease and Aluminium', 'Sucralfate contains aluminium. Severe kidney impairment requires caution because aluminium may accumulate, particularly with prolonged use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(10, 'medicine-absorption', 'Medicine Absorption', 'Sucralfate can reduce absorption of other medicines. Keep an appropriate gap, commonly at least 2 hours, and follow medicine-specific instructions.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(10, 'alarm-symptoms-and-constipation', 'Alarm Symptoms and Constipation', 'Persistent pain, weight loss, vomiting blood or black stools need prompt assessment. Constipation may occur.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(11, 1, 'Gestemme™-200', 'gestemme-200', 'Gestemme-200 contains natural micronised progesterone, used when progestogenic support is needed in a prescribed reproductive or hormone treatment plan.', 'Gestemme-200 contains natural micronised progesterone, used when progestogenic support is needed in a prescribed reproductive or hormone treatment plan. It acts on the uterine lining and supports its response to hormonal changes. The route, dose and treatment days depend on the condition and the product’s approved directions.', 'Progesterone (Natural Micronized) 200 mg Softgels Capsules', '/assets/products/gestemme-200.jpg', 'published', 11, 'Gestemme™-200 | Onecore Pharma', 'Gestemme-200 contains natural micronised progesterone, used when progestogenic support is needed in a prescribed reproductive or hormone treatment plan.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(11, 'Progesterone (Natural Micronized) 200 mg Softgels Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(11, 'Administration and Dosage Guidance', 'Dosing and Schedule\nOral endometrial protection with oestrogen in postmenopausal adults with an intact uterus: take 1 capsule (200 mg) at bedtime for 12 consecutive days in each 28-day treatment cycle. Fertility and pregnancy support require a separate indication-specific schedule.\n\nAdministration Advice\nSwallow the capsule whole at bedtime. Use by mouth for this regimen; do not switch to vaginal administration unless the prescribed product is approved for that route. Drowsiness can occur.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, 'Menstrual Disorders Related to Progesterone Insufficiency', 'May be prescribed for secondary amenorrhoea or selected irregular bleeding patterns after evaluation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, 'Endometrial Protection with Oestrogen Therapy', 'May be used cyclically in women with a uterus receiving menopausal oestrogen therapy.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, 'Specialist Luteal Support', 'May be prescribed in selected fertility protocols when the formulation and route are specifically suitable.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, '01 — Activates Progesterone Receptors', 'Micronised progesterone binds to receptors in progesterone-responsive reproductive tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, '02 — Supports Endometrial Transformation', 'It changes the oestrogen-stimulated uterine lining towards a secretory state.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(11, '03 — Provides Progestogenic Support', 'This supports the prescribed cycle or hormone regimen when progesterone activity is required.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(11, 'unexplained-bleeding-and-hormone-sensitive-disease', 'Unexplained Bleeding and Hormone-Sensitive Disease', 'Investigate unexplained vaginal bleeding before treatment. Relevant cancer history, clotting disorders and liver disease require medical review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(11, 'drowsiness-and-administration-route', 'Drowsiness and Administration Route', 'Oral progesterone may cause dizziness or sleepiness. Avoid driving if affected. Do not switch between oral and vaginal routes without explicit advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(11, 'pregnancy-excipients-and-follow-up', 'Pregnancy, Excipients and Follow-Up', 'Follow the obstetrician’s instructions in pregnancy. Check excipients for relevant allergy and report persistent bleeding or severe headache.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(12, 1, 'Gestemme™-300', 'gestemme-300', 'Gestemme-300 contains natural micronised progesterone in a sustained-release tablet for prescribed progestogenic support.', 'Gestemme-300 contains natural micronised progesterone in a sustained-release tablet for prescribed progestogenic support. It helps regulate the response of the uterine lining in selected menstrual and hormonal conditions. The sustained-release formulation is intended for oral use, with the dose and cycle schedule determined by the treating clinician.', 'Progesterone (Natural Micronized) 300 mg Sustained Release Tablets', '/assets/products/gestemme-300.jpg', 'published', 12, 'Gestemme™-300 | Onecore Pharma', 'Gestemme-300 contains natural micronised progesterone in a sustained-release tablet for prescribed progestogenic support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(12, 'Progesterone (Natural Micronized) 300 mg Sustained Release Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(12, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with menstrual irregularity due to progesterone insufficiency: take 1 sustained-release tablet (300 mg) once daily in the evening for 10 days per cycle, starting on cycle day 14. Use a separately specified schedule for other indications; this is not the 200 mg HRT regimen.\n\nAdministration Advice\nSwallow whole with water at the same time each day, preferably in the evening if it causes drowsiness. Do not crush or chew. This sustained-release tablet is for oral use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(12, 'Menstrual Irregularity Related to Progesterone Insufficiency', 'May be prescribed for selected cycle disturbances after the underlying cause and pregnancy status have been assessed.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(12, 'Prescribed Progestogenic Support', 'Provides progesterone support when the clinician selects this strength for an individual hormonal treatment plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(12, '01 — Activates Progesterone Receptors', 'Micronised progesterone binds to receptors in progesterone-responsive reproductive tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(12, '02 — Supports Endometrial Transformation', 'It changes the oestrogen-stimulated uterine lining towards a secretory state.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(12, '03 — Provides Progestogenic Support', 'This supports the prescribed cycle or hormone regimen when progesterone activity is required.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(12, 'unexplained-bleeding-and-hormone-sensitive-disease', 'Unexplained Bleeding and Hormone-Sensitive Disease', 'Investigate unexplained vaginal bleeding before treatment. Relevant cancer history, clotting disorders and liver disease require medical review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(12, 'drowsiness-and-administration-route', 'Drowsiness and Administration Route', 'Oral progesterone may cause dizziness or sleepiness. Avoid driving if affected. Do not switch between oral and vaginal routes without explicit advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(12, 'pregnancy-excipients-and-follow-up', 'Pregnancy, Excipients and Follow-Up', 'Follow the obstetrician’s instructions in pregnancy. Check excipients for relevant allergy and report persistent bleeding or severe headache.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(13, 1, 'Clindaone™-CT', 'clindaone-ct', 'CLINDAONE-CT combines clindamycin, clotrimazole and tinidazole in a vaginal softgel for selected mixed vaginal infections.', 'CLINDAONE-CT combines clindamycin, clotrimazole and tinidazole in a vaginal softgel for selected mixed vaginal infections. The ingredients act against susceptible bacteria, yeasts and certain protozoa. It may help relieve infection-related discharge and irritation when prescribed after evaluation, and is intended for vaginal insertion rather than swallowing.', 'Clindamycin 100 mg + Clotrimazole 100 mg + Tinidazole 100 mg Vaginal Softgels', '/assets/products/clindaone-ct.jpg', 'published', 13, 'Clindaone™-CT | Onecore Pharma', 'CLINDAONE-CT combines clindamycin, clotrimazole and tinidazole in a vaginal softgel for selected mixed vaginal infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(13, 'Clindamycin 100 mg + Clotrimazole 100 mg + Tinidazole 100 mg Vaginal Softgels', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(13, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: insert 1 vaginal softgel at bedtime for 7 consecutive nights. Persistent or recurrent discharge requires reassessment before another course.\n\nAdministration Advice\nWash hands, lie on the back with knees bent and insert the softgel deeply into the vagina. For vaginal use only; do not swallow. Avoid tampons and vaginal douching during treatment. Check the pack for effects on latex barrier contraception.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(13, 'Mixed Bacterial and Fungal Vaginitis', 'May be prescribed when examination suggests a mixed infection involving susceptible bacteria and Candida species.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(13, 'Selected Infective Vaginal Discharge', 'May be used for syndromic management when the clinician considers this combination appropriate. Suspected sexually transmitted infection requires specific testing and partner management.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(13, '01 — Inhibits Bacterial Protein Synthesis', 'Clindamycin binds bacterial 50S ribosomes and suppresses growth of susceptible organisms.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(13, '02 — Disrupts Fungal Membranes', 'Clotrimazole interferes with ergosterol synthesis needed for fungal cell membrane function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(13, '03 — Damages Susceptible Microbial DNA', 'Tinidazole forms reactive metabolites in susceptible anaerobic organisms and protozoa.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(13, 'pregnancy-and-breastfeeding', 'Pregnancy and Breastfeeding', 'Use only after obstetric advice, especially in early pregnancy. Breastfeeding precautions depend on absorption and the prescribed product.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(13, 'diarrhoea-and-local-irritation', 'Diarrhoea and Local Irritation', 'Stop and seek review for severe diarrhoea or marked vaginal burning. A history of antibiotic-associated colitis requires caution.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(13, 'barrier-contraception-and-alcohol', 'Barrier Contraception and Alcohol', 'Vaginal bases may weaken latex condoms or diaphragms. Follow pack precautions and avoid alcohol during treatment and for 72 hours afterwards.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(14, 1, 'Ferticore™', 'ferticore', 'Ferticore combines myo-inositol, methylfolate and vitamin D3 for nutritional support in women with reproductive or metabolic concerns.', 'Ferticore combines myo-inositol, methylfolate and vitamin D3 for nutritional support in women with reproductive or metabolic concerns. Myo-inositol participates in cellular signalling, while folate and vitamin D support normal physiological functions. It may complement a clinician-directed PCOS care plan, with benefits dependent on individual nutritional and clinical needs.', 'L-methylfolate 500 mcg + Myo-inositol 2000 mg + Vitamin D3 1000 IU 5 g Sachet', '/assets/therapeutic-womens-health.jpg', 'published', 14, 'Ferticore™ | Onecore Pharma', 'Ferticore combines myo-inositol, methylfolate and vitamin D3 for nutritional support in women with reproductive or metabolic concerns.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(14, 'L-methylfolate 500 mcg + Myo-inositol 2000 mg + Vitamin D3 1000 IU 5 g Sachet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(14, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take one 5 g sachet once daily. This supplies 2 g myo-inositol, 500 mcg methylfolate and 1000 IU vitamin D3.\n\nAdministration Advice\nDissolve the entire sachet in a glass of water, stir and drink promptly after a meal. Do not divide the powder by eye.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(14, 'Nutritional Support in PCOS', 'May be considered as an adjunct after discussing the limited evidence for clinical benefits of inositol in PCOS.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(14, 'Preconception Nutrient Intake', 'Helps supplement assessed folate and vitamin D requirements. It does not replace recommended folic acid advice or fertility treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(14, '01 — Provides Myo-Inositol', 'Myo-inositol acts as a precursor in intracellular second-messenger pathways.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(14, '02 — Supports Nutrient-Dependent Processes', 'Methylfolate supports cell division, while vitamin D contributes to calcium handling and normal cellular functions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(14, '03 — Complements Nutritional Care', 'Replacing relevant dietary gaps may support normal metabolic and reproductive physiology. Fertility outcomes are not assured.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(14, 'evidence-and-ongoing-evaluation', 'Evidence and Ongoing Evaluation', 'Do not use as a substitute for ovulation induction, diabetes treatment or investigation of infertility. Review response with the clinician.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(14, 'total-vitamin-intake', 'Total Vitamin Intake', 'Avoid duplication with high-dose folate or vitamin D. Kidney stones, high calcium or kidney disease require advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(14, 'pregnancy-and-glucose-lowering-medicines', 'Pregnancy and Glucose-Lowering Medicines', 'Seek advice in pregnancy or while using diabetes medicines. Mild nausea or loose stools may occur.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(15, 1, 'Glypocal™-CZ', 'glypocal-cz', 'GLYPOCAL-CZ combines calcium citrate with calcitriol and selected minerals for prescribed calcium and bone support.', 'GLYPOCAL-CZ combines calcium citrate with calcitriol and selected minerals for prescribed calcium and bone support. Calcitriol is an active vitamin D medicine that increases calcium absorption. This combination requires individual assessment and monitoring of calcium balance, particularly in people with kidney problems or other disorders affecting mineral metabolism.', 'Calcium citrate 425 mg + calcitriol 0.25 mcg + magnesium oxide 40 mg + zinc 20 mg per softgel capsule', '/assets/products/glypocal-cz.jpg', 'published', 15, 'Glypocal™-CZ | Onecore Pharma', 'GLYPOCAL-CZ combines calcium citrate with calcitriol and selected minerals for prescribed calcium and bone support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(15, 'Calcium citrate 425 mg + calcitriol 0.25 mcg + magnesium oxide 40 mg + zinc 20 mg per softgel capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(15, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 softgel capsule once daily. This provides 0.25 mcg calcitriol per day; adjust continued treatment using serum calcium, phosphate and kidney-function results.\n\nAdministration Advice\nSwallow whole with water after a meal. Keep at least 4 hours apart from levothyroxine; separate interacting antibiotics according to their prescribing instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(15, 'Calcium Deficiency Requiring Active Vitamin D', 'May be prescribed when calcium supplementation and calcitriol are both clinically indicated following assessment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(15, 'Adjunct Bone and Mineral Support', 'Supports selected bone-care regimens when the clinician identifies a need for this combination. It does not replace osteoporosis-specific treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(15, '01 — Provides Calcium', 'Calcium citrate supplies calcium for skeletal and physiological requirements.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(15, '02 — Activates Vitamin D Receptors', 'Calcitriol directly activates vitamin D receptors and increases intestinal calcium and phosphate absorption.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(15, '03 — Supports Mineral Balance', 'Appropriate replacement supports bone mineralisation when calcium levels and the underlying condition are monitored.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(15, 'hypercalcaemia-and-monitoring', 'Hypercalcaemia and Monitoring', 'Avoid in high blood calcium or vitamin D toxicity. Monitor calcium, phosphate and kidney function as advised.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(15, 'kidney-disease-and-interactions', 'Kidney Disease and Interactions', 'Kidney disease requires specialist guidance. Review digoxin, thiazides and magnesium-containing products because adverse effects may increase.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(15, 'duplicate-calcium-or-vitamin-d', 'Duplicate Calcium or Vitamin D', 'Do not add other calcium, calcitriol or high-dose vitamin D without advice. Report thirst, constipation, weakness or frequent urination.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(16, 8, 'Ecofem™-BV', 'ecofem-bv', 'Ecofem-BV combines four Lactobacillus species with fructooligosaccharides to support microbial balance as part of a clinician-directed care plan.', 'Ecofem-BV combines four Lactobacillus species with fructooligosaccharides to support microbial balance as part of a clinician-directed care plan. The organisms are associated with normal intestinal or vaginal microbiota. Probiotic effects depend on the exact strains and route, and this supplement does not replace treatment for an active vaginal infection.', 'Fructo Oligosaccharide (100 mg) + Lactobacillus crispatus (2Billion CFU) + Lactobacillus gasseri (0.6Billion CFU) + Lactobacillus jensenii (0.4Billion CFU) + Lactobacillus rhamnosus (2Billion CFU) Capsule', '/assets/therapeutic-general-medicine.jpg', 'published', 16, 'Ecofem™-BV | Onecore Pharma', 'Ecofem-BV combines four Lactobacillus species with fructooligosaccharides to support microbial balance as part of a clinician-directed care plan.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(16, 'Fructo Oligosaccharide (100 mg) + Lactobacillus crispatus (2Billion CFU) + Lactobacillus gasseri (0.6Billion CFU) + Lactobacillus jensenii (0.4Billion CFU) + Lactobacillus rhamnosus (2Billion CFU) Capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(16, 'Administration and Dosage Guidance', 'Dosing and Schedule\nOne capsule daily for a minimum of one month.\n\n\nAdministration Advice\nFor an oral product, swallow with water and separate antibiotics by at least 2 hours.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(16, 'Microbiota Support During or After Treatment', 'May supplement a clinician-directed regimen when support for microbial balance is considered appropriate after antibiotic use.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(16, 'Routine Intimate-Wellness Support', 'May be considered for nutritional microbiota support. Prevention of recurrent bacterial vaginosis has not been established for this exact formulation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(16, '01 — Delivers Selected Lactobacilli', 'Supplies the listed live organisms when viable counts are maintained during storage.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(16, '02 — Provides a Prebiotic Substrate', 'Fructooligosaccharides can be fermented by selected intestinal bacteria.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(16, '03 — May Support Microbial Balance', 'Benefits depend on strain survival and the host environment. Evidence for another probiotic cannot establish benefit for this blend.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(16, 'immunocompromised-or-seriously-ill-patients', 'Immunocompromised or Seriously Ill Patients', 'Seek specialist advice with severe illness, immunosuppression or an indwelling central venous catheter. Rare invasive probiotic infections can occur.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(16, 'active-vaginal-symptoms', 'Active Vaginal Symptoms', 'Unusual discharge, pelvic pain, bleeding or fever needs examination. Do not delay antimicrobial treatment when indicated.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(16, 'storage-and-tolerance', 'Storage and Tolerance', 'Follow pack storage instructions to preserve viability. Bloating or gas may occur. Check all excipients for allergy.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(17, 1, 'Oneq10™-LM', 'oneq10-lm', 'OneQ10-LM combines coenzyme Q10, levocarnitine, carotenoids, vitamins and minerals for antioxidant and nutritional support.', 'OneQ10-LM combines coenzyme Q10, levocarnitine, carotenoids, vitamins and minerals for antioxidant and nutritional support. These nutrients contribute to normal energy metabolism and cellular protection when intake is inadequate. It may complement a clinician-directed wellness or reproductive care plan, without guaranteeing improved fertility or replacing specific treatment.', 'Astaxanthin 8 mg + Coenzyme Q10 100 mg + Elemental manganese 0.5 mg + Elemental selenium 50 mcg + L-methylfolate 220 mcg + Levocarnitine 300 mg + Lycopene 5000 mcg + Vitamin A 2500 IU + Vitamin B6 2 mg + Vitamin C 75 mg + Vitamin D3 600 IU + Vitamin E 10 mg + Zinc monomethionine 12.5 mg Tablets', '/assets/products/oneq10-lm.jpg', 'published', 17, 'Oneq10™-LM | Onecore Pharma', 'OneQ10-LM combines coenzyme Q10, levocarnitine, carotenoids, vitamins and minerals for antioxidant and nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(17, 'Astaxanthin 8 mg + Coenzyme Q10 100 mg + Elemental manganese 0.5 mg + Elemental selenium 50 mcg + L-methylfolate 220 mcg + Levocarnitine 300 mg + Lycopene 5000 mcg + Vitamin A 2500 IU + Vitamin B6 2 mg + Vitamin C 75 mg + Vitamin D3 600 IU + Vitamin E 10 mg + Zinc monomethionine 12.5 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(17, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(17, 'Inadequate Antioxidant and Micronutrient Intake', 'Supplements selected nutrients when dietary intake is insufficient and the clinician considers this multi-ingredient formula appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(17, 'Adjunct Reproductive Nutritional Support', 'May be considered during fertility evaluation as nutritional support. Improved egg quality, sperm parameters or pregnancy outcomes are not established for this exact blend.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(17, '01 — Supports Cellular Energy Pathways', 'Coenzyme Q10 participates in mitochondrial electron transfer, while carnitine helps transport fatty acids.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(17, '02 — Provides Antioxidant Nutrients', 'Carotenoids, vitamins C and E, selenium and other ingredients support antioxidant systems.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(17, '03 — Helps Meet Nutritional Needs', 'Folate and micronutrients contribute to normal metabolic functions when dietary supply is inadequate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(17, 'vitamin-a-and-duplicate-supplements', 'Vitamin A and Duplicate Supplements', 'Check total vitamin A, selenium, zinc and vitamin D intake, particularly during pregnancy. Do not combine multiple antioxidant products without advice.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(17, 'anticoagulants-and-other-interactions', 'Anticoagulants and Other Interactions', 'Coenzyme Q10 may affect warfarin response. Review anticoagulants, thyroid treatment and mineral-sensitive antibiotics with the clinician.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(17, 'fertility-and-cancer-treatment', 'Fertility and Cancer Treatment', 'Do not replace fertility investigations or treatment. Obtain oncologist approval before antioxidant supplementation during chemotherapy or radiotherapy.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(18, 1, 'Cranly™', 'cranly', 'CRANLY combines cranberry, D-mannose, hibiscus and selected probiotic species for urinary-wellness support.', 'CRANLY combines cranberry, D-mannose, hibiscus and selected probiotic species for urinary-wellness support. Cranberry constituents and D-mannose have been studied for their effects on bacterial adhesion, while probiotics may support microbial balance. Evidence varies by ingredient and formulation, and this product should not replace investigation or antibiotic treatment of infection.', 'Cranberry extract 300 mg + D-mannose 600 mg + hibiscus extract 100 mg + Lacticaseibacillus rhamnosus 0.5 billion CFU + Lactobacillus reuteri 0.5 billion CFU per tablet (source spore wording corrected; strain codes not supplied)', '/assets/products/cranly.jpg', 'published', 18, 'Cranly™ | Onecore Pharma', 'CRANLY combines cranberry, D-mannose, hibiscus and selected probiotic species for urinary-wellness support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(18, 'Cranberry extract 300 mg + D-mannose 600 mg + hibiscus extract 100 mg + Lacticaseibacillus rhamnosus 0.5 billion CFU + Lactobacillus reuteri 0.5 billion CFU per tablet (source spore wording corrected; strain codes not supplied)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(18, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(18, 'Adjunct Urinary-Wellness Support', 'May be considered alongside hydration and clinician-directed measures in people seeking non-antibiotic urinary health support.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(18, 'Nutritional Support During Recurrence Assessment', 'May supplement an individual plan while recurrent urinary symptoms are investigated. Reliable prevention of infection is not established for this combination.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(18, '01 — Provides Cranberry Constituents', 'Certain cranberry proanthocyanidins can reduce bacterial adhesion in experimental systems. The extract’s active-content standardisation matters.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(18, '02 — Supplies D-Mannose and Probiotics', 'D-mannose may bind bacterial adhesins, while selected probiotic strains may influence microbial balance.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(18, '03 — Offers Adjunctive Support', 'These proposed actions do not establish infection prevention for this formulation. A large trial found no preventive benefit from daily D-mannose.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(18, 'symptoms-requiring-treatment', 'Symptoms Requiring Treatment', 'Fever, flank pain, vomiting, pregnancy-related urinary symptoms or blood in urine need prompt medical assessment. Do not delay antibiotics.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(18, 'evidence-and-probiotic-identity', 'Evidence and Probiotic Identity', 'Benefits are formulation-specific. Confirm strain identities and viable counts. Probiotic species listed here do not normally form spores.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(18, 'kidney-problems-and-interactions', 'Kidney Problems and Interactions', 'Seek advice with kidney stones, kidney disease or warfarin use. Gastrointestinal upset may occur.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(19, 1, 'Womento™', 'womento', 'Womento combines pea and rice ingredients with myo-inositol, carnitine, alpha-lipoic acid, omega-3 fatty acids and selected vitamins.', 'Womento combines pea and rice ingredients with myo-inositol, carnitine, alpha-lipoic acid, omega-3 fatty acids and selected vitamins. It provides supplemental nutrition when dietary intake is inadequate. The powder may support an individual nutritional plan, but its protein content and serving size must be assessed from the finished product label.', 'Yellow pea powder 9.6 g + Oryza sativa-rice 3.225 g + Myo-Inositol 600 mg + L-Carnitine 120 mg + Alpha lipoic acid 60 mg + Omega-3 Fatty Acids 24 mg + Vitamin C 12 mg + Vitamin E 6.6 IU + Vitamin B3 4.2 mg + Vitamin B5 18 mg + Vitamin B6 0.78 mg + Vitamin B2 0.78 mg + Vitamin B1 0.33 mg + Vitamin A 180 mcg + Vitamin B9 52.95 mcg Powder', '/assets/products/womento.jpg', 'published', 19, 'Womento™ | Onecore Pharma', 'Womento combines pea and rice ingredients with myo-inositol, carnitine, alpha-lipoic acid, omega-3 fatty acids and selected vitamins.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(19, 'Yellow pea powder 9.6 g + Oryza sativa-rice 3.225 g + Myo-Inositol 600 mg + L-Carnitine 120 mg + Alpha lipoic acid 60 mg + Omega-3 Fatty Acids 24 mg + Vitamin C 12 mg + Vitamin E 6.6 IU + Vitamin B3 4.2 mg + Vitamin B5 18 mg + Vitamin B6 0.78 mg + Vitamin B2 0.78 mg + Vitamin B1 0.33 mg + Vitamin A 180 mcg + Vitamin B9 52.95 mcg Powder', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(19, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this powder in the dose and duration as advised by your doctor.\n\nAdministration Advice\nMix a measured serving in the labelled quantity of water or another suitable beverage. Consume promptly and use alongside regular meals.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(19, 'Inadequate Dietary Intake', 'May supplement a balanced diet when the clinician identifies a need for additional plant-based nutrition and selected micronutrients.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(19, 'Nutritional Support in Metabolic Care', 'May complement dietary planning for women with metabolic or reproductive concerns. It is not a treatment for PCOS, diabetes or infertility.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(19, '01 — Provides Dietary Substrates', 'Pea and rice ingredients supply nutrients, with their actual protein contribution determined by the finished formulation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(19, '02 — Supports Nutrient Metabolism', 'B vitamins and other micronutrients participate in normal energy and cellular pathways.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(19, '03 — Complements Dietary Intake', 'Myo-inositol and other components provide additional nutritional support within a balanced dietary plan.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(19, 'allergy-and-protein-source', 'Allergy and Protein Source', 'Check pea, rice and other ingredient sensitivities. The source ingredient weights are not equivalent to grams of protein.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(19, 'diabetes-and-other-medicines', 'Diabetes and Other Medicines', 'Review carbohydrate content and medicines for diabetes or thyroid disease. Alpha-lipoic acid may lower blood glucose.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(19, 'kidney-disease-and-pregnancy', 'Kidney Disease and Pregnancy', 'Use with individual advice in kidney disease, pregnancy or breastfeeding. Do not use as the sole source of nutrition.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(20, 1, 'Traxpause™ MF', 'traxpause-mf', 'Traxpause MF combines tranexamic acid with mefenamic acid for prescribed management of heavy menstrual bleeding with period pain.', 'Traxpause MF combines tranexamic acid with mefenamic acid for prescribed management of heavy menstrual bleeding with period pain. Tranexamic acid helps reduce excessive clot breakdown, while mefenamic acid reduces prostaglandin-related pain and inflammation. It is used during the bleeding episode after assessment of the underlying cause.', 'Tranexamic Acid 500 mg + Mefenamic Acid 250 mg Tablets', '/assets/products/traxpause-mf.jpg', 'published', 20, 'Traxpause™ MF | Onecore Pharma', 'Traxpause MF combines tranexamic acid with mefenamic acid for prescribed management of heavy menstrual bleeding with period pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(20, 'Tranexamic Acid 500 mg + Mefenamic Acid 250 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(20, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with heavy menstrual bleeding and cramps: take 1 tablet three times daily during heavy-flow days, for no more than 5 days per cycle. Start when menstrual bleeding begins. Kidney impairment requires a lower or alternative regimen.\n\nAdministration Advice\nSwallow whole with water after food, spacing doses through the day. Do not combine with other NSAID painkillers. Investigate persistent or irregular bleeding before repeating treatment.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(20, 'Heavy Menstrual Bleeding', 'May help reduce excessive menstrual blood loss when this combination is prescribed after evaluation of the bleeding pattern.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(20, 'Painful Periods with Heavy Flow', 'Provides pain relief during heavy menstrual bleeding through the anti-inflammatory effect of mefenamic acid.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(20, '01 — Reduces Clot Breakdown', 'Tranexamic acid blocks plasminogen binding and limits fibrin breakdown.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(20, '02 — Reduces Prostaglandin Formation', 'Mefenamic acid inhibits cyclo-oxygenase enzymes involved in pain and inflammation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(20, '03 — Controls Bleeding and Pain', 'The combined effects reduce menstrual blood loss and associated cramps during treatment.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(20, 'blood-clots-and-hormonal-contraception', 'Blood Clots and Hormonal Contraception', 'Avoid with active or previous thrombosis unless a specialist specifically advises otherwise. Combined hormonal contraception can increase clot risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(20, 'stomach-bleeding-and-kidney-disease', 'Stomach Bleeding and Kidney Disease', 'Mefenamic acid can cause ulcer bleeding and kidney injury. Avoid in active ulcers, severe kidney impairment or NSAID-sensitive asthma.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(20, 'abnormal-bleeding-and-pregnancy', 'Abnormal Bleeding and Pregnancy', 'Irregular unexplained bleeding needs assessment. Do not use for bleeding in pregnancy without urgent medical evaluation.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(20, 'interactions-and-urgent-symptoms', 'Interactions and Urgent Symptoms', 'Do not combine with other NSAIDs. Seek urgent care for chest pain, breathlessness, leg swelling, black stools or visual disturbance.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(21, 1, 'Folatis™-CA', 'folatis-ca', 'FOLATIS-CA combines calcium and vitamin D3 with methylcobalamin, methylfolate and active vitamin B6.', 'FOLATIS-CA combines calcium and vitamin D3 with methylcobalamin, methylfolate and active vitamin B6. It supports assessed bone and micronutrient requirements when dietary intake is inadequate. Calcium contributes to bone mineralisation, while the B vitamins participate in normal blood formation, nerve function and homocysteine metabolism.', 'Calcium Carbonate (1250 mg) + Vitamin D3 (2000 IU) + Methylcobalamin (1500 mcg) + L-Methyl Folate Calcium (1 mg) + Pyridoxal-5-phosphate (20 mg) Tablet', '/assets/products/folatis-ca.jpg', 'published', 21, 'Folatis™-CA | Onecore Pharma', 'FOLATIS-CA combines calcium and vitamin D3 with methylcobalamin, methylfolate and active vitamin B6.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(21, 'Calcium Carbonate (1250 mg) + Vitamin D3 (2000 IU) + Methylcobalamin (1500 mcg) + L-Methyl Folate Calcium (1 mg) + Pyridoxal-5-phosphate (20 mg) Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(21, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(21, 'Combined Calcium and Vitamin Insufficiency', 'Supplements calcium, vitamin D and selected B vitamins when an individual assessment identifies overlapping dietary gaps.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(21, 'Adjunct Bone and Nerve Nutritional Support', 'Supports normal bone and nerve physiology when relevant nutrients are insufficient. It does not replace treatment for osteoporosis or neuropathic pain.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(21, '01 — Provides Calcium and Vitamin D', 'Calcium supplies skeletal mineral while vitamin D3 supports intestinal calcium absorption.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(21, '02 — Supplies Active B Vitamins', 'Methylcobalamin, methylfolate and pyridoxal phosphate participate in normal cellular and blood-forming pathways.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(21, '03 — Supports Deficiency Correction', 'Replacing identified nutrient deficits supports normal bone maintenance and nerve function.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(21, 'high-calcium-and-kidney-disease', 'High Calcium and Kidney Disease', 'Avoid with hypercalcaemia. Kidney stones or kidney impairment require individual advice and monitoring.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(21, 'vitamin-b6-and-duplicate-products', 'Vitamin B6 and Duplicate Products', 'The 20 mg vitamin B6 content warrants review of long-term total intake. Stop and seek advice for new tingling or numbness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(21, 'medicine-interactions', 'Medicine Interactions', 'Separate from levothyroxine by at least 4 hours. Review iron, antibiotics, antiepileptics and other supplements with the clinician.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(22, 1, 'Folatis™-ET', 'folatis-et', 'FOLATIS-ET combines evening primrose oil, tocotrienols, methylfolate and methylcobalamin for targeted nutritional support.', 'FOLATIS-ET combines evening primrose oil, tocotrienols, methylfolate and methylcobalamin for targeted nutritional support. Evening primrose oil supplies fatty acids, while the vitamins support normal cellular and blood-forming processes. It may complement an individual dietary plan, but benefits for hormonal symptoms or breast discomfort are not established for this formulation.', 'Evening Primrose Oil 1000 mg & Tocotrienol 30 mg , L-Methyl Folate 400 mcg & Methylcobalamin1500 mcg Softgelatin Capsules', '/assets/products/folatis-et.jpg', 'published', 22, 'Folatis™-ET | Onecore Pharma', 'FOLATIS-ET combines evening primrose oil, tocotrienols, methylfolate and methylcobalamin for targeted nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(22, 'Evening Primrose Oil 1000 mg & Tocotrienol 30 mg , L-Methyl Folate 400 mcg & Methylcobalamin1500 mcg Softgelatin Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(22, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 softgel capsule once daily.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(22, 'Dietary Fatty Acid Support', 'Provides evening primrose oil when a clinician considers supplementary fatty acid intake appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(22, 'Folate and Vitamin B12 Intake', 'Helps meet assessed folate and vitamin B12 needs when dietary intake is inadequate.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(22, '01 — Supplies Fatty Acids', 'Evening primrose oil provides linoleic acid and variable amounts of gamma-linolenic acid.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(22, '02 — Provides Antioxidant Vitamin E Forms', 'Tocotrienols contribute antioxidant activity within biological membranes.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(22, '03 — Supports B-Vitamin Pathways', 'Methylfolate and methylcobalamin support normal DNA synthesis and homocysteine metabolism.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(22, 'bleeding-and-surgery', 'Bleeding and Surgery', 'Review anticoagulants, antiplatelets and planned surgery before use. Stop according to the treating clinician’s instructions.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(22, 'pregnancy-seizures-and-allergy', 'Pregnancy, Seizures and Allergy', 'Seek advice during pregnancy or breastfeeding and with a seizure disorder. Check oil-source and capsule excipients for allergy.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(22, 'evidence-and-vitamin-intake', 'Evidence and Vitamin Intake', 'Do not replace investigation of breast symptoms or menstrual disorders. Avoid duplicate high-dose folate products without advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(23, 1, 'Foscore™', 'foscore', 'Foscore contains fosfomycin, an antibiotic supplied as granules for oral solution.', 'Foscore contains fosfomycin, an antibiotic supplied as granules for oral solution. It is prescribed as a single-dose treatment for selected uncomplicated bladder infections in women caused by susceptible bacteria. The sachet must be dissolved before use, and it is not suitable for treating kidney infection or unexplained recurrent urinary symptoms.', 'Fosfomycin trometamol equivalent to fosfomycin 3 g per 8 g sachet of granules for oral solution (salt form inferred)', '/assets/therapeutic-womens-health.jpg', 'published', 23, 'Foscore™ | Onecore Pharma', 'Foscore contains fosfomycin, an antibiotic supplied as granules for oral solution.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(23, 'Fosfomycin trometamol equivalent to fosfomycin 3 g per 8 g sachet of granules for oral solution (salt form inferred)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(23, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdult women with acute uncomplicated cystitis: take 1 sachet containing 3 g fosfomycin as a single dose. Do not take a daily course or repeat for the same episode without reassessment.\n\nAdministration Advice\nDissolve the entire sachet in a glass of water and drink immediately. Take on an empty stomach, 2–3 hours before or after food, preferably at bedtime after emptying the bladder. Do not swallow the dry granules.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(23, 'Acute Uncomplicated Cystitis', 'Treats selected lower urinary tract infections in women when the likely organism and local antibiotic guidance support fosfomycin use.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(23, 'Susceptible Resistant-Organism Cystitis', 'May be selected after culture confirms susceptibility, including some resistant organisms, when the infection remains an uncomplicated bladder infection.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(23, '01 — Enters Susceptible Bacteria', 'Fosfomycin is taken into susceptible bacterial cells through specific transport systems.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(23, '02 — Blocks Cell Wall Synthesis', 'It inhibits MurA, an enzyme involved in an early step of peptidoglycan production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(23, '03 — Kills Urinary Pathogens', 'Disrupted cell wall formation causes bacterial death at effective urinary concentrations.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(23, 'kidney-infection-and-persistent-symptoms', 'Kidney Infection and Persistent Symptoms', 'Fever, flank pain or vomiting may indicate kidney infection and require prompt assessment. Seek review if symptoms persist after treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(23, 'allergy-and-severe-diarrhoea', 'Allergy and Severe Diarrhoea', 'Avoid in known fosfomycin allergy. Persistent or bloody diarrhoea after an antibiotic needs medical review.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(23, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Severe kidney impairment requires individual advice. Metoclopramide may reduce fosfomycin exposure and should be reviewed.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(24, 8, 'Stomazo™-D', 'stomazo-d', 'Stomazo-D combines esomeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.', 'Stomazo-D combines esomeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility. The proton pump inhibitor reduces stomach acid, while domperidone promotes gastrointestinal movement. Use requires review of heart rhythm risks, other medicines and the shortest appropriate treatment duration.', 'Esomeprazole 40 mg + domperidone 30 mg sustained release per capsule', '/assets/products/stomazo-d.jpg', 'published', 24, 'Stomazo™-D | Onecore Pharma', 'Stomazo-D combines esomeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(24, 'Esomeprazole 40 mg + domperidone 30 mg sustained release per capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(24, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily before breakfast. This supplies the full 30 mg daily domperidone dose. Use for the shortest necessary period and review within 7 days.\n\nAdministration Advice\nSwallow the capsule whole with water 30 minutes before breakfast. Do not crush, chew or combine with another domperidone-containing medicine.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(24, 'Reflux with Regurgitation', 'May be prescribed when acid reflux is accompanied by troublesome regurgitation and the clinician considers a prokinetic appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(24, 'Reflux-Associated Nausea', 'May help selected adults with nausea accompanying reflux when both components are justified after assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(24, '01 — Suppresses Gastric Acid', 'Esomeprazole inhibits the gastric proton pump and reduces acid secretion.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(24, '02 — Promotes Upper Gut Motility', 'Domperidone blocks peripheral dopamine D2 receptors and supports coordinated gastric movement.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(24, '03 — Reduces Associated Symptoms', 'Reduced acidity and improved motility may relieve selected reflux-associated symptoms when the combination is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(24, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(24, 'heart-rhythm-and-interactions', 'Heart Rhythm and Interactions', 'Domperidone may cause serious rhythm disturbances. Avoid with QT prolongation, significant electrolyte disturbance, potent CYP3A4 inhibitors or other QT-prolonging medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(24, 'dose-duration-and-liver-disease', 'Dose, Duration and Liver Disease', 'Do not exceed 30 mg domperidone daily. Use for the shortest period, usually no longer than 7 days without review. Avoid in moderate or severe liver impairment.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(24, 'gastrointestinal-obstruction', 'Gastrointestinal Obstruction', 'Do not use if there is gastrointestinal bleeding, mechanical obstruction or perforation. Persistent nausea requires investigation.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(25, 8, 'Stomazo™-40', 'stomazo-40', 'Stomazo-40 contains esomeprazole, a proton pump inhibitor that reduces stomach acid production.', 'Stomazo-40 contains esomeprazole, a proton pump inhibitor that reduces stomach acid production. It helps manage gastro-oesophageal reflux and selected acid-related ulcers by reducing irritation and allowing damaged lining to heal. The dose, formulation and treatment duration depend on the diagnosed condition and the prescriber’s assessment.', 'Esomeprazole 40 mg Tablets', '/assets/products/stomazo-40.jpg', 'published', 25, 'Stomazo™-40 | Onecore Pharma', 'Stomazo-40 contains esomeprazole, a proton pump inhibitor that reduces stomach acid production.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(25, 'Esomeprazole 40 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(25, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with erosive reflux disease: take 1 tablet (40 mg) once daily for 4 weeks; continue for a further 4 weeks only if healing remains incomplete after review.\n\nAdministration Advice\nSwallow the tablet whole with water at least 1 hour before breakfast. Do not crush or chew the gastro-resistant tablet.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(25, 'Gastro-Oesophageal Reflux Disease', 'Reduces acid-related heartburn and regurgitation and helps heal reflux-related oesophageal inflammation when indicated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(25, 'Peptic Ulcer Disease', 'May be prescribed for gastric or duodenal ulcers, including within an appropriate Helicobacter pylori eradication regimen when required.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(25, '01 — Reaches Acid-Producing Cells', 'Esomeprazole is absorbed and activated in the acidic environment of gastric parietal cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(25, '02 — Blocks the Proton Pump', 'It inhibits the H+/K+-ATPase enzyme responsible for the final step of acid secretion.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(25, '03 — Reduces Acid Exposure', 'Lower acidity helps relieve reflux symptoms and allows acid-related mucosal injury to heal.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(25, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(25, 'long-term-treatment', 'Long-Term Treatment', 'Use the lowest effective dose for the necessary duration. Prolonged treatment may require review of magnesium, vitamin B12, fracture risk and persistent diarrhoea.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(25, 'medicine-interactions', 'Medicine Interactions', 'Tell the clinician about all medicines, particularly antiretrovirals, high-dose methotrexate and anticoagulants. Some combinations require avoidance or monitoring.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(26, 8, 'Panflat™-40', 'panflat-40', 'Panflat-40 contains pantoprazole, a proton pump inhibitor that reduces stomach acid production.', 'Panflat-40 contains pantoprazole, a proton pump inhibitor that reduces stomach acid production. It helps manage gastro-oesophageal reflux and selected acid-related ulcers by reducing irritation and allowing damaged lining to heal. The dose, formulation and treatment duration depend on the diagnosed condition and the prescriber’s assessment.', 'Pantoprazole 40 mg per gastro-resistant tablet', '/assets/products/panflat-40.jpg', 'published', 26, 'Panflat™-40 | Onecore Pharma', 'Panflat-40 contains pantoprazole, a proton pump inhibitor that reduces stomach acid production.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(26, 'Pantoprazole 40 mg per gastro-resistant tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(26, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with reflux oesophagitis: take 1 tablet (40 mg) once daily for 4 weeks. Extend to 8 weeks only after review if healing is incomplete.\n\nAdministration Advice\nSwallow the gastro-resistant tablet whole with water 1 hour before breakfast. Do not crush, split or chew.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(26, 'Gastro-Oesophageal Reflux Disease', 'Reduces acid-related heartburn and regurgitation and helps heal reflux-related oesophageal inflammation when indicated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(26, 'Peptic Ulcer Disease', 'May be prescribed for gastric or duodenal ulcers, including within an appropriate Helicobacter pylori eradication regimen when required.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(26, '01 — Reaches Acid-Producing Cells', 'Pantoprazole is absorbed and activated in the acidic environment of gastric parietal cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(26, '02 — Blocks the Proton Pump', 'It inhibits the H+/K+-ATPase enzyme responsible for the final step of acid secretion.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(26, '03 — Reduces Acid Exposure', 'Lower acidity helps relieve reflux symptoms and allows acid-related mucosal injury to heal.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(26, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(26, 'long-term-treatment', 'Long-Term Treatment', 'Use the lowest effective dose for the necessary duration. Prolonged treatment may require review of magnesium, vitamin B12, fracture risk and persistent diarrhoea.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(26, 'medicine-interactions', 'Medicine Interactions', 'Tell the clinician about all medicines, particularly antiretrovirals, high-dose methotrexate and anticoagulants. Some combinations require avoidance or monitoring.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(27, 8, 'Bilariv™-M', 'bilariv-m', 'Bilariv-M combines bilastine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity.', 'Bilariv-M combines bilastine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity. It helps reduce sneezing, runny nose and associated irritation. The combination should be used after assessment of alternatives, particularly because montelukast can cause serious mood, sleep and behavioural effects.', 'Bilastine 20 mg + Montelukast 10 mg Tablets', '/assets/products/bilariv-m.jpg', 'published', 27, 'Bilariv™-M | Onecore Pharma', 'Bilariv-M combines bilastine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(27, 'Bilastine 20 mg + Montelukast 10 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(27, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily in the evening. Each dose supplies bilastine 20 mg and montelukast 10 mg.\n\nAdministration Advice\nSwallow with water at least 1 hour before or 2 hours after food or fruit juice. Take at the same time daily. This is maintenance treatment and does not relieve an acute asthma attack.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(27, 'Allergic Rhinitis Inadequately Controlled with Alternatives', 'May be prescribed when appropriate alternative allergy treatments are insufficient or not tolerated and both ingredients are justified.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(27, 'Associated Allergic Rhinoconjunctivitis Symptoms', 'May relieve itchy, watery eyes and nasal symptoms accompanying allergic rhinitis within the prescribed treatment plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(27, '01 — Blocks Histamine Effects', 'Bilastine blocks peripheral H1 receptors to reduce histamine-related allergy symptoms.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(27, '02 — Blocks Leukotriene Signalling', 'Montelukast blocks cysteinyl leukotriene receptors involved in allergic inflammation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(27, '03 — Reduces Selected Allergy Symptoms', 'The two pathways can reduce nasal and associated eye symptoms when combination treatment is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(27, 'mood-sleep-and-behaviour-changes', 'Mood, Sleep and Behaviour Changes', 'Montelukast can cause serious neuropsychiatric effects, including suicidal thoughts. Stop treatment and contact the prescriber promptly for new mood, sleep or behavioural changes.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(27, 'appropriate-allergy-use', 'Appropriate Allergy Use', 'Reserve montelukast-containing treatment for allergic rhinitis when alternatives are ineffective or unsuitable. It does not treat an acute asthma attack.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(27, 'drowsiness-and-individual-assessment', 'Drowsiness and Individual Assessment', 'Avoid driving if affected. Review pregnancy, breastfeeding, organ impairment and all other medicines with the clinician.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(28, 8, 'Panflat™-DSR', 'panflat-dsr', 'Panflat-DSR combines pantoprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.', 'Panflat-DSR combines pantoprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility. The proton pump inhibitor reduces stomach acid, while domperidone promotes gastrointestinal movement. Use requires review of heart rhythm risks, other medicines and the shortest appropriate treatment duration.', 'Pantoprazole 40 mg + Domperidone 30 mg SR Capsules', '/assets/products/panflat-dsr.jpg', 'published', 28, 'Panflat™-DSR | Onecore Pharma', 'Panflat-DSR combines pantoprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(28, 'Pantoprazole 40 mg + Domperidone 30 mg SR Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(28, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily before breakfast. This supplies the full 30 mg daily domperidone dose. Use for the shortest necessary period and review within 7 days.\n\nAdministration Advice\nSwallow the capsule whole with water 30 minutes before breakfast. Do not crush, chew or combine with another domperidone-containing medicine.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(28, 'Reflux with Regurgitation', 'May be prescribed when acid reflux is accompanied by troublesome regurgitation and the clinician considers a prokinetic appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(28, 'Reflux-Associated Nausea', 'May help selected adults with nausea accompanying reflux when both components are justified after assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(28, '01 — Suppresses Gastric Acid', 'Pantoprazole inhibits the gastric proton pump and reduces acid secretion.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(28, '02 — Promotes Upper Gut Motility', 'Domperidone blocks peripheral dopamine D2 receptors and supports coordinated gastric movement.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(28, '03 — Reduces Associated Symptoms', 'Reduced acidity and improved motility may relieve selected reflux-associated symptoms when the combination is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(28, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(28, 'heart-rhythm-and-interactions', 'Heart Rhythm and Interactions', 'Domperidone may cause serious rhythm disturbances. Avoid with QT prolongation, significant electrolyte disturbance, potent CYP3A4 inhibitors or other QT-prolonging medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(28, 'dose-duration-and-liver-disease', 'Dose, Duration and Liver Disease', 'Do not exceed 30 mg domperidone daily. Use for the shortest period, usually no longer than 7 days without review. Avoid in moderate or severe liver impairment.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(28, 'gastrointestinal-obstruction', 'Gastrointestinal Obstruction', 'Do not use if there is gastrointestinal bleeding, mechanical obstruction or perforation. Persistent nausea requires investigation.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(29, 8, 'Doxicent™ CV', 'doxicent-cv', 'Doxicent CV contains cefpodoxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections.', 'Doxicent CV contains cefpodoxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections. Cefpodoxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefpodoxime proxetil equivalent to cefpodoxime 200 mg + clavulanic acid 125 mg (as potassium clavulanate) per tablet', '/assets/products/doxicent-cv.jpg', 'published', 29, 'Doxicent™ CV | Onecore Pharma', 'Doxicent CV contains cefpodoxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(29, 'Cefpodoxime proxetil equivalent to cefpodoxime 200 mg + clavulanic acid 125 mg (as potassium clavulanate) per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(29, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet (cefpodoxime 200 mg/clavulanic acid 125 mg) every 12 hours for the prescribed infection-specific course. Reduce the dosing frequency in significant kidney impairment.\n\nAdministration Advice\nSwallow with water immediately after food. Take doses about 12 hours apart and complete the prescribed course. Do not replace this combination with cefpodoxime alone without a new prescription.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, '01 — Targets Bacterial Cell Walls', 'Cefpodoxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, '02 — Protects Against Selected Beta-Lactamases', 'Clavulanic acid inhibits some beta-lactamase enzymes that would otherwise inactivate the antibiotic.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(29, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(29, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(29, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(29, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(29, 'liver-problems', 'Liver Problems', 'Report jaundice, dark urine or persistent upper abdominal pain. Previous antibiotic-associated liver injury requires review before treatment.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(30, 8, 'Doxicent™-100', 'doxicent-100', 'Doxicent-100 contains cefpodoxime for treatment of selected susceptible bacterial infections.', 'Doxicent-100 contains cefpodoxime for treatment of selected susceptible bacterial infections. Cefpodoxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefpodoxime proxetil equivalent to cefpodoxime 100 mg per tablet', '/assets/products/doxicent-100.jpg', 'published', 30, 'Doxicent™-100 | Onecore Pharma', 'Doxicent-100 contains cefpodoxime for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(30, 'Cefpodoxime proxetil equivalent to cefpodoxime 100 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(30, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older: take 1 tablet (100 mg) every 12 hours. Treat susceptible pharyngitis/tonsillitis for 5–10 days or uncomplicated urinary infection for 7 days. Severe kidney impairment (creatinine clearance below 30 mL/min): extend the interval to every 24 hours.\n\nAdministration Advice\nSwallow with water with a meal to improve absorption. Space doses evenly and complete the prescribed course.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, '01 — Targets Bacterial Cell Walls', 'Cefpodoxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, '02 — Interrupts Wall Cross-Linking', 'Inhibition of peptidoglycan cross-linking weakens the bacterial cell wall.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(30, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(30, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(30, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(30, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(31, 8, 'Doxicent™-200', 'doxicent-200', 'Doxicent-200 contains cefpodoxime for treatment of selected susceptible bacterial infections.', 'Doxicent-200 contains cefpodoxime for treatment of selected susceptible bacterial infections. Cefpodoxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefpodoxime proxetil equivalent to cefpodoxime 200 mg per tablet', '/assets/products/doxicent-200.jpg', 'published', 31, 'Doxicent™-200 | Onecore Pharma', 'Doxicent-200 contains cefpodoxime for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(31, 'Cefpodoxime proxetil equivalent to cefpodoxime 200 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(31, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older: take 1 tablet (200 mg) every 12 hours. Treat acute bacterial sinusitis for 10 days, exacerbation of chronic bronchitis for 10 days or community-acquired pneumonia for 14 days when cefpodoxime is selected. Severe kidney impairment (creatinine clearance below 30 mL/min): extend to every 24 hours.\n\nAdministration Advice\nSwallow with water with a meal to improve absorption. Space doses evenly and complete the prescribed course.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, '01 — Targets Bacterial Cell Walls', 'Cefpodoxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, '02 — Interrupts Wall Cross-Linking', 'Inhibition of peptidoglycan cross-linking weakens the bacterial cell wall.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(31, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(31, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(31, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(31, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(32, 8, 'Frecox™', 'frecox', 'Frecox combines aceclofenac and paracetamol for short-term relief of selected painful musculoskeletal conditions.', 'Frecox combines aceclofenac and paracetamol for short-term relief of selected painful musculoskeletal conditions. Aceclofenac reduces inflammation, while paracetamol supports pain relief. Treatment may make movement more comfortable during recovery. The combination should be used at the lowest effective dose for the shortest prescribed duration.', 'Aceclofenac 100 mg + Paracetamol 325 mg Tablets', '/assets/products/frecox.jpg', 'published', 32, 'Frecox™ | Onecore Pharma', 'Frecox combines aceclofenac and paracetamol for short-term relief of selected painful musculoskeletal conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(32, 'Aceclofenac 100 mg + Paracetamol 325 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(32, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet twice daily for the shortest necessary course. Do not exceed 2 tablets in 24 hours; this supplies the maximum 200 mg daily aceclofenac dose.\n\nAdministration Advice\nSwallow whole with water immediately after breakfast and the evening meal. Do not crush an enteric-coated enzyme component. Avoid other NSAIDs and review other paracetamol-containing medicines before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(32, 'Musculoskeletal Pain and Inflammation', 'May relieve pain associated with acute strains, sprains or other assessed musculoskeletal conditions.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(32, 'Arthritic Pain Flares', 'May be prescribed briefly for painful inflammatory flares, alongside the underlying condition’s treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(32, '01 — Reduces Prostaglandin Production', 'Aceclofenac inhibits cyclo-oxygenase activity and reduces pain-related inflammatory mediators.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(32, '02 — Provides Additional Pain Relief', 'Paracetamol acts mainly within central pain pathways to support analgesia.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(32, '03 — Improves Pain-Limited Function', 'Reduced pain and inflammation can make movement more comfortable during a short prescribed course.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(32, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(32, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(32, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(32, 'additional-ingredient-precautions', 'Additional Ingredient Precautions', 'Avoid duplicate paracetamol and excessive alcohol because of liver toxicity. Seek advice before use if liver disease is present.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(33, 8, 'Frecox™-SP', 'frecox-sp', 'Frecox-SP combines aceclofenac and paracetamol with serratiopeptidase for short-term relief of selected painful musculoskeletal conditions.', 'Frecox-SP combines aceclofenac and paracetamol with serratiopeptidase for short-term relief of selected painful musculoskeletal conditions. Aceclofenac reduces inflammation, while paracetamol supports pain relief. Treatment may make movement more comfortable during recovery. The combination should be used at the lowest effective dose for the shortest prescribed duration.', 'Aceclofenac 100 mg + Paracetamol 325 mg + Serratiopeptidase 15 mg Tablets', '/assets/products/frecox-sp.jpg', 'published', 33, 'Frecox™-SP | Onecore Pharma', 'Frecox-SP combines aceclofenac and paracetamol with serratiopeptidase for short-term relief of selected painful musculoskeletal conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(33, 'Aceclofenac 100 mg + Paracetamol 325 mg + Serratiopeptidase 15 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(33, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet twice daily for the shortest necessary course. Do not exceed 2 tablets in 24 hours; this supplies the maximum 200 mg daily aceclofenac dose.\n\nAdministration Advice\nSwallow whole with water immediately after breakfast and the evening meal. Do not crush an enteric-coated enzyme component. Avoid other NSAIDs and review other paracetamol-containing medicines before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(33, 'Musculoskeletal Pain and Inflammation', 'May relieve pain associated with acute strains, sprains or other assessed musculoskeletal conditions.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(33, 'Arthritic Pain Flares', 'May be prescribed briefly for painful inflammatory flares, alongside the underlying condition’s treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(33, '01 — Reduces Prostaglandin Production', 'Aceclofenac inhibits cyclo-oxygenase activity and reduces pain-related inflammatory mediators.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(33, '02 — Provides Additional Pain Relief', 'Paracetamol acts mainly within central pain pathways to support analgesia.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(33, '03 — Provides Adjunct Enzyme Activity', 'Serratiopeptidase is a proteolytic enzyme. Evidence for additional clinical reduction of swelling is limited.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(33, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(33, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(33, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(33, 'additional-ingredient-precautions', 'Additional Ingredient Precautions', 'Avoid duplicate paracetamol and excessive alcohol because of liver toxicity. Serratiopeptidase may add bleeding risk with anticoagulants.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(34, 8, 'Cefvanta™-250', 'cefvanta-250', 'Cefvanta-250 contains cefuroxime for treatment of selected susceptible bacterial infections.', 'Cefvanta-250 contains cefuroxime for treatment of selected susceptible bacterial infections. Cefuroxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefuroxime axetil equivalent to cefuroxime 250 mg per tablet', '/assets/products/cefvanta-250.jpg', 'published', 34, 'Cefvanta™-250 | Onecore Pharma', 'Cefvanta-250 contains cefuroxime for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(34, 'Cefuroxime axetil equivalent to cefuroxime 250 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(34, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 13 years or older: take 1 tablet (250 mg) every 12 hours. Pharyngitis/tonsillitis: 10 days; susceptible urinary infection: 7–10 days; acute bacterial sinusitis: 10 days. Kidney impairment requires an interval adjustment.\n\nAdministration Advice\nSwallow whole with water immediately after food to improve absorption. Complete the prescribed course; do not substitute the oral suspension milligram for milligram.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, '01 — Targets Bacterial Cell Walls', 'Cefuroxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, '02 — Interrupts Wall Cross-Linking', 'Inhibition of peptidoglycan cross-linking weakens the bacterial cell wall.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(34, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(34, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(34, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(34, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(35, 8, 'Cefvanta™-500', 'cefvanta-500', 'Cefvanta-500 contains cefuroxime for treatment of selected susceptible bacterial infections.', 'Cefvanta-500 contains cefuroxime for treatment of selected susceptible bacterial infections. Cefuroxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefuroxime axetil equivalent to cefuroxime 500 mg per tablet', '/assets/products/cefvanta-500.jpg', 'published', 35, 'Cefvanta™-500 | Onecore Pharma', 'Cefvanta-500 contains cefuroxime for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(35, 'Cefuroxime axetil equivalent to cefuroxime 500 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(35, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 13 years or older: take 1 tablet (500 mg) every 12 hours when this strength is selected for a susceptible respiratory infection. Treat for the prescribed course, generally 10 days for an acute bacterial exacerbation of chronic bronchitis. Kidney impairment requires an interval adjustment.\n\nAdministration Advice\nSwallow whole with water immediately after food to improve absorption. Do not crush; use an appropriate alternative formulation for patients unable to swallow tablets.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, '01 — Targets Bacterial Cell Walls', 'Cefuroxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, '02 — Interrupts Wall Cross-Linking', 'Inhibition of peptidoglycan cross-linking weakens the bacterial cell wall.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(35, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(35, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(35, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(35, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(36, 8, 'Cefvanta™-CV', 'cefvanta-cv', 'Cefvanta-CV contains cefuroxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections.', 'Cefvanta-CV contains cefuroxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections. Cefuroxime interferes with bacterial cell wall formation. The medicine should be used only when prescribed for an appropriate bacterial infection, with the dose and course tailored to the infection and kidney function.', 'Cefuroxime axetil equivalent to cefuroxime 500 mg + clavulanic acid 125 mg (as potassium clavulanate) per tablet', '/assets/products/cefvanta-cv.jpg', 'published', 36, 'Cefvanta™-CV | Onecore Pharma', 'Cefvanta-CV contains cefuroxime with clavulanic acid, a beta-lactamase inhibitor for treatment of selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(36, 'Cefuroxime axetil equivalent to cefuroxime 500 mg + clavulanic acid 125 mg (as potassium clavulanate) per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(36, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet (cefuroxime 500 mg/clavulanic acid 125 mg) every 12 hours for the prescribed infection-specific course. Adjust the interval in significant kidney impairment.\n\nAdministration Advice\nSwallow whole with water immediately after breakfast and the evening meal. Complete the prescribed course and do not substitute a different cephalosporin combination.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, '01 — Targets Bacterial Cell Walls', 'Cefuroxime binds penicillin-binding proteins involved in bacterial wall production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, '02 — Protects Against Selected Beta-Lactamases', 'Clavulanic acid inhibits some beta-lactamase enzymes that would otherwise inactivate the antibiotic.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(36, '03 — Kills Susceptible Bacteria', 'A weakened cell wall leads to bacterial death when the organism is susceptible and adequate exposure is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(36, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(36, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(36, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(36, 'liver-problems', 'Liver Problems', 'Report jaundice, dark urine or persistent upper abdominal pain. Previous antibiotic-associated liver injury requires review before treatment.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(37, 8, 'Frecox™-TH', 'frecox-th', 'Frecox-TH combines aceclofenac and paracetamol with thiocolchicoside for short-term relief of selected painful musculoskeletal conditions.', 'Frecox-TH combines aceclofenac and paracetamol with thiocolchicoside for short-term relief of selected painful musculoskeletal conditions. Aceclofenac reduces inflammation, while paracetamol supports pain relief. Thiocolchicoside helps relieve associated muscle spasm. The combination should be used at the lowest effective dose for the shortest prescribed duration.', 'Aceclofenac 100 mg + Paracetamol 325 mg + Thiocolchicoside 4 mg Tablets', '/assets/products/frecox-th.jpg', 'published', 37, 'Frecox™-TH | Onecore Pharma', 'Frecox-TH combines aceclofenac and paracetamol with thiocolchicoside for short-term relief of selected painful musculoskeletal conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(37, 'Aceclofenac 100 mg + Paracetamol 325 mg + Thiocolchicoside 4 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(37, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 16 years or older: take 1 tablet twice daily for acute painful muscle spasm. Do not exceed 2 tablets in 24 hours or use for more than 7 consecutive days.\n\nAdministration Advice\nSwallow whole with water after breakfast and the evening meal. Avoid other NSAIDs and additional paracetamol without checking the total dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(37, 'Acute Painful Muscle Spasm', 'May be prescribed for acute spinal or musculoskeletal pain accompanied by muscle spasm.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(37, 'Acute Back or Neck Pain with Spasm', 'Provides short-term symptomatic relief when the clinician considers the combination suitable.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(37, '01 — Reduces Prostaglandin Production', 'Aceclofenac inhibits cyclo-oxygenase activity and reduces pain-related inflammatory mediators.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(37, '02 — Provides Additional Pain Relief', 'Paracetamol acts mainly within central pain pathways to support analgesia.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(37, '03 — Reduces Associated Muscle Spasm', 'Thiocolchicoside acts on spinal inhibitory pathways to reduce painful muscle contracture.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(37, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(37, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(37, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(37, 'additional-ingredient-precautions', 'Additional Ingredient Precautions', 'Thiocolchicoside is contraindicated in pregnancy and breastfeeding and requires effective contraception as directed. Avoid with seizure susceptibility and follow the short-course limit.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(38, 8, 'Nervia™-NX', 'nervia-nx', 'Nervia-NX combines pregabalin, nortriptyline and methylcobalamin for prescribed management of neuropathic pain.', 'Nervia-NX combines pregabalin, nortriptyline and methylcobalamin for prescribed management of neuropathic pain. Pregabalin and nortriptyline reduce abnormal pain signalling through different pathways, while methylcobalamin provides vitamin B12 support. The regimen should be individualised according to kidney function, tolerability and the exact release formulation supplied.', 'Pregabalin 75 mg + Nortriptyline 10 mg + Methylcobalamin 1500 mcg Tablets', '/assets/products/nervia-nx.jpg', 'published', 38, 'Nervia™-NX | Onecore Pharma', 'Nervia-NX combines pregabalin, nortriptyline and methylcobalamin for prescribed management of neuropathic pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(38, 'Pregabalin 75 mg + Nortriptyline 10 mg + Methylcobalamin 1500 mcg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(38, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nSwallow with water. Do not crush a sustained-release tablet. Do not stop abruptly; withdrawal should follow a prescriber-directed taper.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(38, 'Painful Diabetic Peripheral Neuropathy', 'May reduce burning, tingling or shooting pain when neuropathic pain treatment is indicated after assessment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(38, 'Other Selected Peripheral Neuropathic Pain', 'May be prescribed for persistent nerve pain, including postherpetic symptoms, when the clinician selects this combination.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(38, '01 — Reduces Excitatory Nerve Transmission', 'Pregabalin binds alpha-2-delta calcium-channel subunits and reduces excitatory neurotransmitter release.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(38, '02 — Strengthens Descending Pain Control', 'Nortriptyline inhibits noradrenaline and serotonin reuptake, enhancing central modulation of pain.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(38, '03 — Supports Vitamin B12-Dependent Function', 'Methylcobalamin supports normal nerve and blood-cell function when vitamin B12 supply is inadequate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(38, 'sedation-and-breathing-risk', 'Sedation and Breathing Risk', 'Dizziness and sleepiness may impair driving. Alcohol, opioids and sedatives increase respiratory-depression risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(38, 'heart-eye-and-urinary-problems', 'Heart, Eye and Urinary Problems', 'Nortriptyline requires caution with heart disease, glaucoma, urinary retention and serotonergic medicines. Report palpitations or severe agitation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(38, 'kidney-function-and-withdrawal', 'Kidney Function and Withdrawal', 'Pregabalin needs renal dose adjustment. Do not stop abruptly. Report new mood changes, swelling or severe allergic symptoms.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(39, 8, 'Mesolac™', 'mesolac', 'Mesolac contains lactulose, an osmotic laxative that softens stools by increasing water within the bowel.', 'Mesolac contains lactulose, an osmotic laxative that softens stools by increasing water within the bowel. It helps manage constipation and may also be prescribed at a different dose for hepatic encephalopathy. The dose is adjusted to the treatment goal, bowel response and risk of fluid or electrolyte disturbance.', 'Lactulose 10 g per 15 mL oral solution', '/assets/therapeutic-general-medicine.jpg', 'published', 39, 'Mesolac™ | Onecore Pharma', 'Mesolac contains lactulose, an osmotic laxative that softens stools by increasing water within the bowel.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(39, 'Lactulose 10 g per 15 mL oral solution', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(39, 'Administration and Dosage Guidance', 'Dosing and Schedule\nConstipation in adults: start with 15–30 mL once daily and adjust to produce a soft stool; allow 2–3 days for effect. Hepatic encephalopathy in adults: start with 30–45 mL three or four times daily and titrate to 2–3 soft stools per day under medical monitoring.\n\nAdministration Advice\nMeasure with a calibrated cup. Take the constipation dose at the same time daily, with or without food; dilute in water or juice if needed. Maintain adequate fluids unless fluid restriction has been prescribed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(39, 'Constipation', 'Helps soften hard stools and improve bowel frequency when dietary and lifestyle measures are insufficient.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(39, 'Hepatic Encephalopathy', 'May reduce intestinal ammonia absorption in patients with liver disease when prescribed as part of a supervised treatment plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(39, '01 — Reaches the Colon Unabsorbed', 'Lactulose passes through the small intestine with limited absorption.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(39, '02 — Draws Water into the Bowel', 'Colonic bacteria ferment it into organic acids, increasing osmotic water retention and softening stools.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(39, '03 — Reduces Ammonia Absorption', 'Acidification converts ammonia to less absorbable ammonium and promotes its elimination in stool.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(39, 'obstruction-and-abdominal-pain', 'Obstruction and Abdominal Pain', 'Do not use with suspected bowel obstruction, perforation or unexplained severe abdominal pain.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(39, 'diarrhoea-and-electrolytes', 'Diarrhoea and Electrolytes', 'Excess dosing can cause diarrhoea, dehydration and electrolyte disturbance. Adjust the dose and seek review if symptoms persist.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(39, 'diabetes-and-sugar-intolerance', 'Diabetes and Sugar Intolerance', 'The solution may contain residual sugars. Review use in diabetes or galactose-related disorders and follow product-specific contraindications.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(40, 8, 'Rabtico™-20', 'rabtico-20', 'Rabtico-20 contains rabeprazole, a proton pump inhibitor that reduces stomach acid production.', 'Rabtico-20 contains rabeprazole, a proton pump inhibitor that reduces stomach acid production. It helps manage gastro-oesophageal reflux and selected acid-related ulcers by reducing irritation and allowing damaged lining to heal. The dose, formulation and treatment duration depend on the diagnosed condition and the prescriber’s assessment.', 'Rabeprazole Sodium 20 mg Tablets & Injection', '/assets/products/rabtico-20.jpg', 'published', 40, 'Rabtico™-20 | Onecore Pharma', 'Rabtico-20 contains rabeprazole, a proton pump inhibitor that reduces stomach acid production.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(40, 'Rabeprazole Sodium 20 mg Tablets & Injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(40, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: oral tablet — take 20 mg once daily; erosive reflux disease is treated for 4–8 weeks. Intravenous injection — administer 20 mg once daily while oral treatment is unsuitable, then switch to oral therapy as soon as possible.\n\nAdministration Advice\nTablet: swallow whole with water before breakfast. Injection: hospital administration only; reconstitute and dilute using the vial’s authorised directions, then give by slow intravenous injection or infusion. Do not administer the injectable product by mouth or intramuscularly.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(40, 'Gastro-Oesophageal Reflux Disease', 'Reduces acid-related heartburn and regurgitation and helps heal reflux-related oesophageal inflammation when indicated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(40, 'Peptic Ulcer Disease', 'May be prescribed for gastric or duodenal ulcers, including within an appropriate Helicobacter pylori eradication regimen when required.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(40, '01 — Reaches Acid-Producing Cells', 'Rabeprazole is absorbed and activated in the acidic environment of gastric parietal cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(40, '02 — Blocks the Proton Pump', 'It inhibits the H+/K+-ATPase enzyme responsible for the final step of acid secretion.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(40, '03 — Reduces Acid Exposure', 'Lower acidity helps relieve reflux symptoms and allows acid-related mucosal injury to heal.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(40, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(40, 'long-term-treatment', 'Long-Term Treatment', 'Use the lowest effective dose for the necessary duration. Prolonged treatment may require review of magnesium, vitamin B12, fracture risk and persistent diarrhoea.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(40, 'medicine-interactions', 'Medicine Interactions', 'Tell the clinician about all medicines, particularly antiretrovirals, high-dose methotrexate and anticoagulants. Some combinations require avoidance or monitoring.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(41, 8, 'Goodfate™-O', 'goodfate-o', 'Goodfate-O combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain.', 'Goodfate-O combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain. Sucralfate forms a protective barrier over damaged mucosa, while oxetacaine provides local anaesthetic relief. It is used within a prescribed treatment plan after the underlying cause of symptoms is assessed.', 'Sucralfate (500 mg/5 mL) + Oxetacaine (10 mg/5 mL) Syrup', '/assets/therapeutic-general-medicine.jpg', 'published', 41, 'Goodfate™-O | Onecore Pharma', 'Goodfate-O combines sucralfate with oxetacaine to protect irritated upper gastrointestinal lining and relieve associated burning pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(41, 'Sucralfate (500 mg/5 mL) + Oxetacaine (10 mg/5 mL) Syrup', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(41, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults being treated for an active peptic ulcer: take 10 mL four times daily, before the three main meals and at bedtime, for the prescribed course. Each dose supplies sucralfate 1 g and oxetacaine 20 mg. Reassess persistent pain or bleeding instead of increasing the dose.\n\nAdministration Advice\nShake well and measure with a calibrated medicine cup or oral syringe. Take on an empty stomach, 1 hour before or 2 hours after food. Keep other oral medicines at least 2 hours apart and antacids at least 30 minutes apart.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(41, 'Peptic Ulcer-Related Mucosal Injury', 'May be prescribed to protect injured stomach or duodenal lining as part of treatment for an assessed ulcer condition.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(41, 'Painful Gastritis or Acid-Related Irritation', 'Helps relieve burning discomfort associated with mucosal irritation when the clinician considers this combination appropriate.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(41, '01 — Forms a Protective Barrier', 'Sucralfate adheres to damaged mucosa and forms a local protective layer.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(41, '02 — Reduces Exposure to Irritants', 'The barrier limits contact with acid, pepsin and bile while the lining recovers.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(41, '03 — Relieves Local Pain', 'Oxetacaine provides local anaesthetic activity that helps reduce burning and discomfort.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(41, 'kidney-disease-and-aluminium', 'Kidney Disease and Aluminium', 'Sucralfate contains aluminium. Severe kidney impairment requires caution because aluminium may accumulate, particularly with prolonged use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(41, 'medicine-absorption', 'Medicine Absorption', 'Sucralfate can reduce absorption of other medicines. Keep an appropriate gap, commonly at least 2 hours, and follow medicine-specific instructions.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(41, 'alarm-symptoms-and-constipation', 'Alarm Symptoms and Constipation', 'Persistent pain, weight loss, vomiting blood or black stools need prompt assessment. Constipation may occur.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(42, 8, 'Rabtico™-DSR', 'rabtico-dsr', 'Rabtico-DSR combines rabeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.', 'Rabtico-DSR combines rabeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility. The proton pump inhibitor reduces stomach acid, while domperidone promotes gastrointestinal movement. Use requires review of heart rhythm risks, other medicines and the shortest appropriate treatment duration.', 'Rabeprazole 20 mg + Domperidone 30 mg SR (10 mg IR + 20 mg SR) Capsules', '/assets/products/rabtico-dsr.jpg', 'published', 42, 'Rabtico™-DSR | Onecore Pharma', 'Rabtico-DSR combines rabeprazole with domperidone for prescribed management of reflux symptoms associated with nausea or impaired upper gastrointestinal motility.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(42, 'Rabeprazole 20 mg + Domperidone 30 mg SR (10 mg IR + 20 mg SR) Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(42, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily before breakfast. This supplies the full 30 mg daily domperidone dose. Use for the shortest necessary period and review within 7 days.\n\nAdministration Advice\nSwallow the capsule whole with water 30 minutes before breakfast. Do not crush, chew or combine with another domperidone-containing medicine.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(42, 'Reflux with Regurgitation', 'May be prescribed when acid reflux is accompanied by troublesome regurgitation and the clinician considers a prokinetic appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(42, 'Reflux-Associated Nausea', 'May help selected adults with nausea accompanying reflux when both components are justified after assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(42, '01 — Suppresses Gastric Acid', 'Rabeprazole inhibits the gastric proton pump and reduces acid secretion.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(42, '02 — Promotes Upper Gut Motility', 'Domperidone blocks peripheral dopamine D2 receptors and supports coordinated gastric movement.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(42, '03 — Reduces Associated Symptoms', 'Reduced acidity and improved motility may relieve selected reflux-associated symptoms when the combination is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(42, 'symptoms-requiring-investigation', 'Symptoms Requiring Investigation', 'Difficulty swallowing, weight loss, persistent vomiting, black stools or vomiting blood require medical assessment. Symptom relief does not exclude serious disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(42, 'heart-rhythm-and-interactions', 'Heart Rhythm and Interactions', 'Domperidone may cause serious rhythm disturbances. Avoid with QT prolongation, significant electrolyte disturbance, potent CYP3A4 inhibitors or other QT-prolonging medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(42, 'dose-duration-and-liver-disease', 'Dose, Duration and Liver Disease', 'Do not exceed 30 mg domperidone daily. Use for the shortest period, usually no longer than 7 days without review. Avoid in moderate or severe liver impairment.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(42, 'gastrointestinal-obstruction', 'Gastrointestinal Obstruction', 'Do not use if there is gastrointestinal bleeding, mechanical obstruction or perforation. Persistent nausea requires investigation.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(43, 8, 'Omnagut™', 'omnagut', 'Omnagut combines probiotics with a prebiotic for support of intestinal microbial balance.', 'Omnagut combines probiotics with a prebiotic for support of intestinal microbial balance. Probiotics provide selected live microorganisms, while the prebiotic supplies substrates used by some beneficial bacteria. The clinical effect depends on the strains, viable count and formulation, and the product complements appropriate dietary and medical care.', 'Probiotics (2.5 Billion Cells) & Prebiotic Softgel Capsules', '/assets/therapeutic-general-medicine.jpg', 'published', 43, 'Omnagut™ | Onecore Pharma', 'Omnagut combines probiotics with a prebiotic for support of intestinal microbial balance.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(43, 'Probiotics (2.5 Billion Cells) & Prebiotic Softgel Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(43, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake 1 capsule daily after meals or as advised by a healthcare professional.\n\nAdministration Advice\nSwallow with water and separate antibacterial medicines by at least 2 hours. Follow storage instructions and avoid exposing live organisms to heat.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(43, 'Support During Antibiotic Use', 'May be considered as an adjunct for selected patients receiving antibiotics. Prevention of antibiotic-associated diarrhoea depends on the specific probiotic strain.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(43, 'Digestive Microbiota Support', 'May supplement dietary measures when support for intestinal microbial balance is considered appropriate after clinical assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(43, '01 — Delivers Live Microorganisms', 'The capsule supplies the labelled probiotic organisms when viability is preserved.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(43, '02 — Provides Fermentable Substrate', 'The prebiotic can be used by selected intestinal bacteria.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(43, '03 — May Influence Intestinal Balance', 'Strain-specific effects may support microbial balance and digestive function. Benefits cannot be assumed from CFU count alone.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(43, 'severe-illness-and-immunosuppression', 'Severe Illness and Immunosuppression', 'Use only after specialist advice in critically ill or immunocompromised patients or those with central venous catheters.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(43, 'diarrhoea-requiring-assessment', 'Diarrhoea Requiring Assessment', 'Fever, blood in stools, dehydration or persistent diarrhoea needs medical assessment. Probiotics do not replace rehydration or required treatment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(43, 'allergy-and-storage', 'Allergy and Storage', 'Check excipients for allergy and follow temperature instructions. Gas and bloating may occur.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(44, 8, 'Rabtico™-L', 'rabtico-l', 'Rabtico-L combines rabeprazole with levosulpiride in a modified-release capsule for selected reflux symptoms requiring additional motility support.', 'Rabtico-L combines rabeprazole with levosulpiride in a modified-release capsule for selected reflux symptoms requiring additional motility support. Rabeprazole reduces stomach acid, while levosulpiride promotes upper gastrointestinal movement. It is prescribed after clinical assessment, with treatment duration and suitability reviewed according to symptoms, response and other medicines.', 'Rabeprazole 20 mg + Levosulpiride 75 mg SR Capsules', '/assets/products/rabtico-l.jpg', 'published', 44, 'Rabtico™-L | Onecore Pharma', 'Rabtico-L combines rabeprazole with levosulpiride in a modified-release capsule for selected reflux symptoms requiring additional motility support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(44, 'Rabeprazole 20 mg + Levosulpiride 75 mg SR Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(44, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily before breakfast. Review symptom response and the need for continued combination treatment.\n\nAdministration Advice\nSwallow the capsule whole with water 30 minutes before breakfast. Do not crush or chew the gastro-resistant or sustained-release components.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(44, 'Reflux Not Adequately Controlled by Acid Suppression', 'May be prescribed when reflux symptoms persist and the clinician considers adding a motility agent appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(44, 'Reflux with Post-Meal Fullness or Regurgitation', 'May help selected patients with associated upper gastrointestinal motility symptoms after obstructive or other causes are excluded.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(44, '01 — Reduces Acid Secretion', 'Rabeprazole inhibits H+/K+-ATPase in gastric parietal cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(44, '02 — Promotes Gastrointestinal Motility', 'Levosulpiride blocks dopamine D2 receptors to support acetylcholine-mediated gastrointestinal movement.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(44, '03 — Relieves Selected Reflux Symptoms', 'The combined actions address acidity and associated motility symptoms within the prescribed treatment plan.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(44, 'bleeding-obstruction-and-alarm-symptoms', 'Bleeding, Obstruction and Alarm Symptoms', 'Avoid with gastrointestinal bleeding, obstruction or perforation. Unexplained weight loss, dysphagia or persistent vomiting needs investigation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(44, 'movement-hormonal-and-heart-effects', 'Movement, Hormonal and Heart Effects', 'Levosulpiride can cause tremor, stiffness, involuntary movements, raised prolactin and rhythm disturbances. Report these promptly and review interacting medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(44, 'pregnancy-and-prolonged-use', 'Pregnancy and Prolonged Use', 'Use in pregnancy or breastfeeding only after individual advice. Long-term proton pump inhibitor treatment needs periodic review.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(45, 8, 'Rabtico™-IT', 'rabtico-it', 'Rabtico-IT combines rabeprazole with itopride in a modified-release capsule for selected reflux symptoms requiring additional motility support.', 'Rabtico-IT combines rabeprazole with itopride in a modified-release capsule for selected reflux symptoms requiring additional motility support. Rabeprazole reduces stomach acid, while itopride promotes upper gastrointestinal movement. It is prescribed after clinical assessment, with treatment duration and suitability reviewed according to symptoms, response and other medicines.', 'Rabeprazole 20 mg + Itopride 150 mg SR Capsules', '/assets/products/rabtico-it.jpg', 'published', 45, 'Rabtico™-IT | Onecore Pharma', 'Rabtico-IT combines rabeprazole with itopride in a modified-release capsule for selected reflux symptoms requiring additional motility support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(45, 'Rabeprazole 20 mg + Itopride 150 mg SR Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(45, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily before breakfast. Review symptom response and the need for continued combination treatment.\n\nAdministration Advice\nSwallow the capsule whole with water 30 minutes before breakfast. Do not crush or chew the gastro-resistant or sustained-release components.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(45, 'Reflux Not Adequately Controlled by Acid Suppression', 'May be prescribed when reflux symptoms persist and the clinician considers adding a motility agent appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(45, 'Reflux with Post-Meal Fullness or Regurgitation', 'May help selected patients with associated upper gastrointestinal motility symptoms after obstructive or other causes are excluded.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(45, '01 — Reduces Acid Secretion', 'Rabeprazole inhibits H+/K+-ATPase in gastric parietal cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(45, '02 — Promotes Gastrointestinal Motility', 'Itopride blocks dopamine D2 receptors and inhibits acetylcholinesterase to support acetylcholine-mediated gastrointestinal movement.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(45, '03 — Relieves Selected Reflux Symptoms', 'The combined actions address acidity and associated motility symptoms within the prescribed treatment plan.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(45, 'bleeding-obstruction-and-alarm-symptoms', 'Bleeding, Obstruction and Alarm Symptoms', 'Avoid with gastrointestinal bleeding, obstruction or perforation. Unexplained weight loss, dysphagia or persistent vomiting needs investigation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(45, 'hormonal-effects-and-medicine-review', 'Hormonal Effects and Medicine Review', 'Itopride may raise prolactin and cause abdominal discomfort. Review other medicines and report breast changes or menstrual disturbances.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(45, 'pregnancy-and-prolonged-use', 'Pregnancy and Prolonged Use', 'Use in pregnancy or breastfeeding only after individual advice. Long-term proton pump inhibitor treatment needs periodic review.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(46, 7, 'Deftos™-6', 'deftos-6', 'Deftos-6 contains deflazacort, a prescription corticosteroid that reduces inflammation and suppresses excessive immune activity.', 'Deftos-6 contains deflazacort, a prescription corticosteroid that reduces inflammation and suppresses excessive immune activity. It is used in selected inflammatory, allergic and autoimmune conditions when systemic steroid treatment is justified. The dose varies widely by disease and response, and treatment may require gradual withdrawal rather than abrupt stopping.', 'Deflazacort 6 mg per tablet', '/assets/products/deftos-6.jpg', 'published', 46, 'Deftos™-6 | Onecore Pharma', 'Deftos-6 contains deflazacort, a prescription corticosteroid that reduces inflammation and suppresses excessive immune activity.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(46, 'Deflazacort 6 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(46, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: the total dose is 6–90 mg daily according to the inflammatory or autoimmune condition and its severity. Each tablet supplies 6 mg. Start at the indication-specific prescribed dose, then reduce to the lowest effective dose; prolonged treatment requires a planned gradual taper.\n\nAdministration Advice\nTake the prescribed total daily dose with food, preferably in the morning when given once daily. Swallow with water. Do not stop abruptly after prolonged treatment; follow the written taper.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(46, 'Selected Severe Inflammatory or Allergic Disorders', 'May be prescribed for conditions such as significant inflammatory airway, skin or joint disease when systemic corticosteroid treatment is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(46, 'Autoimmune and Other Steroid-Responsive Disorders', 'May help control excessive immune activity in selected conditions under specialist supervision.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(46, '01 — Activates Glucocorticoid Receptors', 'The active metabolite binds intracellular glucocorticoid receptors.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(46, '02 — Changes Inflammatory Gene Activity', 'This reduces production of inflammatory mediators and modifies immune-cell responses.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(46, '03 — Suppresses Excess Inflammation', 'The resulting effect reduces steroid-responsive inflammation and immune activity.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(46, 'infection-and-vaccination', 'Infection and Vaccination', 'Steroids can mask or worsen infection. Report fever and exposure to chickenpox or measles. Live vaccines may be unsuitable during immunosuppressive doses.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(46, 'glucose-bone-and-eye-effects', 'Glucose, Bone and Eye Effects', 'Monitor blood glucose, blood pressure and relevant bone or eye risks during continued therapy. Mood and sleep changes may occur.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(46, 'adrenal-suppression-and-withdrawal', 'Adrenal Suppression and Withdrawal', 'Do not stop prolonged treatment abruptly. Illness or surgery may require additional steroid cover and an individual taper.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(47, 8, 'Oneriv™ D3 60K', 'oneriv-d3-60k', 'Oneriv D3 60K contains high-dose vitamin D3 for prescribed correction of vitamin D deficiency.', 'Oneriv D3 60K contains high-dose vitamin D3 for prescribed correction of vitamin D deficiency. Vitamin D supports calcium and phosphate absorption and normal bone mineralisation. This strength is usually given intermittently during a defined treatment course, followed by reassessment and an appropriate maintenance plan rather than unsupervised daily use.', 'Cholecalciferol (vitamin D3) 60000 IU per softgel capsule (D3 form inferred)', '/assets/products/oneriv-d3-60k.jpg', 'published', 47, 'Oneriv™ D3 60K | Onecore Pharma', 'Oneriv D3 60K contains high-dose vitamin D3 for prescribed correction of vitamin D deficiency.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(47, 'Cholecalciferol (vitamin D3) 60000 IU per softgel capsule (D3 form inferred)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(47, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with confirmed vitamin D deficiency: take 1 capsule (60000 IU) once weekly for 8 weeks. Recheck vitamin D and calcium before selecting maintenance therapy. Do not take this strength daily.\n\nAdministration Advice\nSwallow whole with water after a main meal on the same day each week. Mark the weekly dose on a calendar and avoid duplicate high-dose vitamin D products.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(47, 'Laboratory-Assessed Vitamin D Deficiency', 'Replenishes vitamin D when deficiency is established and a clinician selects a high-dose replacement course.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(47, 'Deficiency-Related Bone Mineralisation Problems', 'May form part of treatment for osteomalacia or associated low calcium when the underlying cause and calcium needs are addressed.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(47, '01 — Provides Cholecalciferol', 'Vitamin D3 is absorbed and converted to 25-hydroxyvitamin D in the liver.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(47, '02 — Forms Active Vitamin D', 'Further conversion, mainly in the kidney, produces the active hormone calcitriol.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(47, '03 — Improves Mineral Absorption', 'Active vitamin D supports intestinal calcium and phosphate uptake and appropriate bone mineralisation.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(47, 'high-calcium-and-vitamin-d-toxicity', 'High Calcium and Vitamin D Toxicity', 'Avoid with hypercalcaemia or vitamin D toxicity. Excess dosing can cause vomiting, thirst, frequent urination, confusion and kidney injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(47, 'kidney-stones-and-special-conditions', 'Kidney Stones and Special Conditions', 'Kidney disease, stones, sarcoidosis and parathyroid disorders require individual assessment before high-dose treatment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(47, 'dose-frequency-and-interactions', 'Dose Frequency and Interactions', 'Check the weekly schedule carefully. Review digoxin, thiazides and other vitamin D or calcium products. Paediatric or pregnancy dosing must be prescribed individually.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(48, 8, 'Ekabro™', 'ekabro', 'Ekabro contains acebrophylline, a medicine used in selected chronic airway disorders associated with mucus and airflow limitation.', 'Ekabro contains acebrophylline, a medicine used in selected chronic airway disorders associated with mucus and airflow limitation. It helps modify mucus and support airway clearance, with bronchodilator-related activity. It is an adjunct to an individual respiratory treatment plan and should not be used for rapid relief of an acute attack.', 'Acebrophylline 100 mg Capsules', '/assets/products/ekabro.jpg', 'published', 48, 'Ekabro™ | Onecore Pharma', 'Ekabro contains acebrophylline, a medicine used in selected chronic airway disorders associated with mucus and airflow limitation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(48, 'Acebrophylline 100 mg Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(48, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule (100 mg) twice daily, approximately 12 hours apart. Review dosing separately in older adults and in kidney or liver impairment.\n\nAdministration Advice\nSwallow whole with water after breakfast and the evening meal. Use regularly for airway maintenance; use the prescribed rescue inhaler for sudden breathlessness.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(48, 'Chronic Obstructive Airway Disease with Mucus', 'May be prescribed as an adjunct when mucus production and difficulty clearing secretions contribute to symptoms.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(48, 'Selected Chronic Bronchitic Symptoms', 'May help manage mucus-associated cough and airflow symptoms after the underlying respiratory condition is assessed.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(48, '01 — Modifies Mucus Properties', 'Acebrophylline influences mucus production and surfactant-related processes.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(48, '02 — Supports Airway Clearance', 'Improved mucus characteristics can help mucociliary transport and expectoration.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(48, '03 — Supports Airway Function', 'Additional bronchodilator and anti-inflammatory actions may support symptoms in selected chronic airway disease.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(48, 'acute-breathlessness', 'Acute Breathlessness', 'This medicine is not a rescue treatment. Sudden or severe breathlessness needs the prescribed reliever and urgent assessment when appropriate.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(48, 'cardiac-and-seizure-history', 'Cardiac and Seizure History', 'Tell the prescriber about arrhythmia, recent cardiac illness, seizures or peptic ulcer. Palpitations or significant dizziness need review.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(48, 'interactions-and-organ-impairment', 'Interactions and Organ Impairment', 'Review other xanthines and interacting medicines. Kidney or liver disease, pregnancy and breastfeeding require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(49, 8, 'Fexostil™ 120', 'fexostil-120', 'Fexostil 120 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential.', 'Fexostil 120 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential. It reduces itching and irritation by blocking peripheral H1 receptors. The prescribed strength depends on the indication, with treatment adjusted to symptoms, age, kidney function and the individual response.', 'Fexofenadine hydrochloride 120 mg per tablet', '/assets/products/fexostil-120.jpg', 'published', 49, 'Fexostil™ 120 | Onecore Pharma', 'Fexostil 120 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(49, 'Fexofenadine hydrochloride 120 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(49, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older with seasonal allergic rhinitis: take 1 tablet (120 mg) once daily. Kidney impairment requires review of a lower starting strength.\n\nAdministration Advice\nSwallow with water before a meal. Do not take with apple, orange or grapefruit juice. Keep aluminium- or magnesium-containing antacids at least 2 hours apart.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(49, 'Seasonal Allergic Rhinitis', 'Relieves sneezing, runny nose and nasal itching associated with seasonal allergens.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(49, 'Associated Allergic Eye Symptoms', 'Helps relieve watery, itchy eyes occurring with allergic rhinoconjunctivitis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(49, '01 — Blocks Histamine H1 Receptors', 'Fexofenadine prevents histamine from activating peripheral H1 receptors.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(49, '02 — Reduces Allergic Tissue Responses', 'This limits histamine-related itching, vascular leakage and irritation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(49, '03 — Relieves Allergy Symptoms', 'Reduced histamine activity helps control the symptoms appropriate to the prescribed indication.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(49, 'allergy-and-drowsiness', 'Allergy and Drowsiness', 'Avoid if allergic to an ingredient. Although usually less sedating, individual responses vary. Do not drive if dizzy or sleepy.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(49, 'kidney-disease-and-pregnancy', 'Kidney Disease and Pregnancy', 'Ask for individual advice with kidney impairment, pregnancy or breastfeeding. Age-appropriate formulations may be needed for children.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(49, 'fruit-juice-and-antacids', 'Fruit Juice and Antacids', 'Take with water rather than fruit juice. Separate aluminium- or magnesium-containing antacids by at least 2 hours.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(50, 8, 'Fexostil™ 180', 'fexostil-180', 'Fexostil 180 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential.', 'Fexostil 180 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential. It reduces itching and irritation by blocking peripheral H1 receptors. The prescribed strength depends on the indication, with treatment adjusted to symptoms, age, kidney function and the individual response.', 'Fexofenadine hydrochloride 180 mg per tablet', '/assets/products/fexostil-180.jpg', 'published', 50, 'Fexostil™ 180 | Onecore Pharma', 'Fexostil 180 contains fexofenadine, an antihistamine that helps relieve histamine-related allergy symptoms with generally low sedating potential.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(50, 'Fexofenadine hydrochloride 180 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(50, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older with chronic urticaria: take 1 tablet (180 mg) once daily. Kidney impairment requires review of a lower starting strength.\n\nAdministration Advice\nSwallow with water before a meal. Do not take with apple, orange or grapefruit juice. Keep aluminium- or magnesium-containing antacids at least 2 hours apart.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(50, 'Chronic Idiopathic Urticaria', 'Helps relieve hives and associated itching when prescribed for this condition.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(50, 'Allergic Rhinitis with Associated Symptoms', 'May be prescribed for nasal and eye allergy symptoms when this strength is appropriate under local product directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(50, '01 — Blocks Histamine H1 Receptors', 'Fexofenadine prevents histamine from activating peripheral H1 receptors.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(50, '02 — Reduces Allergic Tissue Responses', 'This limits histamine-related itching, vascular leakage and irritation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(50, '03 — Relieves Allergy Symptoms', 'Reduced histamine activity helps control the symptoms appropriate to the prescribed indication.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(50, 'allergy-and-drowsiness', 'Allergy and Drowsiness', 'Avoid if allergic to an ingredient. Although usually less sedating, individual responses vary. Do not drive if dizzy or sleepy.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(50, 'kidney-disease-and-pregnancy', 'Kidney Disease and Pregnancy', 'Ask for individual advice with kidney impairment, pregnancy or breastfeeding. Age-appropriate formulations may be needed for children.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(50, 'fruit-juice-and-antacids', 'Fruit Juice and Antacids', 'Take with water rather than fruit juice. Separate aluminium- or magnesium-containing antacids by at least 2 hours.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(51, 8, 'Fexostil™-M', 'fexostil-m', 'Fexostil-M combines fexofenadine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity.', 'Fexostil-M combines fexofenadine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity. It helps reduce sneezing, runny nose and associated irritation. The combination should be used after assessment of alternatives, particularly because montelukast can cause serious mood, sleep and behavioural effects.', 'Fexofenadine hydrochloride 120 mg + montelukast 10 mg per tablet', '/assets/products/fexostil-m.jpg', 'published', 51, 'Fexostil™-M | Onecore Pharma', 'Fexostil-M combines fexofenadine with montelukast for selected allergic rhinitis symptoms requiring both antihistamine and leukotriene-blocking activity.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(51, 'Fexofenadine hydrochloride 120 mg + montelukast 10 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(51, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily in the evening. This supplies fexofenadine 120 mg and montelukast 10 mg.\n\nAdministration Advice\nSwallow with water before food. Avoid fruit juice around the dose and keep aluminium- or magnesium-containing antacids at least 2 hours apart. Do not use for an acute asthma attack.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(51, 'Allergic Rhinitis Inadequately Controlled with Alternatives', 'May be prescribed when appropriate alternative allergy treatments are insufficient or not tolerated and both ingredients are justified.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(51, 'Associated Allergic Rhinoconjunctivitis Symptoms', 'May relieve itchy, watery eyes and nasal symptoms accompanying allergic rhinitis within the prescribed treatment plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(51, '01 — Blocks Histamine Effects', 'Fexofenadine blocks peripheral H1 receptors to reduce histamine-related allergy symptoms.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(51, '02 — Blocks Leukotriene Signalling', 'Montelukast blocks cysteinyl leukotriene receptors involved in allergic inflammation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(51, '03 — Reduces Selected Allergy Symptoms', 'The two pathways can reduce nasal and associated eye symptoms when combination treatment is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(51, 'mood-sleep-and-behaviour-changes', 'Mood, Sleep and Behaviour Changes', 'Montelukast can cause serious neuropsychiatric effects, including suicidal thoughts. Stop treatment and contact the prescriber promptly for new mood, sleep or behavioural changes.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(51, 'appropriate-allergy-use', 'Appropriate Allergy Use', 'Reserve montelukast-containing treatment for allergic rhinitis when alternatives are ineffective or unsuitable. It does not treat an acute asthma attack.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(51, 'drowsiness-and-individual-assessment', 'Drowsiness and Individual Assessment', 'Avoid driving if affected. Review pregnancy, breastfeeding, organ impairment and all other medicines with the clinician.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(52, 8, 'Sultics™-375', 'sultics-375', 'Sultics-375 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption.', 'Sultics-375 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption. Ampicillin acts against susceptible bacteria, while sulbactam protects it from certain bacterial enzymes. It is prescribed for selected bacterial infections, with the dose and course determined by the infection, response and kidney function.', 'Sultamicillin 375 mg Tablets', '/assets/products/sultics-375.jpg', 'published', 52, 'Sultics™-375 | Onecore Pharma', 'Sultics-375 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(52, 'Sultamicillin 375 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(52, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1–2 tablets (375–750 mg) twice daily, according to infection severity. Continue for the prescribed course; streptococcal infections require at least 10 days. Significant kidney impairment requires a longer dosing interval.\n\nAdministration Advice\nSwallow with water at evenly spaced times, with or without food. Complete the prescribed course and avoid sharing antibiotics.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, '01 — Releases Two Active Components', 'After absorption, sultamicillin is hydrolysed to ampicillin and sulbactam.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, '02 — Protects Antibacterial Activity', 'Sulbactam inhibits selected beta-lactamases that would otherwise break down ampicillin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(52, '03 — Disrupts Bacterial Cell Walls', 'Ampicillin inhibits peptidoglycan cross-linking and kills susceptible bacteria.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(52, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(52, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(52, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(53, 8, 'Sultics™-750', 'sultics-750', 'Sultics-750 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption.', 'Sultics-750 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption. Ampicillin acts against susceptible bacteria, while sulbactam protects it from certain bacterial enzymes. It is prescribed for selected bacterial infections, with the dose and course determined by the infection, response and kidney function.', 'Sultamicillin 750 mg Tablets', '/assets/products/sultics-750.jpg', 'published', 53, 'Sultics™-750 | Onecore Pharma', 'Sultics-750 contains sultamicillin, an oral prodrug that releases ampicillin and sulbactam after absorption.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(53, 'Sultamicillin 750 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(53, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet (750 mg) twice daily for the prescribed infection-specific course. Streptococcal infections require at least 10 days. Use a lower strength when a 375 mg dose is required; significant kidney impairment requires a longer dosing interval.\n\nAdministration Advice\nSwallow with water at evenly spaced times, with or without food. Complete the prescribed course and avoid sharing antibiotics.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, 'Susceptible Respiratory Tract Infections', 'Treats selected bacterial throat, sinus or lower respiratory infections when the organism and clinical situation support this antibiotic.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, 'Susceptible Urinary Tract Infections', 'May be prescribed for selected urinary infections according to clinical assessment and susceptibility results.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, 'Selected Skin and Soft Tissue Infections', 'May be used for susceptible uncomplicated bacterial skin infections when the prescribed strength is appropriate.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, '01 — Releases Two Active Components', 'After absorption, sultamicillin is hydrolysed to ampicillin and sulbactam.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, '02 — Protects Antibacterial Activity', 'Sulbactam inhibits selected beta-lactamases that would otherwise break down ampicillin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(53, '03 — Disrupts Bacterial Cell Walls', 'Ampicillin inhibits peptidoglycan cross-linking and kills susceptible bacteria.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(53, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(53, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(53, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(54, 6, 'Melacore™', 'melacore', 'Melacore combines hydroquinone, tretinoin and mometasone for short-term, supervised treatment of facial melasma.', 'Melacore combines hydroquinone, tretinoin and mometasone for short-term, supervised treatment of facial melasma. Hydroquinone reduces pigment production, tretinoin supports epidermal turnover, and mometasone limits inflammation. Consistent sun protection is essential, and the cream should be used only on the prescribed areas for the advised duration.', 'Hydroquinone 2% + Mometasone 0.1% + Tretinoin 0.025% Cream', '/assets/products/melacore.jpg', 'published', 54, 'Melacore™ | Onecore Pharma', 'Melacore combines hydroquinone, tretinoin and mometasone for short-term, supervised treatment of facial melasma.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(54, 'Hydroquinone 2% + Mometasone 0.1% + Tretinoin 0.025% Cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(54, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: apply a thin film once nightly to the affected pigmented area only. Review after 2 weeks; the dermatologist must set a short stop date for this mometasone-containing combination.\n\nAdministration Advice\nCleanse gently, pat dry and apply sparingly, avoiding the eyelids, lips, nostrils and broken skin. Wash hands afterwards. Use a suitable broad-spectrum sunscreen and protective clothing during the day.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(54, 'Moderate Facial Melasma', 'May be prescribed for assessed moderate facial melasma when a short course of this combination is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(54, 'Severe Facial Melasma', 'May form part of dermatologist-supervised treatment for more pronounced melasma, with strict sun protection and scheduled review.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(54, '01 — Reduces Melanin Production', 'Hydroquinone inhibits tyrosinase-related pathways involved in melanin synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(54, '02 — Promotes Epidermal Turnover', 'Tretinoin alters keratinocyte turnover and helps disperse epidermal pigment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(54, '03 — Controls Treatment-Related Inflammation', 'Mometasone suppresses local inflammatory responses during the prescribed short course.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(54, 'pregnancy-and-breastfeeding', 'Pregnancy and Breastfeeding', 'Avoid in pregnancy or while planning pregnancy because the cream contains tretinoin. Seek individual advice during breastfeeding.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(54, 'steroid-and-hydroquinone-risks', 'Steroid and Hydroquinone Risks', 'Prolonged use may cause skin thinning, steroid acne, visible vessels or paradoxical darkening. Do not apply beyond the prescribed areas or duration.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(54, 'irritation-and-sun-exposure', 'Irritation and Sun Exposure', 'Stop and seek advice for severe irritation or blue-black pigmentation. Avoid strong exfoliants, waxing and unnecessary sun exposure.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(55, 6, 'Clindaone™-AD', 'clindaone-ad', 'Clindaone-AD combines clindamycin with adapalene for treatment of acne involving inflamed spots and blocked pores.', 'Clindaone-AD combines clindamycin with adapalene for treatment of acne involving inflamed spots and blocked pores. Clindamycin reduces susceptible acne-associated bacteria, while adapalene helps normalise follicular cell turnover. Regular, limited application and gentle skin care are important, with treatment reviewed to assess response, irritation and antibiotic duration.', 'Clindamycin 1% + Adapalene 0.1% Gel', '/assets/products/clindaone-ad.jpg', 'published', 55, 'Clindaone™-AD | Onecore Pharma', 'Clindaone-AD combines clindamycin with adapalene for treatment of acne involving inflamed spots and blocked pores.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(55, 'Clindamycin 1% + Adapalene 0.1% Gel', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(55, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older: apply a thin film once nightly over the acne-affected area. Review response at 8–12 weeks and stop prolonged antibiotic use unless specifically renewed.\n\nAdministration Advice\nCleanse gently and allow the skin to dry before application. A pea-sized amount is sufficient for the whole face. Avoid eyes, lips, nostrils and damaged skin; wash hands afterwards and use daytime sunscreen.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(55, 'Inflammatory Acne', 'Helps treat papules and pustules when topical antibiotic and retinoid combination therapy is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(55, 'Mixed Comedonal and Inflammatory Acne', 'Adapalene helps reduce blocked pores alongside treatment of inflammatory lesions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(55, '01 — Reduces Susceptible Bacteria', 'Clindamycin inhibits bacterial protein synthesis at the 50S ribosomal subunit.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(55, '02 — Normalises Follicular Turnover', 'Adapalene acts on retinoid receptors and reduces formation of microcomedones.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(55, '03 — Reduces Acne Lesions', 'Antibacterial and anti-inflammatory effects work alongside improved follicular clearance.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(55, 'pregnancy-and-skin-irritation', 'Pregnancy and Skin Irritation', 'Avoid during pregnancy or when planning pregnancy. Dryness, peeling and stinging may occur, particularly early in treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(55, 'antibiotic-associated-diarrhoea', 'Antibiotic-Associated Diarrhoea', 'Stop and seek advice for persistent or bloody diarrhoea, even with topical use. A history of antibiotic-related colitis needs review.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(55, 'resistance-and-sun-exposure', 'Resistance and Sun Exposure', 'Use antibiotics only for the prescribed course. The dermatologist may add benzoyl peroxide separately to reduce resistance. Limit sun exposure.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(56, 6, 'Clobtos™-AD', 'clobtos-ad', 'Clobtos-AD combines a very potent topical corticosteroid with salicylic acid for selected thick, scaly inflammatory skin lesions.', 'Clobtos-AD combines a very potent topical corticosteroid with salicylic acid for selected thick, scaly inflammatory skin lesions. Clobetasol suppresses inflammation and itching, while salicylic acid loosens scale. The combination requires short-term medical supervision because excessive application can increase steroid absorption, skin damage and salicylate-related adverse effects.', 'Clobetasol propionate 0.05% w/w + salicylic acid 6.5% w/w ointment (as supplied; verify 6.5%)', '/assets/products/clobtos-ad.jpg', 'published', 56, 'Clobtos™-AD | Onecore Pharma', 'Clobtos-AD combines a very potent topical corticosteroid with salicylic acid for selected thick, scaly inflammatory skin lesions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(56, 'Clobetasol propionate 0.05% w/w + salicylic acid 6.5% w/w ointment (as supplied; verify 6.5%)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(56, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: apply a thin layer to the prescribed thickened plaque once daily for up to 2 weeks, then reassess. Do not increase frequency or treat extensive areas. Confirm the unusual 6.5% salicylic acid declaration before publication.\n\nAdministration Advice\nClean and dry the area before applying a thin layer. Wash hands afterwards unless treating the hands. Avoid eyes, mouth and other mucosal surfaces.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(56, 'Thick Plaques of Psoriasis', 'May be prescribed for limited, thick psoriatic plaques when a very potent steroid and scale-removing agent are appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(56, 'Hyperkeratotic Steroid-Responsive Dermatoses', 'May help selected chronic thickened inflammatory lesions after diagnosis by a clinician.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(56, '01 — Suppresses Local Inflammation', 'Clobetasol activates glucocorticoid receptors and reduces inflammatory mediator production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(56, '02 — Loosens Excess Scale', 'Salicylic acid reduces cohesion between surface skin cells and helps remove thick scale.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(56, '03 — Improves Access to Thickened Skin', 'Reduced scale can improve steroid penetration, requiring careful limits on treated area and duration.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(56, 'potent-steroid-restrictions', 'Potent Steroid Restrictions', 'Avoid the face, groin, skin folds and broken skin unless specifically directed. Do not use under occlusion or on large areas.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(56, 'infection-and-paediatric-use', 'Infection and Paediatric Use', 'Do not use for undiagnosed rashes or routine ringworm treatment. Children have greater systemic absorption risk and need specialist advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(56, 'absorption-and-toxicity', 'Absorption and Toxicity', 'Prolonged use may cause skin thinning or adrenal suppression. Salicylate absorption increases on damaged skin and in kidney impairment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(57, 8, 'Fusifite™', 'fusifite', 'Fusifite contains fusidic acid, a topical antibiotic used for selected superficial bacterial skin infections.', 'Fusifite contains fusidic acid, a topical antibiotic used for selected superficial bacterial skin infections. It inhibits bacterial protein production and is particularly active against susceptible staphylococci. A short prescribed course helps treat the affected area while limiting unnecessary antibiotic exposure and the risk of resistance.', 'Fusidic acid 2% w/w cream', '/assets/therapeutic-general-medicine.jpg', 'published', 57, 'Fusifite™ | Onecore Pharma', 'Fusifite contains fusidic acid, a topical antibiotic used for selected superficial bacterial skin infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(57, 'Fusidic acid 2% w/w cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(57, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer to the affected skin three times daily for 5–7 days. Reassess if the infection fails to improve or spreads.\n\nAdministration Advice\nClean and dry the affected area, apply gently and wash hands afterwards. Keep away from the eyes and mucous membranes. Use a clean dressing only when directed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(57, 'Localised Impetigo', 'May treat limited superficial impetigo caused by susceptible bacteria when topical treatment is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(57, 'Selected Superficial Staphylococcal Infections', 'May be prescribed for localised infected skin lesions, such as susceptible folliculitis or secondary bacterial infection.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(57, '01 — Enters Susceptible Bacteria', 'Fusidic acid reaches bacterial cells at the treated skin surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(57, '02 — Inhibits Protein Synthesis', 'It interferes with elongation factor G, which is required for bacterial protein production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(57, '03 — Limits Bacterial Growth', 'Suppression of essential protein synthesis helps control susceptible superficial infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(57, 'resistance-and-treatment-duration', 'Resistance and Treatment Duration', 'Avoid repeated or prolonged courses without review. It is not a treatment for fungal or viral skin infection.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(57, 'allergy-and-persistent-infection', 'Allergy and Persistent Infection', 'Stop for significant irritation or rash. Spreading redness, fever or failure to improve requires reassessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(57, 'application-site', 'Application Site', 'Use on the skin only. Avoid the eyes and mucosal surfaces and use in pregnancy or infancy only as advised.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(58, 6, 'Velliglow™', 'velliglow', 'Velliglow is a topical cosmetic cream combining glutathione, kojic acid and vitamins A, C and E for a more even-looking complexion.', 'Velliglow is a topical cosmetic cream combining glutathione, kojic acid and vitamins A, C and E for a more even-looking complexion. The ingredients support surface skin care and antioxidant functions. Regular use may improve the appearance of dullness and uneven tone, with results dependent on formulation, tolerance and sun protection.', 'Glutathione + kojic acid + vitamin A + vitamin C + vitamin E cream; individual forms and concentrations not supplied', '/assets/therapeutic-dermatology.jpg', 'published', 58, 'Velliglow™ | Onecore Pharma', 'Velliglow is a topical cosmetic cream combining glutathione, kojic acid and vitamins A, C and E for a more even-looking complexion.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(58, 'Glutathione + kojic acid + vitamin A + vitamin C + vitamin E cream; individual forms and concentrations not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(58, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer to the intended skin area once nightly. If irritation develops, stop and obtain a skin-care review.\n\nAdministration Advice\nApply to clean, dry skin, avoiding eyes, lips and broken skin. Do not layer with other retinoid or exfoliating products without advice. Use a suitable broad-spectrum sunscreen during the day.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(58, 'Uneven-Looking Skin Tone', 'Helps improve the cosmetic appearance of uneven tone as part of a consistent skin-care routine.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(58, 'Dull-Looking Skin', 'Provides skin-conditioning and antioxidant ingredients to support a brighter-looking appearance.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(58, '01 — Provides Pigment-Related Ingredients', 'Kojic acid can influence tyrosinase activity. The effect depends on concentration and formulation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(58, '02 — Supports Surface Antioxidant Care', 'Glutathione and vitamins C and E provide antioxidant ingredients for topical skin care.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(58, '03 — Conditions the Complexion', 'Regular tolerated use may improve the appearance of dullness and uneven tone without altering natural skin colour permanently.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(58, 'patch-testing-and-irritation', 'Patch Testing and Irritation', 'Patch test before wider use. Stop for persistent burning, rash, swelling or significant irritation. Avoid use on damaged skin.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(58, 'sun-protection-and-other-actives', 'Sun Protection and Other Actives', 'Use appropriate daytime sun protection. Introduce other exfoliating or retinoid products cautiously to limit irritation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(58, 'pregnancy-and-persistent-pigmentation', 'Pregnancy and Persistent Pigmentation', 'Seek advice before use in pregnancy or breastfeeding. Persistent, changing or symptomatic pigmentation needs dermatological assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(59, 6, 'Traxpause™-KC', 'traxpause-kc', 'Traxpause-KC combines tranexamic acid with selected pigment-modulating and skin-conditioning ingredients in a facial serum.', 'Traxpause-KC combines tranexamic acid with selected pigment-modulating and skin-conditioning ingredients in a facial serum. It may help improve the appearance of uneven pigmentation when used within a dermatologist-directed routine. The effect depends on the concentrations and formulation, while regular sun protection remains essential for managing pigmentation concerns.', 'Tranexamic acid + kojic acid + alpha-arbutin + niacinamide + flower acid + vitamin C in a facial serum base; concentrations and flower-acid identity not supplied', '/assets/products/traxpause-kc.jpg', 'published', 59, 'Traxpause™-KC | Onecore Pharma', 'Traxpause-KC combines tranexamic acid with selected pigment-modulating and skin-conditioning ingredients in a facial serum.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(59, 'Tranexamic acid + kojic acid + alpha-arbutin + niacinamide + flower acid + vitamin C in a facial serum base; concentrations and flower-acid identity not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(59, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply 2–3 drops as a thin layer to the intended facial area once nightly. Stop if persistent burning or redness develops.\n\nAdministration Advice\nApply to clean, dry skin and allow it to absorb before moisturiser. Avoid eyes, lips and broken skin. Use a suitable broad-spectrum sunscreen during the day.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(59, 'Uneven Facial Pigmentation', 'May be prescribed as part of a topical pigmentation plan after the cause of discolouration has been assessed.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(59, 'Post-Blemish Dark Marks', 'May help improve the appearance of residual marks following inflammation, alongside treatment of the underlying skin condition.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(59, '01 — Modulates Pigment Signalling', 'Topical tranexamic acid may influence plasmin-related pathways involved in UV-associated pigmentation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(59, '02 — Targets Pigment Formation and Transfer', 'Kojic acid and arbutin influence tyrosinase-related processes. Niacinamide may reduce melanosome transfer.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(59, '03 — Supports Surface Skin Renewal', 'Vitamin C and the specified acid blend may support antioxidant care and surface appearance, depending on formulation.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(59, 'patch-testing-and-irritation', 'Patch Testing and Irritation', 'Patch test before wider use. Stop for persistent burning, rash, swelling or significant irritation. Avoid use on damaged skin.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(59, 'sun-protection-and-other-actives', 'Sun Protection and Other Actives', 'Use appropriate daytime sun protection. Introduce other exfoliating or retinoid products cautiously to limit irritation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(59, 'pregnancy-and-persistent-pigmentation', 'Pregnancy and Persistent Pigmentation', 'Seek advice before use in pregnancy or breastfeeding. Persistent, changing or symptomatic pigmentation needs dermatological assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(60, 6, 'Glutella™ Plus', 'glutella-plus', 'Glutella Plus combines glutathione with selected antioxidant ingredients for nutritional support.', 'Glutella Plus combines glutathione with selected antioxidant ingredients for nutritional support. These compounds participate in cellular antioxidant pathways, but the effect of an oral blend depends on its formulation and the individual. It may complement a balanced diet and should not be presented as a proven skin-lightening or disease-treatment product.', 'L-Glutathione 600 mg + Silybum marianum extract 250 mg + N-Acetyl L-Cysteine 125 mg + Co-Enzyme Q10 60 mg + Alpha lipoic acid 50 mg + Pinus gerardiana bark extract 50 mg + Curcuma longa rhizome extract 50 mg + Phycocyanin from spirulina plantesis dried powder 50 mg + Vitamin C (L-ASCORBIC ACID) 40 mg + Grape seed extract 15 mg + Camellia sinensis-tea catechins 10 mg + Vitamin E 10 mg + Provitamin A 4.8 mg + Astaxanthin 4 mg + Lycopene 2 mg + Folic acid 0.1 mg', '/assets/therapeutic-dermatology.jpg', 'published', 60, 'Glutella™ Plus | Onecore Pharma', 'Glutella Plus combines glutathione with selected antioxidant ingredients for nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(60, 'L-Glutathione 600 mg + Silybum marianum extract 250 mg + N-Acetyl L-Cysteine 125 mg + Co-Enzyme Q10 60 mg + Alpha lipoic acid 50 mg + Pinus gerardiana bark extract 50 mg + Curcuma longa rhizome extract 50 mg + Phycocyanin from spirulina plantesis dried powder 50 mg + Vitamin C (L-ASCORBIC ACID) 40 mg + Grape seed extract 15 mg + Camellia sinensis-tea catechins 10 mg + Vitamin E 10 mg + Provitamin A 4.8 mg + Astaxanthin 4 mg + Lycopene 2 mg + Folic acid 0.1 mg', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(60, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake one tablet daily with water, preferably after a meal.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(60, 'Supplemental Antioxidant Intake', 'May be considered when a clinician identifies a reason for this antioxidant combination alongside an adequate diet.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(60, 'Adjunct Skin Nutritional Support', 'May complement a skin-care plan when appropriate. Reliable improvement in pigmentation or prevention of skin ageing has not been established for this blend.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(60, '01 — Provides Antioxidant Ingredients', 'The listed ingredients supply antioxidant molecules or substrates involved in cellular protective pathways.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(60, '02 — Supports Endogenous Systems', 'Glutathione and related nutritional pathways participate in handling reactive oxygen species.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(60, '03 — Complements Nutritional Intake', 'Supplementation may support assessed dietary gaps. Biochemical activity does not establish a cosmetic or disease-treatment benefit.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(60, 'cancer-treatment-and-other-medicines', 'Cancer Treatment and Other Medicines', 'Obtain clinician approval before use with chemotherapy, radiotherapy, anticoagulants or glucose-lowering medicines. Supplement interactions may be clinically important.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(60, 'allergy-liver-and-kidney-problems', 'Allergy, Liver and Kidney Problems', 'Check all ingredients for allergy. Seek advice with liver or kidney disease and stop for jaundice, severe nausea or persistent abdominal pain.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(60, 'pregnancy-and-evidence-limits', 'Pregnancy and Evidence Limits', 'Avoid unsupervised use in pregnancy, breastfeeding or children. Skin-lightening, anti-ageing and disease-treatment claims are not established for this exact formulation.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(61, 6, 'Lulifite™', 'lulifite', 'Lulifite contains luliconazole, a topical antifungal used for selected dermatophyte infections of the skin.', 'Lulifite contains luliconazole, a topical antifungal used for selected dermatophyte infections of the skin. It interferes with fungal membrane formation and helps control the organisms causing ringworm, groin infection or athlete’s foot. Treatment duration depends on the site, and regular application should continue for the prescribed course.', 'Luliconazole 1% Cream', '/assets/therapeutic-dermatology.jpg', 'published', 61, 'Lulifite™ | Onecore Pharma', 'Lulifite contains luliconazole, a topical antifungal used for selected dermatophyte infections of the skin.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(61, 'Luliconazole 1% Cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(61, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: apply once daily for 1 week for tinea corporis or cruris and for 2 weeks for interdigital tinea pedis.\n\nAdministration Advice\nWash and dry the area thoroughly. Apply a thin layer over the affected skin and approximately 2.5 cm of surrounding skin. Wash hands afterwards. For external skin use only.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(61, 'Tinea Corporis and Tinea Cruris', 'Treats susceptible ringworm infections affecting the body or groin when topical therapy is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(61, 'Interdigital Tinea Pedis', 'Treats susceptible athlete’s foot between the toes according to the prescribed regimen.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(61, '01 — Blocks Ergosterol Synthesis', 'Luliconazole inhibits fungal lanosterol demethylase.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(61, '02 — Disrupts Fungal Membranes', 'Reduced ergosterol impairs the structure and function of the fungal cell membrane.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(61, '03 — Controls Susceptible Dermatophytes', 'Membrane disruption limits fungal growth and helps resolve the infection during the prescribed course.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(61, 'correct-diagnosis', 'Correct Diagnosis', 'Do not treat undiagnosed rashes indefinitely. Scalp, nail, extensive or recurrent fungal infection may require a different treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(61, 'local-irritation-and-application-site', 'Local Irritation and Application Site', 'Avoid eyes, mouth and vaginal use. Stop for severe burning, rash or swelling.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(61, 'steroid-combinations-and-special-populations', 'Steroid Combinations and Special Populations', 'Do not add a steroid cream unless specifically directed. Pregnancy, breastfeeding and use in children require product-specific advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(62, 6, 'Tracore™', 'tracore', 'Tracore contains tacrolimus, a topical calcineurin inhibitor used as a second-line treatment for selected patients with atopic dermatitis.', 'Tracore contains tacrolimus, a topical calcineurin inhibitor used as a second-line treatment for selected patients with atopic dermatitis. It reduces local immune activation and inflammation without being a corticosteroid. Treatment should be short-term or intermittent, with the strength, treated areas and review schedule determined by the dermatologist.', 'Tacrolimus 0.1% Ointment', '/assets/therapeutic-dermatology.jpg', 'published', 62, 'Tracore™ | Onecore Pharma', 'Tracore contains tacrolimus, a topical calcineurin inhibitor used as a second-line treatment for selected patients with atopic dermatitis.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(62, 'Tacrolimus 0.1% Ointment', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(62, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 16 years or older: apply a thin layer twice daily during an active atopic-dermatitis flare. Stop when signs resolve; reassess if no improvement occurs within 6 weeks.\n\nAdministration Advice\nApply to clean, dry affected skin and rub in gently. Avoid occlusive dressings, eyes and mucous membranes. Keep emollients at least 2 hours apart on the same area and minimise sunlight exposure.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(62, 'Moderate Atopic Dermatitis Requiring Second-Line Therapy', 'May be prescribed when appropriate topical treatments have not worked adequately or are unsuitable.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(62, 'Severe Atopic Dermatitis Requiring Intermittent Control', 'May help manage selected severe eczema flares within a specialist-directed plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(62, '01 — Enters Skin Immune Cells', 'Tacrolimus binds the intracellular protein FKBP-12.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(62, '02 — Inhibits Calcineurin Signalling', 'The complex inhibits calcineurin and reduces T-cell cytokine production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(62, '03 — Reduces Eczematous Inflammation', 'Lower immune activation helps reduce itching and inflammatory skin changes in appropriate patients.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(62, 'age-and-immune-status', 'Age and Immune Status', 'The 0.1% strength is for patients aged 16 years or older. Avoid use in immunocompromised patients unless a specialist specifically directs it.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(62, 'long-term-safety-and-sun-exposure', 'Long-Term Safety and Sun Exposure', 'Avoid continuous long-term use and unnecessary UV exposure. Rare malignancy reports led to a warning, although causation is unproven.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(62, 'infection-and-burning', 'Infection and Burning', 'Do not apply to untreated infected skin. Temporary burning may occur. Persistent lymph-node swelling or a changing skin lesion needs review.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(63, 8, 'Yuvizee™', 'yuvizee', 'Yuvizee is a sunscreen lotion intended to help protect exposed skin from ultraviolet radiation when applied correctly.', 'Yuvizee is a sunscreen lotion intended to help protect exposed skin from ultraviolet radiation when applied correctly. Use forms part of a sun-protection routine that includes shade and protective clothing. The degree of UVB and UVA protection depends on the tested SPF, UVA rating and filters in the finished product.', 'Sunscreen lotion; UV filters, concentrations, tested SPF, UVA rating and water-resistance duration not supplied', '/assets/therapeutic-general-medicine.jpg', 'published', 63, 'Yuvizee™ | Onecore Pharma', 'Yuvizee is a sunscreen lotion intended to help protect exposed skin from ultraviolet radiation when applied correctly.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(63, 'Sunscreen lotion; UV filters, concentrations, tested SPF, UVA rating and water-resistance duration not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(63, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply evenly 15 minutes before sun exposure, using approximately 2 mg/cm² of skin. Reapply at least every 2 hours outdoors and after swimming, heavy sweating or towel drying.\n\nAdministration Advice\nCover all exposed areas, including ears and neck, avoiding the eyes. Use enough to form an even film. Combine with shade and protective clothing; follow the actual pack’s SPF and water-resistance claims.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(63, 'Daily Protection of Exposed Skin', 'Helps reduce ultraviolet exposure when the lotion is used at the labelled amount and reapplied appropriately.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(63, 'Support During Pigmentation Care', 'Can complement a pigmentation-management routine by reducing UV exposure that may worsen uneven pigmentation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(63, '01 — Forms a Surface Film', 'The lotion distributes its UV filters across the skin when an adequate amount is applied.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(63, '02 — Attenuates Ultraviolet Radiation', 'Verified UV filters absorb and/or scatter ultraviolet radiation according to their properties.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(63, '03 — Maintains Protection with Reapplication', 'Reapplication replaces film lost through wear, water and sweating. Protection depends on the tested formulation and correct use.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(63, 'spf-uva-and-water-resistance', 'SPF, UVA and Water Resistance', 'Do not assume SPF 50+, broad-spectrum or water-resistant performance without test-supported label claims. No sunscreen blocks all ultraviolet radiation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(63, 'irritation-and-eye-contact', 'Irritation and Eye Contact', 'Patch test if skin is sensitive. Avoid the eyes and stop for rash or persistent irritation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(63, 'infants-and-sun-exposure', 'Infants and Sun Exposure', 'For infants under 6 months, prioritise shade and protective clothing and seek paediatric advice before sunscreen use. Avoid prolonged intense sun exposure.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(64, 6, 'Ebacore™', 'ebacore', 'Ebacore contains ebastine, an antihistamine that reduces symptoms caused by histamine release.', 'Ebacore contains ebastine, an antihistamine that reduces symptoms caused by histamine release. It is prescribed for allergic rhinitis and selected urticaria symptoms. By blocking peripheral H1 receptors, it helps reduce sneezing, itching and wheals, with the dose chosen according to symptom severity, tolerability and individual risk factors.', 'Ebastine 20 mg Tablet', '/assets/therapeutic-dermatology.jpg', 'published', 64, 'Ebacore™ | Onecore Pharma', 'Ebacore contains ebastine, an antihistamine that reduces symptoms caused by histamine release.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(64, 'Ebastine 20 mg Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(64, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older requiring the 20 mg strength: take 1 tablet once daily. In severe liver impairment, do not use this 20 mg regimen; the maximum ebastine dose is 10 mg daily.\n\nAdministration Advice\nSwallow whole with water, with or without food, at the same time each day.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(64, 'Allergic Rhinitis', 'Helps relieve sneezing, runny nose and itching associated with allergic rhinitis.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(64, 'Urticaria', 'May reduce hives and itching when an oral antihistamine is indicated.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(64, '01 — Forms an Active Metabolite', 'Ebastine is converted to carebastine after absorption.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(64, '02 — Blocks Peripheral H1 Receptors', 'Carebastine limits histamine-mediated responses in allergic tissues.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(64, '03 — Relieves Allergic Symptoms', 'Reduced histamine activity helps control itching, wheals and selected nasal symptoms.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(64, 'heart-rhythm-and-interactions', 'Heart Rhythm and Interactions', 'Review long-QT risk and interacting medicines, including some macrolides and azole antifungals.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(64, 'liver-disease-and-pregnancy', 'Liver Disease and Pregnancy', 'Severe liver disease may make the 20 mg strength unsuitable. Pregnancy and breastfeeding require individual advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(64, 'drowsiness-and-allergy', 'Drowsiness and Allergy', 'Avoid driving if sleepy or dizzy. Stop and seek urgent help for a severe allergic reaction.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(65, 6, 'Tracore™ (Biotin)', 'tracore-biotin', 'Tracore (Biotin) combines biotin with selected minerals, B vitamins and N-acetylcysteine for hair and nail nutritional support.', 'Tracore (Biotin) combines biotin with selected minerals, B vitamins and N-acetylcysteine for hair and nail nutritional support. These nutrients contribute to normal cellular processes when intake is inadequate. Supplementation may help address identified nutritional gaps, but persistent hair loss requires investigation and is not reliably corrected by vitamins alone.', 'Biotin 40 mcg + N-Acetyl L-Cysteine 50 mg + Pantothenic Acid 5 mg + Selenium 40 mcg + Iron 8 mg + Copper 0.5 mg + Zinc 17 mg + Niacin 14 mg + Folic Acid-5-Methyltetrahydrofolic Acid 0.3 mg Tablet', '/assets/therapeutic-dermatology.jpg', 'published', 65, 'Tracore™ (Biotin) | Onecore Pharma', 'Tracore (Biotin) combines biotin with selected minerals, B vitamins and N-acetylcysteine for hair and nail nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(65, 'Biotin 40 mcg + N-Acetyl L-Cysteine 50 mg + Pantothenic Acid 5 mg + Selenium 40 mcg + Iron 8 mg + Copper 0.5 mg + Zinc 17 mg + Niacin 14 mg + Folic Acid-5-Methyltetrahydrofolic Acid 0.3 mg Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(65, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(65, 'Hair Nutritional Support in Inadequate Intake', 'Supplies selected micronutrients when dietary insufficiency may be contributing to poor hair condition.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(65, 'Nail Nutritional Support', 'May help meet assessed nutrient needs relevant to normal nail formation. Benefits are not established when no deficiency is present.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(65, '01 — Provides Essential Micronutrients', 'Biotin, zinc, iron and B vitamins contribute to normal enzyme and cellular functions.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(65, '02 — Supports Protein and Cell Metabolism', 'Adequate micronutrient intake supports the metabolic processes involved in normal hair and nail formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(65, '03 — Addresses Nutritional Gaps', 'Replacing a true deficit may support recovery. It does not directly treat hormonal, autoimmune or scarring hair loss.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(65, 'investigate-persistent-hair-loss', 'Investigate Persistent Hair Loss', 'Sudden, patchy or prolonged hair loss requires assessment for anaemia, thyroid disease, scalp disorders and other causes.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(65, 'duplicate-minerals-and-laboratory-tests', 'Duplicate Minerals and Laboratory Tests', 'Avoid excess zinc, selenium or iron. Inform laboratories about biotin supplementation because some assays can be affected.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(65, 'allergy-and-special-conditions', 'Allergy and Special Conditions', 'Check ingredients for allergy. Iron overload, kidney disease, pregnancy and breastfeeding require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(66, 6, 'Acnozoe™', 'acnozoe', 'Acnozoe is a cosmetic face gel combining salicylic acid with niacinamide for care of oily, blemish-prone skin.', 'Acnozoe is a cosmetic face gel combining salicylic acid with niacinamide for care of oily, blemish-prone skin. Salicylic acid helps loosen surface cells and clear congested pores, while niacinamide supports the skin barrier. Regular, tolerated use may improve skin texture and the appearance of mild blemishes.', 'Salicylic acid + niacinamide cosmetic face gel; concentrations not supplied', '/assets/therapeutic-dermatology.jpg', 'published', 66, 'Acnozoe™ | Onecore Pharma', 'Acnozoe is a cosmetic face gel combining salicylic acid with niacinamide for care of oily, blemish-prone skin.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(66, 'Salicylic acid + niacinamide cosmetic face gel; concentrations not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(66, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer once daily in the evening. For sensitive skin, start on alternate evenings for the first week, then increase to daily if tolerated.\n\nAdministration Advice\nApply to clean, dry acne-prone skin, avoiding eyes, lips and broken skin. Do not apply additional peeling agents at the same time without advice. Use daytime sunscreen.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(66, 'Oily and Congested Skin', 'Helps improve the appearance of excess oil and blocked pores as part of a gentle skin-care routine.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(66, 'Mild Blemishes and Uneven Texture', 'Supports smoother-looking skin and surface care. Persistent or inflammatory acne may require prescription treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(66, '01 — Loosens Surface Skin Cells', 'Salicylic acid helps reduce cohesion between dead cells within oily follicles.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(66, '02 — Supports the Skin Barrier', 'Niacinamide contributes to epidermal barrier function and skin conditioning.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(66, '03 — Improves Surface Appearance', 'Consistent tolerated use may reduce visible congestion and improve the appearance of skin texture.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(66, 'irritation-and-salicylate-sensitivity', 'Irritation and Salicylate Sensitivity', 'Avoid if allergic to salicylates. Stop for marked burning, peeling or rash and avoid large areas of damaged skin.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(66, 'other-exfoliants-and-retinoids', 'Other Exfoliants and Retinoids', 'Introduce carefully with retinoids, benzoyl peroxide or acid products to avoid excessive irritation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(66, 'pregnancy-and-young-children', 'Pregnancy and Young Children', 'Seek individual advice during pregnancy or for young children. Do not use on extensive areas or under occlusion.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(67, 6, 'Coresoft™', 'coresoft', 'Coresoft combines white soft paraffin and liquid paraffin in an emollient cream for dry skin care.', 'Coresoft combines white soft paraffin and liquid paraffin in an emollient cream for dry skin care. The paraffins form a protective film that reduces water loss and helps soften rough skin. Regular application supports the skin barrier alongside prescribed treatment for an underlying dry or eczematous skin condition.', 'White Soft Paraffin 13.2% + Liquid Paraffin 10.2% + Methylparaben 0.15% + Propylparaben 0.05% Cream', '/assets/therapeutic-dermatology.jpg', 'published', 67, 'Coresoft™ | Onecore Pharma', 'Coresoft combines white soft paraffin and liquid paraffin in an emollient cream for dry skin care.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(67, 'White Soft Paraffin 13.2% + Liquid Paraffin 10.2% + Methylparaben 0.15% + Propylparaben 0.05% Cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(67, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer to dry or irritated skin three times daily and after washing. Reduce frequency if irritation occurs.\n\nAdministration Advice\nApply gently to clean skin. Avoid eyes and mucous membranes. Wash hands afterwards unless treating the hands. Keep paraffin-contaminated clothing and bedding away from flames and cigarettes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(67, 'Dry and Rough Skin', 'Helps soften dry skin and reduce moisture loss with regular application.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(67, 'Adjunct Emollient Care in Eczema', 'Supports the skin barrier alongside appropriate anti-inflammatory treatment when eczema is present.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(67, '01 — Forms a Protective Surface Layer', 'Paraffins spread over the surface and form an occlusive emollient film.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(67, '02 — Reduces Moisture Loss', 'Paraffin limits transepidermal water loss and helps retain moisture within the outer skin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(67, '03 — Improves Skin Comfort', 'Improved hydration softens rough skin and reduces dryness-related tightness and itching.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(67, 'fire-risk-from-fabric-residue', 'Fire Risk from Fabric Residue', 'Residue on clothing, bedding or dressings can make fabrics ignite more easily. Keep treated fabrics away from smoking, flames and heat sources.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(67, 'irritation-and-infected-skin', 'Irritation and Infected Skin', 'Stop for rash or worsening irritation. Weeping, spreading redness, pain or suspected infection requires assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(67, 'application-precautions', 'Application Precautions', 'Avoid eyes and mucous membranes. Paraffin can make floors or bathing surfaces slippery. Check preservatives and other ingredients for allergy.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(68, 6, 'Velibact™', 'velibact', 'Velibact contains mupirocin, a topical antibiotic used for selected superficial bacterial skin infections.', 'Velibact contains mupirocin, a topical antibiotic used for selected superficial bacterial skin infections. It inhibits an enzyme needed for bacterial protein synthesis and is active against susceptible staphylococci and streptococci. Use is limited to the prescribed area and course to treat infection while reducing unnecessary antibiotic exposure.', 'Mupirocin 2% Ointment', '/assets/therapeutic-dermatology.jpg', 'published', 68, 'Velibact™ | Onecore Pharma', 'Velibact contains mupirocin, a topical antibiotic used for selected superficial bacterial skin infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(68, 'Mupirocin 2% Ointment', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(68, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a small amount to the affected skin three times daily for up to 10 days. Reassess if there is no improvement within 3–5 days.\n\nAdministration Advice\nClean and dry the area before applying a thin layer. Wash hands afterwards unless treating the hands. Avoid eyes, mouth and other mucosal surfaces. A clean gauze dressing may be used if advised.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(68, 'Staphylococcal Impetigo', 'Treats localised impetigo caused by susceptible Staphylococcus aureus when topical treatment is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(68, 'Streptococcal Impetigo', 'Treats susceptible Streptococcus pyogenes impetigo within the prescribed short course.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(68, '01 — Reaches the Infected Surface', 'Mupirocin acts locally at the treated area of skin.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(68, '02 — Inhibits Isoleucyl-tRNA Synthetase', 'It blocks an enzyme essential for incorporation of isoleucine into bacterial proteins.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(68, '03 — Suppresses Susceptible Bacteria', 'Loss of essential protein synthesis controls susceptible organisms at the treatment site.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(68, 'correct-route-and-formulation', 'Correct Route and Formulation', 'This skin ointment is not the dedicated nasal product. Avoid use inside the nose, eyes or mouth unless specifically directed.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(68, 'allergy-and-persistent-infection', 'Allergy and Persistent Infection', 'Stop for severe irritation or rash. Spreading infection, fever or poor response requires medical review.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(68, 'kidney-problems-and-damaged-skin', 'Kidney Problems and Damaged Skin', 'Polyethylene glycol-containing bases may be absorbed through extensive damaged skin. Use cautiously in significant kidney impairment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(69, 6, 'Camycore™', 'camycore', 'Camycore combines calamine with liquid paraffin to soothe mild skin irritation and reduce dryness.', 'Camycore combines calamine with liquid paraffin to soothe mild skin irritation and reduce dryness. Calamine provides a protective, soothing effect, while paraffin forms an emollient film that limits moisture loss. It may help improve comfort in dry, itchy skin when the underlying condition is appropriately assessed.', 'Calamine 8% + Liquid Paraffin 10% Cream', '/assets/therapeutic-dermatology.jpg', 'published', 69, 'Camycore™ | Onecore Pharma', 'Camycore combines calamine with liquid paraffin to soothe mild skin irritation and reduce dryness.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(69, 'Calamine 8% + Liquid Paraffin 10% Cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(69, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer to dry or irritated skin three times daily and after washing. Reduce frequency if irritation occurs.\n\nAdministration Advice\nApply gently to clean skin. Avoid eyes and mucous membranes. Wash hands afterwards unless treating the hands. Keep paraffin-contaminated clothing and bedding away from flames and cigarettes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(69, 'Mild Itchy Skin Irritation', 'May soothe limited superficial irritation when the cause has been assessed and does not require specific treatment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(69, 'Dry Skin with Discomfort', 'Helps reduce dryness and improve comfort through paraffin-based emollient care.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(69, '01 — Forms a Protective Surface Layer', 'Calamine provides a local protective and soothing effect on the skin surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(69, '02 — Reduces Moisture Loss', 'Paraffin limits transepidermal water loss and helps retain moisture within the outer skin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(69, '03 — Improves Skin Comfort', 'Improved hydration softens rough skin and reduces dryness-related tightness and itching.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(69, 'fire-risk-from-fabric-residue', 'Fire Risk from Fabric Residue', 'Residue on clothing, bedding or dressings can make fabrics ignite more easily. Keep treated fabrics away from smoking, flames and heat sources.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(69, 'irritation-and-infected-skin', 'Irritation and Infected Skin', 'Stop for rash or worsening irritation. Weeping, spreading redness, pain or suspected infection requires assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(69, 'application-precautions', 'Application Precautions', 'Avoid eyes and mucous membranes. Paraffin can make floors or bathing surfaces slippery. Check preservatives and other ingredients for allergy.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(70, 6, 'Glukozoe™', 'glukozoe', 'Glukozoe is a cosmetic face wash containing glutathione, kojic acid, vitamins C and E, and niacinamide for cleansing and complexion care.', 'Glukozoe is a cosmetic face wash containing glutathione, kojic acid, vitamins C and E, and niacinamide for cleansing and complexion care. It helps remove impurities while providing skin-conditioning ingredients. The appearance of dullness or uneven tone may improve with a suitable routine, although a rinse-off cleanser has limited contact time.', 'Glutathione + kojic acid + vitamin C + vitamin E + niacinamide face wash; concentrations not supplied', '/assets/therapeutic-dermatology.jpg', 'published', 70, 'Glukozoe™ | Onecore Pharma', 'Glukozoe is a cosmetic face wash containing glutathione, kojic acid, vitamins C and E, and niacinamide for cleansing and complexion care.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(70, 'Glutathione + kojic acid + vitamin C + vitamin E + niacinamide face wash; concentrations not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(70, 'Administration and Dosage Guidance', 'Dosing and Schedule\nUse once in the morning and once in the evening. Reduce to once daily if dryness develops.\n\nAdministration Advice\nWet the face, massage a small amount over the skin, then rinse thoroughly and pat dry. Avoid the eye area and follow with a suitable moisturiser.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(70, 'Daily Facial Cleansing', 'Removes surface dirt and excess oil as part of a regular skin-care routine.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(70, 'Dull or Uneven-Looking Complexion', 'Provides cosmetic cleansing support for a fresher-looking complexion without promising treatment of melasma or permanent skin lightening.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(70, '01 — Lifts Surface Impurities', 'The cleansing base helps remove dirt, oil and other surface residues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(70, '02 — Provides Brief Ingredient Contact', 'Kojic acid, vitamins and glutathione contact the surface during washing, with effects dependent on formulation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(70, '03 — Leaves Skin Cleansed', 'Rinsing removes loosened impurities. Skin-conditioning ingredients may support a comfortable after-feel.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(70, 'irritation-and-eye-contact', 'Irritation and Eye Contact', 'Avoid the eye area. Rinse thoroughly after accidental contact and stop for persistent burning or rash.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(70, 'over-cleansing-and-other-actives', 'Over-Cleansing and Other Actives', 'Excessive washing or combining several exfoliating products may cause dryness and barrier irritation.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(70, 'pigmentation-and-product-details', 'Pigmentation and Product Details', 'Do not rely on a cleanser to treat persistent pigmentation. Concentrations and finished-product testing determine any stronger claims.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(71, 6, 'Oxyvive™', 'oxyvive', 'Oxyvive combines glutathione with selected antioxidant ingredients for supplemental nutritional support.', 'Oxyvive combines glutathione with selected antioxidant ingredients for supplemental nutritional support. These compounds participate in cellular antioxidant pathways, but the effect of an oral blend depends on its formulation and the individual. It may complement a balanced diet and should not be presented as a proven skin-lightening or disease-treatment product.', 'L-Glutathione 500 mg + Alpha-Lipoic Acid 100 mg + Resveratrol 10 mg + Astaxanthin 4 mg Tablets', '/assets/therapeutic-dermatology.jpg', 'published', 71, 'Oxyvive™ | Onecore Pharma', 'Oxyvive combines glutathione with selected antioxidant ingredients for supplemental nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(71, 'L-Glutathione 500 mg + Alpha-Lipoic Acid 100 mg + Resveratrol 10 mg + Astaxanthin 4 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(71, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Do not add other glutathione or antioxidant combinations without reviewing the total daily intake.\n\nAdministration Advice\nSwallow the tablet with water after a meal. Maintain a consistent daily schedule.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(71, 'Supplemental Antioxidant Intake', 'May be considered when a clinician identifies a reason for this antioxidant combination alongside an adequate diet.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(71, 'Adjunct Skin Nutritional Support', 'May complement a skin-care plan when appropriate. Reliable improvement in pigmentation or prevention of skin ageing has not been established for this blend.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(71, '01 — Provides Antioxidant Ingredients', 'The listed ingredients supply antioxidant molecules or substrates involved in cellular protective pathways.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(71, '02 — Supports Endogenous Systems', 'Glutathione and related nutritional pathways participate in handling reactive oxygen species.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(71, '03 — Complements Nutritional Intake', 'Supplementation may support assessed dietary gaps. Biochemical activity does not establish a cosmetic or disease-treatment benefit.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(71, 'cancer-treatment-and-other-medicines', 'Cancer Treatment and Other Medicines', 'Obtain clinician approval before use with chemotherapy, radiotherapy, anticoagulants or glucose-lowering medicines. Supplement interactions may be clinically important.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(71, 'allergy-liver-and-kidney-problems', 'Allergy, Liver and Kidney Problems', 'Check all ingredients for allergy. Seek advice with liver or kidney disease and stop for jaundice, severe nausea or persistent abdominal pain.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(71, 'pregnancy-and-evidence-limits', 'Pregnancy and Evidence Limits', 'Avoid unsupervised use in pregnancy, breastfeeding or children. Skin-lightening, anti-ageing and disease-treatment claims are not established for this exact formulation.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(72, 6, 'Clobtos™-M', 'clobtos-m', 'Clobtos-M combines clobetasol, a very potent corticosteroid, with miconazole, an antifungal.', 'Clobtos-M combines clobetasol, a very potent corticosteroid, with miconazole, an antifungal. It may be considered only for narrowly selected inflammatory skin conditions with a susceptible fungal component after specialist assessment. Unsupervised use can suppress visible inflammation while allowing fungal infection to persist, spread or become difficult to recognise.', 'Clobetasol propionate 0.05% w/w + miconazole 2% w/w cream', '/assets/products/clobtos-m.jpg', 'published', 72, 'Clobtos™-M | Onecore Pharma', 'Clobtos-M combines clobetasol, a very potent corticosteroid, with miconazole, an antifungal.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(72, 'Clobetasol propionate 0.05% w/w + miconazole 2% w/w cream', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(72, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: apply a thin layer once daily for a short course of no more than 7 days before review, only to a diagnosed condition requiring both ingredients. Do not renew for an undiagnosed or spreading rash.\n\nAdministration Advice\nClean and dry the area before applying a thin layer. Wash hands afterwards unless treating the hands. Avoid eyes, mouth and other mucosal surfaces. Do not cover with an airtight dressing unless specifically directed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(72, 'Specialist-Assessed Inflammatory Dermatitis with Fungal Complication', 'May be considered only when the clinician determines that both a very potent steroid and an antifungal are justified.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(72, 'Short-Term Control of Selected Inflamed Infected Lesions', 'Any use should follow a confirmed diagnosis and the product’s approved indication. It is not routine first-line treatment for ringworm.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(72, '01 — Suppresses Local Inflammation', 'Clobetasol activates glucocorticoid receptors and reduces inflammatory responses.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(72, '02 — Inhibits Fungal Ergosterol Synthesis', 'Miconazole inhibits fungal sterol synthesis and disrupts susceptible fungal membranes.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(72, '03 — Produces Two Distinct Effects', 'Inflammation may improve before infection resolves. The steroid can also mask or worsen an inadequately treated fungal infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(72, 'fungal-infection-and-steroid-misuse', 'Fungal Infection and Steroid Misuse', 'Potent steroid combinations can cause steroid-modified tinea. Avoid unsupervised ringworm treatment and seek review for spreading or recurrent lesions.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(72, 'skin-thinning-and-absorption', 'Skin Thinning and Absorption', 'Avoid face, groin, folds, large areas and prolonged use. Skin atrophy and systemic steroid absorption are possible.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(72, 'children-pregnancy-and-other-medicines', 'Children, Pregnancy and Other Medicines', 'Children and pregnant or breastfeeding patients require specialist advice. Review anticoagulants and other topical treatments.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(73, 6, 'Clindaone™-N', 'clindaone-n', 'Clindaone-N combines clindamycin with niacinamide and soothing skin-care ingredients for prescribed acne treatment.', 'Clindaone-N combines clindamycin with niacinamide and soothing skin-care ingredients for prescribed acne treatment. Clindamycin reduces susceptible acne-associated bacteria, while niacinamide contributes anti-inflammatory and barrier-supporting effects. The gel is used on affected skin for a defined course, with review of response, irritation and the need to limit antibiotic exposure.', 'Clindamycin 1% w/w + niacinamide 4% w/w + aloe + allantoin gel; aloe and allantoin concentrations not supplied', '/assets/products/clindaone-n.jpg', 'published', 73, 'Clindaone™-N | Onecore Pharma', 'Clindaone-N combines clindamycin with niacinamide and soothing skin-care ingredients for prescribed acne treatment.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(73, 'Clindamycin 1% w/w + niacinamide 4% w/w + aloe + allantoin gel; aloe and allantoin concentrations not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(73, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer to the acne-affected area twice daily, morning and evening. Review at 8–12 weeks and reassess before extending the antibiotic course.\n\nAdministration Advice\nClean and dry the area before applying a thin layer. Wash hands afterwards unless treating the hands. Avoid eyes, mouth and other mucosal surfaces. Apply over the acne-affected area rather than only individual spots when directed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(73, 'Inflammatory Acne Papules', 'May help reduce inflamed raised acne lesions when topical antibiotic treatment is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(73, 'Inflammatory Acne Pustules', 'May be prescribed for pustular acne lesions within a broader acne-care plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(73, '01 — Inhibits Acne-Associated Bacteria', 'Clindamycin blocks protein synthesis in susceptible bacteria by acting on the 50S ribosome.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(73, '02 — Modulates Local Inflammation', 'Niacinamide may reduce inflammatory responses and support skin barrier function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(73, '03 — Supports Tolerability and Lesion Control', 'Aloe and allantoin provide skin conditioning while the prescribed acne regimen addresses active lesions.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(73, 'colitis-and-severe-diarrhoea', 'Colitis and Severe Diarrhoea', 'Avoid without review if there is a history of antibiotic-associated colitis. Stop for persistent or bloody diarrhoea.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(73, 'antibiotic-resistance', 'Antibiotic Resistance', 'Limit use to the prescribed course. The clinician may include benzoyl peroxide separately to reduce resistance.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(73, 'skin-irritation-and-special-populations', 'Skin Irritation and Special Populations', 'Avoid eyes and broken skin. Stop for severe irritation and seek advice in pregnancy, breastfeeding or young children.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(74, 7, 'Flutiriv™', 'flutiriv', 'Flutiriv contains fluticasone furoate, a corticosteroid nasal spray for control of allergic rhinitis symptoms.', 'Flutiriv contains fluticasone furoate, a corticosteroid nasal spray for control of allergic rhinitis symptoms. It reduces inflammation within the nasal lining and helps relieve congestion, sneezing, itching and discharge. Regular use gives the best effect, with the lowest effective dose chosen according to age and symptom control.', 'Fluticasone furoate 27.5 mcg per metered nasal spray; 12 g pack listed in one division', '/assets/products/flutiriv.jpg', 'published', 74, 'Flutiriv™ | Onecore Pharma', 'Flutiriv contains fluticasone furoate, a corticosteroid nasal spray for control of allergic rhinitis symptoms.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(74, 'Fluticasone furoate 27.5 mcg per metered nasal spray; 12 g pack listed in one division', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(74, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and ages 12 years or older: use 2 sprays in each nostril once daily (total 110 mcg/day); reduce to 1 spray per nostril daily once controlled. Children aged 6–11 years: use 1 spray in each nostril once daily (total 55 mcg/day).\n\nAdministration Advice\nShake and prime according to the device instructions. Gently blow the nose, tilt the head slightly forward and aim away from the nasal septum. Use regularly rather than only for immediate relief.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(74, 'Seasonal Allergic Rhinitis', 'Controls nasal symptoms caused by seasonal exposure to allergens such as pollen.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(74, 'Perennial Allergic Rhinitis', 'Helps manage persistent nasal symptoms associated with year-round allergens such as dust mites or animal dander.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(74, '01 — Activates Local Glucocorticoid Receptors', 'Fluticasone furoate binds glucocorticoid receptors in the nasal mucosa.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(74, '02 — Suppresses Allergic Inflammation', 'It reduces inflammatory-cell activity and the release of inflammatory mediators.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(74, '03 — Improves Nasal Symptoms', 'Reduced swelling and irritation help control congestion, discharge, sneezing and itching over time.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(74, 'nasal-bleeding-and-healing', 'Nasal Bleeding and Healing', 'Report persistent nosebleeds or nasal soreness. Recent nasal surgery, trauma or ulceration requires advice before use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(74, 'growth-eye-and-steroid-effects', 'Growth, Eye and Steroid Effects', 'Use the lowest effective dose. Long-term paediatric treatment needs growth monitoring. Report visual changes and review other steroid exposure.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(74, 'interactions-and-infection', 'Interactions and Infection', 'Review strong CYP3A4 inhibitors, including ritonavir or cobicistat. Untreated nasal infection and pregnancy require individual assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(75, 7, 'Flutiriv™ NS', 'flutiriv-ns', 'Flutiriv NS is a saline nasal spray that helps moisten dry nasal passages and loosen mucus.', 'Flutiriv NS is a saline nasal spray that helps moisten dry nasal passages and loosen mucus. It provides local physical support rather than a medicated decongestant effect. Regular use may improve comfort during dryness or congestion, with the spray technique and frequency adjusted to the person’s age and device instructions.', 'Sodium chloride 0.9% w/v aqueous nasal spray', '/assets/products/flutiriv-ns.jpg', 'published', 75, 'Flutiriv™ NS | Onecore Pharma', 'Flutiriv NS is a saline nasal spray that helps moisten dry nasal passages and loosen mucus.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(75, 'Sodium chloride 0.9% w/v aqueous nasal spray', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(75, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and older children: use 1–2 sprays in each nostril up to 4 times daily as needed. Infants require an age-appropriate saline-drop preparation and a separately prescribed technique.\n\nAdministration Advice\nGently clear the nose, insert the nozzle just inside the nostril and spray without forceful sniffing. Clean the nozzle after use and do not share the bottle.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(75, 'Dry or Irritated Nasal Passages', 'Helps moisten the nasal lining during dry weather, air-conditioned environments or other causes of local dryness.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(75, 'Thick Mucus and Nasal Congestion', 'Helps loosen nasal secretions and support clearance during a cold or alongside prescribed allergy treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(75, '01 — Moistens the Nasal Lining', 'The saline solution supplies local moisture to dry mucosal surfaces.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(75, '02 — Loosens Nasal Secretions', 'Fluid helps soften and dilute thick mucus.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(75, '03 — Supports Physical Clearance', 'Moist secretions are easier to clear through normal mucociliary activity and gentle nose blowing.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(75, 'device-hygiene', 'Device Hygiene', 'Do not share the nozzle. Follow cleaning and after-opening instructions to reduce contamination.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(75, 'persistent-symptoms', 'Persistent Symptoms', 'Prolonged blockage, recurrent bleeding, severe facial pain or fever needs medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(75, 'children-and-recent-surgery', 'Children and Recent Surgery', 'Use the correct device for age. Seek advice after nasal surgery or if an infant has feeding difficulty or breathing problems.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(76, 7, 'Otomentin™ 625', 'otomentin-625', 'Otomentin 625 combines amoxicillin with clavulanic acid for selected susceptible bacterial infections.', 'Otomentin 625 combines amoxicillin with clavulanic acid for selected susceptible bacterial infections. Amoxicillin disrupts bacterial cell wall formation, while clavulanic acid inhibits some enzymes that would otherwise inactivate it. The medicine should be used only for an appropriate bacterial infection, with the course adjusted to the diagnosis and kidney function.', 'Amoxicillin 500 mg + clavulanic acid 125 mg per tablet', '/assets/products/otomentin-625.jpg', 'published', 76, 'Otomentin™ 625 | Onecore Pharma', 'Otomentin 625 combines amoxicillin with clavulanic acid for selected susceptible bacterial infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(76, 'Amoxicillin 500 mg + clavulanic acid 125 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(76, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and children weighing 40 kg or more: take 1 tablet (500 mg/125 mg) every 8 hours for the prescribed course. Adjust the interval in kidney impairment.\n\nAdministration Advice\nSwallow with water at the start of a meal. Space doses about 8 hours apart and complete the prescribed course. Do not substitute two lower-strength tablets without checking clavulanate exposure.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, 'Bacterial Respiratory and ENT Infections', 'May treat selected susceptible sinus, ear or lower respiratory infections when this antibiotic is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, 'Skin and Soft Tissue Infections', 'May be prescribed for selected susceptible bacterial skin infections after assessment.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, 'Selected Urinary Tract Infections', 'May be used when clinical findings or culture results support this combination.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, '01 — Inhibits Bacterial Wall Formation', 'Amoxicillin binds penicillin-binding proteins and inhibits peptidoglycan cross-linking.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, '02 — Blocks Selected Resistance Enzymes', 'Clavulanic acid inhibits some beta-lactamases that would otherwise degrade amoxicillin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(76, '03 — Controls Susceptible Infection', 'The protected antibiotic can kill susceptible organisms at adequate tissue concentrations.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(76, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(76, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(76, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(76, 'previous-liver-injury', 'Previous Liver Injury', 'Avoid if previous amoxicillin/clavulanate caused jaundice or liver dysfunction. Report jaundice, dark urine or persistent abdominal pain.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(77, 7, 'Bilariv™', 'bilariv', 'Bilariv contains bilastine, a generally non-sedating antihistamine used to relieve allergic rhinitis and urticaria symptoms.', 'Bilariv contains bilastine, a generally non-sedating antihistamine used to relieve allergic rhinitis and urticaria symptoms. It blocks peripheral histamine H1 receptors and helps reduce sneezing, itching, watery eyes and wheals. Taking the tablet away from food and fruit juice is important because these can reduce absorption.', 'Bilastine 20 mg Tablets', '/assets/products/bilariv.jpg', 'published', 77, 'Bilariv™ | Onecore Pharma', 'Bilariv contains bilastine, a generally non-sedating antihistamine used to relieve allergic rhinitis and urticaria symptoms.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(77, 'Bilastine 20 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(77, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older: take 1 tablet (20 mg) once daily.\n\nAdministration Advice\nSwallow with water at least 1 hour before or 2 hours after food or fruit juice.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(77, 'Allergic Rhinoconjunctivitis', 'Relieves nasal and eye symptoms associated with seasonal or perennial allergic exposure.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(77, 'Urticaria', 'Helps relieve hives and associated itching when an oral antihistamine is prescribed.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(77, '01 — Blocks Peripheral Histamine Receptors', 'Bilastine selectively binds histamine H1 receptors outside the central nervous system.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(77, '02 — Limits Allergic Tissue Responses', 'It reduces histamine-related itching, vascular leakage and swelling.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(77, '03 — Relieves Allergy Symptoms', 'Reduced H1 signalling helps control rhinitis, conjunctival symptoms and urticarial itching.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(77, 'food-and-fruit-juice', 'Food and Fruit Juice', 'Food and fruit juice can reduce absorption. Maintain the recommended gap rather than taking the tablet with meals.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(77, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Moderate or severe kidney impairment combined with P-glycoprotein inhibitors may increase exposure. Review interacting medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(77, 'drowsiness-and-special-populations', 'Drowsiness and Special Populations', 'Individual sleepiness can occur. Assess driving tolerance and seek advice during pregnancy or breastfeeding.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(78, 8, 'Histocore™', 'histocore', 'Histocore combines botanical-derived ingredients, quercetin, vitamin C and bromelain for nutritional support.', 'Histocore combines botanical-derived ingredients, quercetin, vitamin C and bromelain for nutritional support. These ingredients have antioxidant or enzyme-related properties, but the finished product’s effect depends on the extract identities, standardisation and amounts. It may complement a clinician-directed wellness plan and should not replace prescribed treatment for allergy or respiratory disease.', 'Hesperidin Berberis aristata root ext. + Quercetin obtained from extracts of citrus fruits, vegetables and other plant sources + Vitamin C (L-Ascorbic acid) + Bromelain-pineapple (Ananas Comosus)', '/assets/therapeutic-general-medicine.jpg', 'published', 78, 'Histocore™ | Onecore Pharma', 'Histocore combines botanical-derived ingredients, quercetin, vitamin C and bromelain for nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(78, 'Hesperidin Berberis aristata root ext. + Quercetin obtained from extracts of citrus fruits, vegetables and other plant sources + Vitamin C (L-Ascorbic acid) + Bromelain-pineapple (Ananas Comosus)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(78, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nUse the verified finished-product directions, usually with food if an oral supplement. Do not substitute it for prescribed antihistamines, inhalers or emergency treatment.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(78, 'Supplemental Antioxidant Intake', 'May provide selected antioxidant ingredients when a clinician considers this blend appropriate alongside the diet.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(78, 'Adjunct Nutritional Support in Allergy Care', 'May complement an established care plan. Clinically reliable antihistamine or asthma-control effects are not established for this exact combination.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(78, '01 — Provides Plant-Derived Compounds', 'Quercetin and the specified botanicals supply polyphenols with antioxidant activity.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(78, '02 — Supplies Vitamin C and Bromelain', 'Vitamin C contributes to antioxidant systems, while bromelain provides proteolytic enzyme activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(78, '03 — Complements Dietary Support', 'These biochemical properties may support nutrition but do not establish treatment efficacy for allergy.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(78, 'extract-identity-and-interactions', 'Extract Identity and Interactions', 'Berberis extracts can interact with medicines and affect glucose. Confirm whether hesperidin and Berberis are separate ingredients.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(78, 'bleeding-and-allergy', 'Bleeding and Allergy', 'Bromelain may increase bleeding risk with anticoagulants. Avoid with relevant pineapple or ingredient allergy.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(78, 'pregnancy-and-respiratory-symptoms', 'Pregnancy and Respiratory Symptoms', 'Seek individual advice in pregnancy or breastfeeding. Wheeze, facial swelling or breathlessness needs appropriate medical treatment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(79, 8, 'Coldstar™', 'coldstar', 'Coldstar contains aromatic ingredients in a capsule intended to release vapours for inhalation.', 'Coldstar contains aromatic ingredients in a capsule intended to release vapours for inhalation. The vapours may provide a temporary sensation of easier breathing during nasal congestion. This is a symptomatic inhalation product, not an oral supplement, and it does not treat the cause of infection or replace asthma treatment.', 'Camphor 25 mg + chlorothymol 5 mg + eucalyptol 125 mg + menthol 65 mg + terpineol 120 mg per inhalation capsule', '/assets/therapeutic-general-medicine.jpg', 'published', 79, 'Coldstar™ | Onecore Pharma', 'Coldstar contains aromatic ingredients in a capsule intended to release vapours for inhalation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(79, 'Camphor 25 mg + chlorothymol 5 mg + eucalyptol 125 mg + menthol 65 mg + terpineol 120 mg per inhalation capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(79, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFor adults using the tissue-inhalation method: use the contents of 1 capsule per application. \n\nAdministration Advice\nCut the capsule and place its contents on a tissue or handkerchief; inhale the vapour without touching the nose or skin. For inhalation only. Do not swallow, instil into the nostrils or add to a nebuliser. Keep away from children and avoid hot-water steam exposure.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(79, 'Temporary Sensation of Nasal Congestion', 'May provide short-lived subjective relief of stuffiness during a cold when used according to the inhalation-product label.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(79, 'Congestion-Related Discomfort', 'Aromatic vapour may improve comfort when nasal blockage is troublesome, alongside appropriate supportive care.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(79, '01 — Releases Volatile Aromatic Compounds', 'The opened capsule releases menthol, eucalyptol and other aromatic vapours.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(79, '02 — Stimulates Airflow Sensation', 'Menthol activates cold-sensitive TRPM8 receptors, producing a cooling sensation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(79, '03 — Provides Temporary Comfort', 'The sensory effect may make breathing feel easier without reliably reducing physical nasal obstruction.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(79, 'poisoning-and-children', 'Poisoning and Children', 'Camphor-containing contents can be toxic if swallowed and may cause seizures. Keep securely away from children and follow the pack’s age restriction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(79, 'airway-sensitivity-and-eye-contact', 'Airway Sensitivity and Eye Contact', 'Stop if vapours cause wheezing, coughing or irritation. Avoid in sensitive asthma without advice and keep away from eyes.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(79, 'heat-and-handling', 'Heat and Handling', 'Do not use near flames or heated devices unless specifically designed for the product. Hot-water inhalation can cause serious burns, particularly in children.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(80, 7, 'Flutiriv™ AZ', 'flutiriv-az', 'Flutiriv AZ combines fluticasone propionate with azelastine in a nasal spray for selected allergic rhinitis symptoms.', 'Flutiriv AZ combines fluticasone propionate with azelastine in a nasal spray for selected allergic rhinitis symptoms. Fluticasone reduces nasal inflammation, while azelastine blocks histamine effects. The combination may be prescribed when one treatment is insufficient, with regular use and correct spray technique helping achieve consistent symptom control.', 'Fluticasone propionate 50 mcg + azelastine 140 mcg per metered nasal spray (as supplied)', '/assets/products/flutiriv-az.jpg', 'published', 80, 'Flutiriv™ AZ | Onecore Pharma', 'Flutiriv AZ combines fluticasone propionate with azelastine in a nasal spray for selected allergic rhinitis symptoms.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(80, 'Fluticasone propionate 50 mcg + azelastine 140 mcg per metered nasal spray (as supplied)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(80, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults and adolescents aged 12 years or older: use 1 spray in each nostril twice daily, morning and evening.\n\nAdministration Advice\nShake and prime the pump as directed on the device. Gently blow the nose, tilt the head slightly forward and aim away from the nasal septum. Breathe in gently during spraying; do not tilt the head backwards.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(80, 'Seasonal Allergic Rhinitis Requiring Combination Therapy', 'May be prescribed when an intranasal steroid or antihistamine alone does not adequately control symptoms.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(80, 'Persistent Allergic Rhinitis Symptoms', 'May help ongoing congestion, sneezing, itching and discharge when the clinician selects this combination under the local label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(80, '01 — Blocks Local Histamine Effects', 'Azelastine blocks H1 receptors within nasal tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(80, '02 — Reduces Nasal Inflammation', 'Fluticasone propionate activates glucocorticoid receptors and suppresses inflammatory responses.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(80, '03 — Improves Multiple Nasal Symptoms', 'Combined local actions can reduce congestion, sneezing, itching and discharge when appropriately prescribed.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(80, 'nosebleeds-and-local-injury', 'Nosebleeds and Local Injury', 'Persistent bleeding, soreness or ulceration requires review. Recent nasal surgery or trauma may delay suitability for treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(80, 'sleepiness-and-other-medicines', 'Sleepiness and Other Medicines', 'Azelastine may cause drowsiness. Avoid driving if affected and review alcohol, sedatives and strong CYP3A4 inhibitors.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(80, 'growth-and-eye-monitoring', 'Growth and Eye Monitoring', 'Use the lowest effective dose. Continued use in children needs growth review, and visual changes require medical assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(81, 7, 'Otomentin™ DS', 'otomentin-ds', 'Otomentin DS combines amoxicillin with clavulanic acid in a dry syrup for reconstitution.', 'Otomentin DS combines amoxicillin with clavulanic acid in a dry syrup for reconstitution. It is prescribed for selected susceptible bacterial infections in children. Amoxicillin disrupts the bacterial cell wall, while clavulanic acid protects against certain bacterial enzymes. Dosing must be calculated from body weight and the reconstituted concentration.', 'Amoxicillin 200 mg + clavulanic acid 28.5 mg per 5 mL after reconstitution (volume basis inferred)', '/assets/products/otomentin-ds.jpg', 'published', 81, 'Otomentin™ DS | Onecore Pharma', 'Otomentin DS combines amoxicillin with clavulanic acid in a dry syrup for reconstitution.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(81, 'Amoxicillin 200 mg + clavulanic acid 28.5 mg per 5 mL after reconstitution (volume basis inferred)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(81, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 3 months or older and under 40 kg: for less severe susceptible infection, give 0.3125 mL/kg per dose every 12 hours (25 mg/kg/day amoxicillin). For otitis media, sinusitis, lower-respiratory or more severe infection, give 0.5625 mL/kg per dose every 12 hours (45 mg/kg/day). Do not exceed the corresponding adult amoxicillin dose. The prescription must state the rounded mL dose and course.\n\nAdministration Advice\nReconstitute with the exact water volume on the pack. Shake well before each dose and measure with an oral syringe. Give at the start of a meal, about 12 hours apart. Follow the pack’s refrigeration and discard date.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(81, 'Bacterial Ear and Sinus Infections', 'May treat selected acute bacterial otitis media or sinusitis when the organism and clinical assessment support use.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(81, 'Selected Respiratory or Skin Infections', 'May be prescribed for susceptible lower respiratory or skin infections according to diagnosis and severity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(81, '01 — Provides Amoxicillin', 'Amoxicillin inhibits bacterial penicillin-binding proteins and cell wall cross-linking.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(81, '02 — Protects Against Some Beta-Lactamases', 'Clavulanic acid inhibits selected enzymes that can inactivate amoxicillin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(81, '03 — Treats Susceptible Bacteria', 'The combination provides antibacterial activity when the organism is susceptible and the weight-based dose is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(81, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(81, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(81, 'concentration-and-liver-history', 'Concentration and Liver History', 'Do not interchange different concentrations using the same mL dose. Previous amoxicillin/clavulanate-related jaundice or liver dysfunction is a contraindication.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(82, 7, 'Otomentin™ Duo', 'otomentin-duo', 'Otomentin Duo combines amoxicillin with clavulanic acid in a dry syrup for reconstitution.', 'Otomentin Duo combines amoxicillin with clavulanic acid in a dry syrup for reconstitution. It is prescribed for selected susceptible bacterial infections in children. Amoxicillin disrupts the bacterial cell wall, while clavulanic acid protects against certain bacterial enzymes. Dosing must be calculated from body weight and the reconstituted concentration.', 'Amoxicillin 400 mg + clavulanic acid 57 mg per 5 mL after reconstitution (volume basis inferred)', '/assets/products/otomentin-duo.jpg', 'published', 82, 'Otomentin™ Duo | Onecore Pharma', 'Otomentin Duo combines amoxicillin with clavulanic acid in a dry syrup for reconstitution.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(82, 'Amoxicillin 400 mg + clavulanic acid 57 mg per 5 mL after reconstitution (volume basis inferred)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(82, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 3 months or older and under 40 kg: for less severe susceptible infection, give 0.15625 mL/kg per dose every 12 hours (25 mg/kg/day amoxicillin). For otitis media, sinusitis, lower-respiratory or more severe infection, give 0.28125 mL/kg per dose every 12 hours (45 mg/kg/day). Do not exceed the corresponding adult amoxicillin dose. The prescription must state the rounded mL dose and course.\n\nAdministration Advice\nReconstitute with the exact water volume on the pack. Shake well before each dose and measure with an oral syringe. Give at the start of a meal, about 12 hours apart. Duo is twice the amoxicillin concentration of DS; do not reuse the DS mL dose. Follow the pack’s refrigeration and discard date.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(82, 'Bacterial Ear and Sinus Infections', 'May treat selected acute bacterial otitis media or sinusitis when the organism and clinical assessment support use.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(82, 'Selected Respiratory or Skin Infections', 'May be prescribed for susceptible lower respiratory or skin infections according to diagnosis and severity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(82, '01 — Provides Amoxicillin', 'Amoxicillin inhibits bacterial penicillin-binding proteins and cell wall cross-linking.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(82, '02 — Protects Against Some Beta-Lactamases', 'Clavulanic acid inhibits selected enzymes that can inactivate amoxicillin.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(82, '03 — Treats Susceptible Bacteria', 'The combination provides antibacterial activity when the organism is susceptible and the weight-based dose is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(82, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(82, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(82, 'concentration-and-liver-history', 'Concentration and Liver History', 'Do not interchange different concentrations using the same mL dose. Previous amoxicillin/clavulanate-related jaundice or liver dysfunction is a contraindication.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(83, 5, 'Moxable™', 'moxable', 'Moxable contains moxifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections.', 'Moxable contains moxifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections. It prevents susceptible bacteria from maintaining and reproducing their DNA. The drops should be used for the prescribed course, with careful dropper hygiene and medical review if pain, swelling or vision changes develop.', 'Moxifloxacin 0.5% w/v Eye Drops', '/assets/products/moxable.jpg', 'published', 83, 'Moxable™ | Onecore Pharma', 'Moxable contains moxifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(83, 'Moxifloxacin 0.5% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(83, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye three times daily for 7 days.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(83, 'Gram-Positive Bacterial Conjunctivitis', 'Treats conjunctival infection caused by susceptible gram-positive organisms when Moxifloxacin is an appropriate choice.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(83, 'Gram-Negative Bacterial Conjunctivitis', 'Treats susceptible gram-negative conjunctival infection after clinical assessment. It does not treat allergic or viral conjunctivitis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(83, '01 — Reaches the Infected Eye Surface', 'Moxifloxacin acts locally against susceptible bacteria at the ocular surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(83, '02 — Inhibits Bacterial DNA Enzymes', 'It inhibits DNA gyrase and topoisomerase IV, which are required for bacterial DNA maintenance.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(83, '03 — Kills Susceptible Bacteria', 'Interrupted DNA replication and repair lead to bacterial death.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(83, 'allergy-and-irritation', 'Allergy and Irritation', 'Avoid if allergic to this antibiotic or related medicines. Stop and seek urgent help for facial swelling, breathing difficulty or a severe rash.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(83, 'persistent-or-worsening-infection', 'Persistent or Worsening Infection', 'Seek review if symptoms worsen or fail to improve within 48 hours. Prolonged unnecessary use can encourage resistant bacteria or fungal overgrowth.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(83, 'contact-lenses-and-contamination', 'Contact Lenses and Contamination', 'Do not wear contact lenses during an eye infection. Keep the dropper sterile and follow the labelled discard period after opening.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(84, 8, 'Gatiquin™ HS', 'gatiquin-hs', 'Gatiquin HS contains gatifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections.', 'Gatiquin HS contains gatifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections. It prevents susceptible bacteria from maintaining and reproducing their DNA. The drops should be used for the prescribed course, with careful dropper hygiene and medical review if pain, swelling or vision changes develop.', 'Gatifloxacin 0.5% w/v Eye Drops', '/assets/therapeutic-general-medicine.jpg', 'published', 84, 'Gatiquin™ HS | Onecore Pharma', 'Gatiquin HS contains gatifloxacin, a topical fluoroquinolone antibiotic for selected bacterial conjunctival infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(84, 'Gatifloxacin 0.5% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(84, 'Administration and Dosage Guidance', 'Dosing and Schedule\nDay 1: instil 1 drop into each affected eye every 2 hours while awake, up to 8 doses. Days 2–7: instil 1 drop two to four times daily, using the frequency specified in the prescription.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(84, 'Gram-Positive Bacterial Conjunctivitis', 'Treats conjunctival infection caused by susceptible gram-positive organisms when Gatifloxacin is an appropriate choice.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(84, 'Gram-Negative Bacterial Conjunctivitis', 'Treats susceptible gram-negative conjunctival infection after clinical assessment. It does not treat allergic or viral conjunctivitis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(84, '01 — Reaches the Infected Eye Surface', 'Gatifloxacin acts locally against susceptible bacteria at the ocular surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(84, '02 — Inhibits Bacterial DNA Enzymes', 'It inhibits DNA gyrase and topoisomerase IV, which are required for bacterial DNA maintenance.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(84, '03 — Kills Susceptible Bacteria', 'Interrupted DNA replication and repair lead to bacterial death.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(84, 'allergy-and-irritation', 'Allergy and Irritation', 'Avoid if allergic to this antibiotic or related medicines. Stop and seek urgent help for facial swelling, breathing difficulty or a severe rash.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(84, 'persistent-or-worsening-infection', 'Persistent or Worsening Infection', 'Seek review if symptoms worsen or fail to improve within 48 hours. Prolonged unnecessary use can encourage resistant bacteria or fungal overgrowth.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(84, 'contact-lenses-and-contamination', 'Contact Lenses and Contamination', 'Do not wear contact lenses during an eye infection. Keep the dropper sterile and follow the labelled discard period after opening.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(85, 5, 'Moxable™-K', 'moxable-k', 'Moxable-K combines moxifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation.', 'Moxable-K combines moxifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation. The antibiotic acts against susceptible bacteria, while ketorolac reduces prostaglandin formation. Use should follow ophthalmic assessment because the combination is unsuitable for every red or painful eye.', 'Moxifloxacin 0.5% w/v + Ketorolac 0.4% w/v Eye Drops', '/assets/products/moxable-k.jpg', 'published', 85, 'Moxable™-K | Onecore Pharma', 'Moxable-K combines moxifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(85, 'Moxifloxacin 0.5% w/v + Ketorolac 0.4% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(85, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye three times daily for 7 days. Reassess before extending the antibiotic/NSAID combination.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(85, 'Selected Bacterial Ocular Infection with Inflammation', 'May be prescribed when a susceptible bacterial infection and a separate need for an anti-inflammatory are both present.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(85, 'Selected Perioperative Ocular Care', 'May be used when an ophthalmologist selects this combination for a defined surgical care plan under the local label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(85, '01 — Inhibits Bacterial DNA Enzymes', 'Moxifloxacin inhibits DNA gyrase and topoisomerase IV in susceptible bacteria.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(85, '02 — Reduces Prostaglandin Formation', 'Ketorolac inhibits cyclo-oxygenase enzymes involved in ocular pain and inflammation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(85, '03 — Controls Two Distinct Components', 'The combination addresses bacterial infection and associated inflammatory symptoms when both treatments are appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(85, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(85, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(85, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(85, 'antibiotic-allergy-and-resistance', 'Antibiotic Allergy and Resistance', 'Avoid with relevant quinolone allergy. Do not use for viral or allergic conjunctivitis, and avoid unnecessary prolonged antibiotic exposure.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(86, 5, 'Moxable™-DF', 'moxable-df', 'Moxable-DF combines moxifloxacin with difluprednate for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.', 'Moxable-DF combines moxifloxacin with difluprednate for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation. The antibiotic acts against susceptible bacteria, while the steroid reduces inflammation. An ophthalmologist should confirm the diagnosis because steroids can worsen certain infections and require eye-pressure monitoring.', 'Moxifloxacin 0.5% w/v + Difluprednate 0.05% w/v + Sordic Acid 1.P. 0.1% w/v Eye Drops', '/assets/products/moxable-df.jpg', 'published', 86, 'Moxable™-DF | Onecore Pharma', 'Moxable-DF combines moxifloxacin with difluprednate for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(86, 'Moxifloxacin 0.5% w/v + Difluprednate 0.05% w/v + Sordic Acid 1.P. 0.1% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(86, 'Administration and Dosage Guidance', 'Dosing and Schedule\nThis medicine is for external use only. Use it in the dose and duration as advised by your doctor.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake if the pack identifies the product as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(86, 'Steroid-Responsive Ocular Inflammation with Bacterial Infection', 'May be prescribed when a superficial susceptible bacterial infection coexists with an inflammatory condition requiring a corticosteroid.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(86, 'Selected Postoperative Inflammation with Bacterial Risk', 'May be used after eye surgery when the surgeon considers both ingredients necessary under the product’s approved directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(86, '01 — Provides Antibacterial Activity', 'Moxifloxacin inhibits bacterial DNA gyrase and topoisomerase IV.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(86, '02 — Suppresses Ocular Inflammation', 'Difluprednate activates glucocorticoid receptors and reduces inflammatory mediator activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(86, '03 — Addresses Two Treatment Needs', 'Antibacterial and anti-inflammatory actions work together only when both are justified by the diagnosis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(86, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(86, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(86, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(86, 'allergy-and-review', 'Allergy and Review', 'Avoid with relevant antibiotic allergy. Re-examine promptly if symptoms worsen or do not improve within 48 hours.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(87, 5, 'Lotovo™', 'lotovo', 'Lotovo contains loteprednol etabonate, a corticosteroid eye medicine used for selected steroid-responsive inflammation.', 'Lotovo contains loteprednol etabonate, a corticosteroid eye medicine used for selected steroid-responsive inflammation. It reduces inflammatory mediator activity and helps control redness, swelling and discomfort. Treatment requires an eye examination and an individual schedule because steroids can increase eye pressure, delay healing or worsen an unrecognised infection.', 'Loteprednol etabonate 0.5% w/v eye drops; benzalkonium chloride detail in source is unclear', '/assets/products/lotovo.jpg', 'published', 87, 'Lotovo™ | Onecore Pharma', 'Lotovo contains loteprednol etabonate, a corticosteroid eye medicine used for selected steroid-responsive inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(87, 'Loteprednol etabonate 0.5% w/v eye drops; benzalkonium chloride detail in source is unclear', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(87, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye four times daily. For postoperative inflammation, start 24 hours after surgery and continue for 2 weeks. Reassess if symptoms do not improve within 2 days; any increase or taper requires examination.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake well if supplied as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(87, 'Steroid-Responsive Anterior Eye Inflammation', 'May be prescribed for selected conjunctival, corneal or anterior segment inflammation after infection has been evaluated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(87, 'Postoperative Ocular Inflammation', 'May help control inflammation after eye surgery when prescribed and monitored by the surgeon.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(87, '01 — Activates Glucocorticoid Receptors', 'The corticosteroid binds intracellular glucocorticoid receptors in responsive ocular tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(87, '02 — Reduces Inflammatory Mediators', 'It alters gene activity and reduces inflammatory-cell recruitment and mediator production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(87, '03 — Controls Ocular Inflammation', 'Reduced inflammation can improve the prescribed steroid-responsive symptoms while monitoring continues.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(87, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(87, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(87, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(88, 5, 'Lotovo™-T', 'lotovo-t', 'Lotovo-T combines tobramycin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.', 'Lotovo-T combines tobramycin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation. The antibiotic acts against susceptible bacteria, while the steroid reduces inflammation. An ophthalmologist should confirm the diagnosis because steroids can worsen certain infections and require eye-pressure monitoring.', 'Loteprednol Etabonate 0.5% w/v + Tobramycin 0.3% w/v + Benzalkonium Chloride Solution IP 0.004% w/v Eye Drops', '/assets/products/lotovo-t.jpg', 'published', 88, 'Lotovo™-T | Onecore Pharma', 'Lotovo-T combines tobramycin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(88, 'Loteprednol Etabonate 0.5% w/v + Tobramycin 0.3% w/v + Benzalkonium Chloride Solution IP 0.004% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(88, 'Administration and Dosage Guidance', 'Dosing and Schedule\nThis medicine is for external use only. Use it in the dose and duration as advised by your doctor.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake if the pack identifies the product as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(88, 'Steroid-Responsive Ocular Inflammation with Bacterial Infection', 'May be prescribed when a superficial susceptible bacterial infection coexists with an inflammatory condition requiring a corticosteroid.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(88, 'Selected Postoperative Inflammation with Bacterial Risk', 'May be used after eye surgery when the surgeon considers both ingredients necessary under the product’s approved directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(88, '01 — Provides Antibacterial Activity', 'Tobramycin binds bacterial 30S ribosomes and disrupts protein synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(88, '02 — Suppresses Ocular Inflammation', 'Loteprednol activates glucocorticoid receptors and reduces inflammatory mediator activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(88, '03 — Addresses Two Treatment Needs', 'Antibacterial and anti-inflammatory actions work together only when both are justified by the diagnosis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(88, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(88, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(88, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(88, 'allergy-and-review', 'Allergy and Review', 'Avoid with relevant antibiotic allergy. Re-examine promptly if symptoms worsen or do not improve within 48 hours.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(89, 5, 'Lotovo™-M', 'lotovo-m', 'Lotovo-M combines moxifloxacin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.', 'Lotovo-M combines moxifloxacin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation. The antibiotic acts against susceptible bacteria, while the steroid reduces inflammation. An ophthalmologist should confirm the diagnosis because steroids can worsen certain infections and require eye-pressure monitoring.', 'Loteprednol Etabonate 0.5% w/v + Moxifloxacin 0.5% w/v + Benzalkonium Chloride Solution IP. 0.02% w/v Eye Drops', '/assets/products/lotovo-m.jpg', 'published', 89, 'Lotovo™-M | Onecore Pharma', 'Lotovo-M combines moxifloxacin with loteprednol for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(89, 'Loteprednol Etabonate 0.5% w/v + Moxifloxacin 0.5% w/v + Benzalkonium Chloride Solution IP. 0.02% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(89, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye four times daily. After surgery, begin 24 hours postoperatively and follow the surgeon’s stop or taper schedule. Reassess if symptoms fail to improve within 2 days.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake if the pack identifies the product as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(89, 'Steroid-Responsive Ocular Inflammation with Bacterial Infection', 'May be prescribed when a superficial susceptible bacterial infection coexists with an inflammatory condition requiring a corticosteroid.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(89, 'Selected Postoperative Inflammation with Bacterial Risk', 'May be used after eye surgery when the surgeon considers both ingredients necessary under the product’s approved directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(89, '01 — Provides Antibacterial Activity', 'Moxifloxacin inhibits bacterial DNA gyrase and topoisomerase IV.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(89, '02 — Suppresses Ocular Inflammation', 'Loteprednol activates glucocorticoid receptors and reduces inflammatory mediator activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(89, '03 — Addresses Two Treatment Needs', 'Antibacterial and anti-inflammatory actions work together only when both are justified by the diagnosis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(89, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(89, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(89, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(89, 'allergy-and-review', 'Allergy and Review', 'Avoid with relevant antibiotic allergy. Re-examine promptly if symptoms worsen or do not improve within 48 hours.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(90, 5, 'Tobraway™-F', 'tobraway-f', 'TOBRAWAY-F combines tobramycin with fluorometholone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.', 'TOBRAWAY-F combines tobramycin with fluorometholone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation. The antibiotic acts against susceptible bacteria, while the steroid reduces inflammation. An ophthalmologist should confirm the diagnosis because steroids can worsen certain infections and require eye-pressure monitoring.', 'Tobramycin 0.3% w/v + fluorometholone 0.1% w/v eye drops', '/assets/products/tobraway-f.jpg', 'published', 90, 'Tobraway™-F | Onecore Pharma', 'TOBRAWAY-F combines tobramycin with fluorometholone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(90, 'Tobramycin 0.3% w/v + fluorometholone 0.1% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(90, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye every 4–6 hours. Reduce frequency gradually as inflammation improves according to the ophthalmologist’s examination and taper schedule. Review intraocular pressure if treatment exceeds 10 days.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake if the pack identifies the product as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(90, 'Steroid-Responsive Ocular Inflammation with Bacterial Infection', 'May be prescribed when a superficial susceptible bacterial infection coexists with an inflammatory condition requiring a corticosteroid.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(90, 'Selected Postoperative Inflammation with Bacterial Risk', 'May be used after eye surgery when the surgeon considers both ingredients necessary under the product’s approved directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(90, '01 — Provides Antibacterial Activity', 'Tobramycin binds bacterial 30S ribosomes and disrupts protein synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(90, '02 — Suppresses Ocular Inflammation', 'Fluorometholone activates glucocorticoid receptors and reduces inflammatory mediator activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(90, '03 — Addresses Two Treatment Needs', 'Antibacterial and anti-inflammatory actions work together only when both are justified by the diagnosis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(90, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(90, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(90, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(90, 'allergy-and-review', 'Allergy and Review', 'Avoid with relevant antibiotic allergy. Re-examine promptly if symptoms worsen or do not improve within 48 hours.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(91, 5, 'Angelcent™-TM', 'angelcent-tm', 'Angelcent-TM combines dorzolamide with timolol to lower raised pressure inside the eye.', 'Angelcent-TM combines dorzolamide with timolol to lower raised pressure inside the eye. The ingredients reduce aqueous humour production through different pathways, and their combined effect can improve pressure control. It is prescribed for appropriate glaucoma or ocular hypertension when combination treatment is needed, with regular ophthalmic monitoring.', 'Dorzolamide 2% w/v + timolol 0.5% w/v + benzalkonium chloride 0.02% w/v eye drops', '/assets/products/angelcent-tm.jpg', 'published', 91, 'Angelcent™-TM | Onecore Pharma', 'Angelcent-TM combines dorzolamide with timolol to lower raised pressure inside the eye.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(91, 'Dorzolamide 2% w/v + timolol 0.5% w/v + benzalkonium chloride 0.02% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(91, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye twice daily, approximately 12 hours apart. Continue regularly and reassess intraocular pressure at scheduled visits.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(91, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(91, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(91, '01 — Reduces Aqueous Production', 'Dorzolamide inhibits carbonic anhydrase in the ciliary body.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(91, '02 — Adds Beta-Blockade', 'Timolol blocks beta-adrenergic receptors and further reduces aqueous humour formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(91, '03 — Lowers Intraocular Pressure', 'Reduced fluid production helps control pressure and reduce further optic nerve injury risk.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(91, 'asthma-and-heart-conditions', 'Asthma and Heart Conditions', 'Timolol-containing drops are contraindicated in asthma, significant bradycardia, certain heart blocks and uncontrolled cardiac failure. Eye drops can have systemic effects.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(91, 'interactions-and-low-blood-glucose', 'Interactions and Low Blood Glucose', 'Review oral beta-blockers, verapamil, diltiazem and other cardiac medicines. Beta-blockade may mask warning signs of hypoglycaemia.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(91, 'sulfonamide-reactions-and-kidney-disease', 'Sulfonamide Reactions and Kidney Disease', 'Carbonic anhydrase inhibitors may cause sulfonamide-type hypersensitivity. Severe kidney impairment or acid-base disturbance requires avoidance or specialist review.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(91, 'application-and-follow-up', 'Application and Follow-Up', 'Use punctal pressure after instillation to reduce systemic absorption. Attend eye-pressure checks and seek advice for breathing difficulty, faintness or a slow pulse.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(92, 5, 'Brimway™-TM', 'brimway-tm', 'Brimway-TM combines brimonidine with timolol to lower raised pressure inside the eye.', 'Brimway-TM combines brimonidine with timolol to lower raised pressure inside the eye. The ingredients reduce aqueous humour production through different pathways, and brimonidine also supports fluid drainage. It is prescribed for appropriate glaucoma or ocular hypertension when combination treatment is needed, with regular ophthalmic monitoring.', 'Brimonidine Tartrate 0.2% w/v + Timolol Maleate 0.5% w/v + Benzalkonium chloride Solution IP 0.02% w/v Eye Drops', '/assets/products/brimway-tm.jpg', 'published', 92, 'Brimway™-TM | Onecore Pharma', 'Brimway-TM combines brimonidine with timolol to lower raised pressure inside the eye.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(92, 'Brimonidine Tartrate 0.2% w/v + Timolol Maleate 0.5% w/v + Benzalkonium chloride Solution IP 0.02% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(92, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye twice daily, approximately 12 hours apart. Continue regularly and reassess intraocular pressure at scheduled visits.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(92, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(92, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(92, '01 — Reduces Aqueous Production', 'Brimonidine activates alpha-2 adrenergic receptors and reduces aqueous secretion.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(92, '02 — Adds Beta-Blockade', 'Timolol blocks beta-adrenergic receptors and further reduces aqueous humour formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(92, '03 — Lowers Intraocular Pressure', 'Reduced fluid production and improved outflow helps control pressure and reduce further optic nerve injury risk.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(92, 'asthma-and-heart-conditions', 'Asthma and Heart Conditions', 'Timolol-containing drops are contraindicated in asthma, significant bradycardia, certain heart blocks and uncontrolled cardiac failure. Eye drops can have systemic effects.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(92, 'interactions-and-low-blood-glucose', 'Interactions and Low Blood Glucose', 'Review oral beta-blockers, verapamil, diltiazem and other cardiac medicines. Beta-blockade may mask warning signs of hypoglycaemia.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(92, 'infants-children-and-sedation', 'Infants, Children and Sedation', 'Brimonidine is contraindicated under 2 years and can cause serious sedation or breathing suppression in young children. Paediatric use requires specialist care.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(92, 'application-and-follow-up', 'Application and Follow-Up', 'Use punctal pressure after instillation to reduce systemic absorption. Attend eye-pressure checks and seek advice for breathing difficulty, faintness or a slow pulse.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(93, 5, 'Nepsolve™', 'nepsolve', 'Nepsolve contains nepafenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery.', 'Nepsolve contains nepafenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery. It reduces prostaglandin activity associated with ocular pain and inflammation. Treatment is limited to the surgeon’s prescribed schedule because prolonged or inappropriate use may delay healing or cause serious corneal adverse effects.', 'Nepafenac 0.1% w/v Eye Drops', '/assets/products/nepsolve.jpg', 'published', 93, 'Nepsolve™ | Onecore Pharma', 'Nepsolve contains nepafenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(93, 'Nepafenac 0.1% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(93, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into the operated eye three times daily, starting 1 day before cataract surgery, continuing on the day of surgery and for 14 days afterwards. The surgical team must prescribe any additional preoperative dose.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake the suspension well before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(93, 'Pain Associated with Cataract Surgery', 'Helps reduce ocular pain during the prescribed perioperative or postoperative treatment period.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(93, 'Inflammation Associated with Cataract Surgery', 'Helps control postoperative inflammation when selected by the ophthalmologist.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(93, '01 — Acts within Ocular Tissues', 'Nepafenac penetrates ocular tissues and is converted to the active anti-inflammatory amfenac.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(93, '02 — Inhibits Cyclo-Oxygenase', 'The active medicine reduces cyclo-oxygenase-dependent prostaglandin synthesis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(93, '03 — Reduces Pain and Inflammation', 'Lower prostaglandin activity helps control surgery-related ocular symptoms.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(93, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(93, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(93, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(94, 5, 'Olgerix™', 'olgerix', 'Olgerix contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis.', 'Olgerix contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis. It blocks histamine-related responses at the ocular surface and helps limit mediator release. The dosing frequency depends on concentration, and infection or unexplained eye pain should be assessed separately.', 'Olopatadine 0.1% w/v eye drops', '/assets/products/olgerix.jpg', 'published', 94, 'Olgerix™ | Onecore Pharma', 'Olgerix contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(94, 'Olopatadine 0.1% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(94, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye twice daily, 6–8 hours apart.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(94, 'Seasonal Allergic Conjunctivitis', 'Helps relieve ocular itching associated with seasonal allergen exposure.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(94, 'Perennial Allergic Conjunctivitis', 'May relieve persistent allergen-related eye itching when prescribed according to the product label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(94, '01 — Blocks Histamine H1 Receptors', 'Olopatadine prevents histamine from activating H1 receptors at the ocular surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(94, '02 — Stabilises Mast Cells', 'It reduces release of mediators involved in the allergic response.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(94, '03 — Relieves Allergy-Related Itching', 'Reduced histamine activity helps control itching and associated allergic discomfort.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(94, 'infection-and-persistent-symptoms', 'Infection and Persistent Symptoms', 'Pain, purulent discharge, light sensitivity, reduced vision or persistent redness needs examination rather than repeated allergy-drop use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(94, 'contact-lenses-and-preservatives', 'Contact Lenses and Preservatives', 'Remove lenses before instillation and follow label advice on reinsertion, commonly after at least 10 minutes. Do not treat lens-related irritation with these drops.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(94, 'allergy-and-age-specific-use', 'Allergy and Age-Specific Use', 'Stop for a significant allergic reaction. Use in young children, pregnancy or breastfeeding requires individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(95, 5, 'Olgerix™ Max', 'olgerix-max', 'Olgerix MAX contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis.', 'Olgerix MAX contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis. It blocks histamine-related responses at the ocular surface and helps limit mediator release. The dosing frequency depends on concentration, and infection or unexplained eye pain should be assessed separately.', 'Olopatadine 0.7% w/v eye drops', '/assets/products/olgerix-max.jpg', 'published', 95, 'Olgerix™ Max | Onecore Pharma', 'Olgerix MAX contains olopatadine, an antihistamine and mast-cell stabiliser used to relieve itching associated with allergic conjunctivitis.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(95, 'Olopatadine 0.7% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(95, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye once daily. Do not exceed 1 dose per eye in 24 hours.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(95, 'Seasonal Allergic Conjunctivitis', 'Helps relieve ocular itching associated with seasonal allergen exposure.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(95, 'Perennial Allergic Conjunctivitis', 'May relieve persistent allergen-related eye itching when prescribed according to the product label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(95, '01 — Blocks Histamine H1 Receptors', 'Olopatadine prevents histamine from activating H1 receptors at the ocular surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(95, '02 — Stabilises Mast Cells', 'It reduces release of mediators involved in the allergic response.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(95, '03 — Relieves Allergy-Related Itching', 'Reduced histamine activity helps control itching and associated allergic discomfort.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(95, 'infection-and-persistent-symptoms', 'Infection and Persistent Symptoms', 'Pain, purulent discharge, light sensitivity, reduced vision or persistent redness needs examination rather than repeated allergy-drop use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(95, 'contact-lenses-and-preservatives', 'Contact Lenses and Preservatives', 'Remove lenses before instillation and follow label advice on reinsertion, commonly after at least 10 minutes. Do not treat lens-related irritation with these drops.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(95, 'allergy-and-age-specific-use', 'Allergy and Age-Specific Use', 'Stop for a significant allergic reaction. Use in young children, pregnancy or breastfeeding requires individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(96, 5, 'Fixtear™-PG', 'fixtear-pg', 'Fixtear-PG contains polyethylene glycol and propylene glycol for support of a dry ocular surface.', 'Fixtear-PG contains polyethylene glycol and propylene glycol for support of a dry ocular surface. The polymers help retain moisture and support tear-film coverage. The drops provide temporary comfort and lubrication. Persistent symptoms, pain or visual disturbance require examination to identify the cause and determine whether additional treatment is needed.', 'Polyethlene Glycol 400 IP 0.4% w/v + Propylene Glycol IP 0.3% + Sodium Perborate BP 0.005% w/v Eye Drops', '/assets/products/fixtear-pg.jpg', 'published', 96, 'Fixtear™-PG | Onecore Pharma', 'Fixtear-PG contains polyethylene glycol and propylene glycol for support of a dry ocular surface.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(96, 'Polyethlene Glycol 400 IP 0.4% w/v + Propylene Glycol IP 0.3% + Sodium Perborate BP 0.005% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(96, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye as needed for dryness. Persistent symptoms, frequent daily use or worsening vision require assessment.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(96, 'Dry-Eye Discomfort', 'Provides temporary relief of dryness-related burning, irritation or a gritty sensation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(96, 'Environmental Ocular Surface Irritation', 'May improve comfort during wind exposure, air-conditioning or reduced blinking when symptoms are related to dryness.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(96, '01 — Spreads over the Ocular Surface', 'The lubricant forms a moist film across the cornea and conjunctiva.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(96, '02 — Retains Water and Reduces Friction', 'Polyethylene glycol and propylene glycol help maintain lubrication and surface hydration.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(96, '03 — Improves Temporary Comfort', 'Better lubrication reduces dryness-related friction and irritation without treating every underlying cause of dry eye.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(96, 'persistent-pain-or-vision-change', 'Persistent Pain or Vision Change', 'Stop and seek examination for eye pain, reduced vision, marked redness or symptoms that persist or worsen.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(96, 'dropper-hygiene-and-discard-period', 'Dropper Hygiene and Discard Period', 'Do not touch the tip, share the bottle or use cloudy or discoloured solution. Follow the exact after-opening discard period.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(96, 'contact-lenses-and-blurring', 'Contact Lenses and Blurring', 'Check compatibility with contact lenses and remove them if the label requires it. Wait until temporary blurring clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(97, 5, 'Fixtear™', 'fixtear', 'Fixtear contains carboxymethylcellulose for support of a dry ocular surface.', 'Fixtear contains carboxymethylcellulose for support of a dry ocular surface. The cellulose polymer binds water and improves lubrication of the ocular surface. The drops provide temporary comfort and lubrication. Persistent symptoms, pain or visual disturbance require examination to identify the cause and determine whether additional treatment is needed.', 'Carboxymethylcellulose sodium 0.5% w/v + stabilised oxychloro complex 0.0075% w/v eye drops (SOC identity inferred)', '/assets/products/fixtear.jpg', 'published', 97, 'Fixtear™ | Onecore Pharma', 'Fixtear contains carboxymethylcellulose for support of a dry ocular surface.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(97, 'Carboxymethylcellulose sodium 0.5% w/v + stabilised oxychloro complex 0.0075% w/v eye drops (SOC identity inferred)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(97, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye as needed for dryness. Persistent symptoms, frequent daily use or worsening vision require assessment.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(97, 'Dry-Eye Discomfort', 'Provides temporary relief of dryness-related burning, irritation or a gritty sensation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(97, 'Environmental Ocular Surface Irritation', 'May improve comfort during wind exposure, air-conditioning or reduced blinking when symptoms are related to dryness.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(97, '01 — Spreads over the Ocular Surface', 'The lubricant forms a moist film across the cornea and conjunctiva.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(97, '02 — Retains Water and Reduces Friction', 'Carboxymethylcellulose binds water and improves the lubricating tear layer.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(97, '03 — Improves Temporary Comfort', 'Better lubrication reduces dryness-related friction and irritation without treating every underlying cause of dry eye.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(97, 'persistent-pain-or-vision-change', 'Persistent Pain or Vision Change', 'Stop and seek examination for eye pain, reduced vision, marked redness or symptoms that persist or worsen.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(97, 'dropper-hygiene-and-discard-period', 'Dropper Hygiene and Discard Period', 'Do not touch the tip, share the bottle or use cloudy or discoloured solution. Follow the exact after-opening discard period.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(97, 'contact-lenses-and-blurring', 'Contact Lenses and Blurring', 'Check compatibility with contact lenses and remove them if the label requires it. Wait until temporary blurring clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(98, 5, 'Fixtear™ Plus', 'fixtear-plus', 'Fixtear Plus contains carboxymethylcellulose, glycerine and N-acetylcysteine for support of a dry ocular surface.', 'Fixtear Plus contains carboxymethylcellulose, glycerine and N-acetylcysteine for support of a dry ocular surface. The lubricants retain moisture, while N-acetylcysteine may influence mucus properties. The drops provide temporary comfort and lubrication. Persistent symptoms, pain or visual disturbance require examination to identify the cause and determine whether additional treatment is needed.', 'Glycerine 1% w/v + carboxymethylcellulose sodium 0.3% w/v + N-acetylcysteine 1% w/v + boric acid 0.3% w/v + benzyl alcohol 0.1% w/v eye drops', '/assets/products/fixtear-plus.jpg', 'published', 98, 'Fixtear™ Plus | Onecore Pharma', 'Fixtear Plus contains carboxymethylcellulose, glycerine and N-acetylcysteine for support of a dry ocular surface.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(98, 'Glycerine 1% w/v + carboxymethylcellulose sodium 0.3% w/v + N-acetylcysteine 1% w/v + boric acid 0.3% w/v + benzyl alcohol 0.1% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(98, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye three times daily. Review persistent dryness or irritation rather than increasing frequency indefinitely.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(98, 'Dry-Eye Discomfort', 'Provides temporary relief of dryness-related burning, irritation or a gritty sensation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(98, 'Environmental Ocular Surface Irritation', 'May improve comfort during wind exposure, air-conditioning or reduced blinking when symptoms are related to dryness.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(98, '01 — Spreads over the Ocular Surface', 'The lubricant forms a moist film across the cornea and conjunctiva.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(98, '02 — Retains Water and Reduces Friction', 'Carboxymethylcellulose binds water and improves the lubricating tear layer.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(98, '03 — Improves Temporary Comfort', 'Better lubrication reduces dryness-related friction and irritation without treating every underlying cause of dry eye.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(98, 'persistent-pain-or-vision-change', 'Persistent Pain or Vision Change', 'Stop and seek examination for eye pain, reduced vision, marked redness or symptoms that persist or worsen.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(98, 'dropper-hygiene-and-discard-period', 'Dropper Hygiene and Discard Period', 'Do not touch the tip, share the bottle or use cloudy or discoloured solution. Follow the exact after-opening discard period.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(98, 'contact-lenses-and-blurring', 'Contact Lenses and Blurring', 'Check compatibility with contact lenses and remove them if the label requires it. Wait until temporary blurring clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(99, 5, 'Ocuvion™', 'ocuvion', 'Ocuvion contains sodium hyaluronate for support of a dry ocular surface.', 'Ocuvion contains sodium hyaluronate for support of a dry ocular surface. Hyaluronate binds water and supports a hydrated, lubricated ocular surface. The drops provide temporary comfort and lubrication. Persistent symptoms, pain or visual disturbance require examination to identify the cause and determine whether additional treatment is needed.', 'Sodium Hyaluronate 0.10% w/v Sodium Perborate 0.028% w/v Eye Drops', '/assets/products/ocuvion.jpg', 'published', 99, 'Ocuvion™ | Onecore Pharma', 'Ocuvion contains sodium hyaluronate for support of a dry ocular surface.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(99, 'Sodium Hyaluronate 0.10% w/v Sodium Perborate 0.028% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(99, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye as needed for dryness. Persistent symptoms, frequent daily use or worsening vision require assessment.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(99, 'Dry-Eye Discomfort', 'Provides temporary relief of dryness-related burning, irritation or a gritty sensation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(99, 'Environmental Ocular Surface Irritation', 'May improve comfort during wind exposure, air-conditioning or reduced blinking when symptoms are related to dryness.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(99, '01 — Spreads over the Ocular Surface', 'The lubricant forms a moist film across the cornea and conjunctiva.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(99, '02 — Retains Water and Reduces Friction', 'Sodium hyaluronate binds water and supports tear-film viscoelasticity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(99, '03 — Improves Temporary Comfort', 'Better lubrication reduces dryness-related friction and irritation without treating every underlying cause of dry eye.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(99, 'persistent-pain-or-vision-change', 'Persistent Pain or Vision Change', 'Stop and seek examination for eye pain, reduced vision, marked redness or symptoms that persist or worsen.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(99, 'dropper-hygiene-and-discard-period', 'Dropper Hygiene and Discard Period', 'Do not touch the tip, share the bottle or use cloudy or discoloured solution. Follow the exact after-opening discard period.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(99, 'contact-lenses-and-blurring', 'Contact Lenses and Blurring', 'Check compatibility with contact lenses and remove them if the label requires it. Wait until temporary blurring clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(100, 5, 'Brosolve™', 'brosolve', 'Brosolve contains bromfenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery.', 'Brosolve contains bromfenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery. It reduces prostaglandin activity associated with ocular pain and inflammation. Treatment is limited to the surgeon’s prescribed schedule because prolonged or inappropriate use may delay healing or cause serious corneal adverse effects.', 'Bromfenac 0.09% w/v + benzalkonium chloride 0.005% w/v eye drops', '/assets/products/brosolve.jpg', 'published', 100, 'Brosolve™ | Onecore Pharma', 'Brosolve contains bromfenac, a non-steroidal anti-inflammatory eye medicine used around cataract surgery.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(100, 'Bromfenac 0.09% w/v + benzalkonium chloride 0.005% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(100, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFor the 0.09% twice-daily formulation used as the reference: instil 1 drop into the operated eye twice daily for 14 days, starting the day after cataract surgery. The source strength of 0.00% must be corrected and the twice-daily formulation confirmed before publication.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(100, 'Pain Associated with Cataract Surgery', 'Helps reduce ocular pain during the prescribed perioperative or postoperative treatment period.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(100, 'Inflammation Associated with Cataract Surgery', 'Helps control postoperative inflammation when selected by the ophthalmologist.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(100, '01 — Acts within Ocular Tissues', 'Bromfenac penetrates ocular tissues after topical application.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(100, '02 — Inhibits Cyclo-Oxygenase', 'The active medicine reduces cyclo-oxygenase-dependent prostaglandin synthesis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(100, '03 — Reduces Pain and Inflammation', 'Lower prostaglandin activity helps control surgery-related ocular symptoms.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(100, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(100, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(100, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(101, 5, 'Optivro™', 'optivro', 'Optivro combines lutein, zeaxanthin and astaxanthin with vitamins A, C and E for ocular nutritional support.', 'Optivro combines lutein, zeaxanthin and astaxanthin with vitamins A, C and E for ocular nutritional support. These nutrients participate in retinal or antioxidant functions. It may complement dietary measures when appropriate, but this formulation should not be presented as an AREDS2-equivalent supplement or a treatment that restores lost vision.', 'Astaxanthin 4 mg Zeaxanthin 4 mg + Lutein 20 mg + Vit A 2500 IU Vit C 240 mg + Vitamin E Acetate 120 IU Softgel Capsules', '/assets/therapeutic-ophthalmology.jpg', 'published', 101, 'Optivro™ | Onecore Pharma', 'Optivro combines lutein, zeaxanthin and astaxanthin with vitamins A, C and E for ocular nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(101, 'Astaxanthin 4 mg Zeaxanthin 4 mg + Lutein 20 mg + Vit A 2500 IU Vit C 240 mg + Vitamin E Acetate 120 IU Softgel Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(101, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 softgel capsule once daily.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(101, 'Inadequate Ocular Micronutrient Intake', 'Supplies selected carotenoids and vitamins when dietary intake is insufficient and the clinician considers this combination appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(101, 'Adjunct Retinal Nutritional Support', 'May complement an individual eye-care plan. The formula has not been established as a substitute for evidence-based AREDS2 treatment in eligible patients.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(101, '01 — Supplies Retinal Carotenoids', 'Lutein and zeaxanthin are constituents of macular pigment.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(101, '02 — Provides Antioxidant Nutrients', 'Vitamins C and E and the carotenoids participate in antioxidant processes.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(101, '03 — Supports Normal Visual Nutrition', 'Vitamin A contributes to visual-cycle function when intake is adequate. Supplementation does not reverse established retinal damage.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(101, 'vitamin-a-and-pregnancy', 'Vitamin A and Pregnancy', 'Check the vitamin A form and total intake. Excess preformed vitamin A can harm a fetus.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(101, 'duplicate-antioxidants-and-interactions', 'Duplicate Antioxidants and Interactions', 'Review other vitamins, anticoagulants and cancer treatment before use. Avoid assuming more antioxidant supplementation is better.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(101, 'eye-disease-assessment', 'Eye Disease Assessment', 'New distortion, sudden vision loss or a visual-field change requires urgent examination. Supplements do not replace retinal treatment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(102, 5, 'Brinstar™', 'brinstar', 'Brinstar contains brinzolamide, a prescription eye medicine that lowers raised intraocular pressure.', 'Brinstar contains brinzolamide, a prescription eye medicine that lowers raised intraocular pressure. It reduces aqueous humour production by inhibiting carbonic anhydrase in the eye. It is used in appropriate open-angle glaucoma or ocular hypertension, with regular checks to assess pressure control and tolerability.', 'Brinzolamide 1% w/v Eye Drops', '/assets/products/brinstar.jpg', 'published', 102, 'Brinstar™ | Onecore Pharma', 'Brinstar contains brinzolamide, a prescription eye medicine that lowers raised intraocular pressure.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(102, 'Brinzolamide 1% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(102, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye three times daily, at evenly spaced intervals.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label. Shake the suspension well before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(102, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(102, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(102, '01 — Inhibits Carbonic Anhydrase', 'Brinzolamide inhibits carbonic anhydrase II within the ciliary processes.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(102, '02 — Reduces Bicarbonate-Dependent Secretion', 'Reduced bicarbonate formation decreases sodium and fluid transport into the eye.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(102, '03 — Lowers Eye Pressure', 'Reduced aqueous humour production lowers intraocular pressure.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(102, 'sulfonamide-reactions-and-kidney-disease', 'Sulfonamide Reactions and Kidney Disease', 'Carbonic anhydrase inhibitors may cause sulfonamide-type hypersensitivity. Severe kidney impairment or acid-base disturbance requires avoidance or specialist review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(102, 'corneal-disease-and-other-medicines', 'Corneal Disease and Other Medicines', 'Corneal endothelial disease needs assessment. Review oral carbonic anhydrase inhibitors and high-dose salicylates.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(102, 'vision-and-contact-lenses', 'Vision and Contact Lenses', 'Temporary blurring may occur. Follow preservative-related contact-lens advice and wait until vision clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(103, 8, 'Gatiquin™-KT', 'gatiquin-kt', 'Gatiquin-KT combines gatifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation.', 'Gatiquin-KT combines gatifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation. The antibiotic acts against susceptible bacteria, while ketorolac reduces prostaglandin formation. Use should follow ophthalmic assessment because the combination is unsuitable for every red or painful eye.', 'Gatifloxacin 0.3% w/v + ketorolac 0.4% w/v eye drops', '/assets/therapeutic-general-medicine.jpg', 'published', 103, 'Gatiquin™-KT | Onecore Pharma', 'Gatiquin-KT combines gatifloxacin with ketorolac for selected eye conditions requiring antibacterial treatment and non-steroidal control of pain or inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(103, 'Gatifloxacin 0.3% w/v + ketorolac 0.4% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(103, 'Administration and Dosage Guidance', 'Dosing and Schedule\nThis medicine is for external use only. Take it in the dose and duration as advised by your doctor.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(103, 'Selected Bacterial Ocular Infection with Inflammation', 'May be prescribed when a susceptible bacterial infection and a separate need for an anti-inflammatory are both present.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(103, 'Selected Perioperative Ocular Care', 'May be used when an ophthalmologist selects this combination for a defined surgical care plan under the local label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(103, '01 — Inhibits Bacterial DNA Enzymes', 'Gatifloxacin inhibits DNA gyrase and topoisomerase IV in susceptible bacteria.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(103, '02 — Reduces Prostaglandin Formation', 'Ketorolac inhibits cyclo-oxygenase enzymes involved in ocular pain and inflammation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(103, '03 — Controls Two Distinct Components', 'The combination addresses bacterial infection and associated inflammatory symptoms when both treatments are appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(103, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(103, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(103, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(103, 'antibiotic-allergy-and-resistance', 'Antibiotic Allergy and Resistance', 'Avoid with relevant quinolone allergy. Do not use for viral or allergic conjunctivitis, and avoid unnecessary prolonged antibiotic exposure.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(104, 5, 'Brimway™', 'brimway', 'Brimway contains brimonidine, a prescription eye medicine that lowers raised intraocular pressure.', 'Brimway contains brimonidine, a prescription eye medicine that lowers raised intraocular pressure. It reduces aqueous humour production and increases its drainage through alpha-2 receptor activity. It is used in appropriate open-angle glaucoma or ocular hypertension, with regular checks to assess pressure control and tolerability.', 'Brimonidine Tartrate 0.2% w/v Eye Drops', '/assets/products/brimway.jpg', 'published', 104, 'Brimway™ | Onecore Pharma', 'Brimway contains brimonidine, a prescription eye medicine that lowers raised intraocular pressure.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(104, 'Brimonidine Tartrate 0.2% w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(104, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye three times daily, approximately 8 hours apart. Do not use in children younger than 2 years.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(104, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(104, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(104, '01 — Activates Alpha-2 Receptors', 'Brimonidine stimulates alpha-2 adrenergic receptors in ocular tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(104, '02 — Changes Fluid Dynamics', 'It reduces aqueous secretion and increases uveoscleral outflow.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(104, '03 — Lowers Eye Pressure', 'Reduced fluid accumulation helps control intraocular pressure.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(104, 'infants-children-and-sedation', 'Infants, Children and Sedation', 'Brimonidine is contraindicated under 2 years and can cause serious sedation or breathing suppression in young children. Paediatric use requires specialist care.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(104, 'blood-pressure-and-interactions', 'Blood Pressure and Interactions', 'Review low blood pressure, cardiovascular disease, sedatives and monoamine oxidase inhibitors. Drowsiness and dizziness may occur.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(104, 'allergy-and-follow-up', 'Allergy and Follow-Up', 'Delayed allergic conjunctivitis can occur. Report persistent redness or swelling and attend regular pressure checks.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(105, 5, 'Rixtear™-F', 'rixtear-f', 'Rixtear-F combines flurbiprofen with hypromellose for selected ophthalmic use around surgery.', 'Rixtear-F combines flurbiprofen with hypromellose for selected ophthalmic use around surgery. Flurbiprofen reduces prostaglandin formation, while hypromellose supports surface lubrication. The formulation may be used within an ophthalmologist-directed surgical plan, with the timing and purpose determined by the product’s approved directions rather than general dry-eye dosing.', 'Flurbiprofen 0.03% w/v + hypromellose (HPMC) 0.25% w/v eye drops', '/assets/products/rixtear-f.jpg', 'published', 105, 'Rixtear™-F | Onecore Pharma', 'Rixtear-F combines flurbiprofen with hypromellose for selected ophthalmic use around surgery.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(105, 'Flurbiprofen 0.03% w/v + hypromellose (HPMC) 0.25% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(105, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFor prevention of intraoperative miosis in adults: instil 1 drop into the surgical eye every 30 minutes, beginning 2 hours before surgery, for 4 doses in total. Administration is directed by the surgical team.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(105, 'Inhibition of Intraoperative Miosis', 'Flurbiprofen may be used before eye surgery to reduce prostaglandin-mediated pupil constriction.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(105, 'Selected Perioperative Ocular Inflammation', 'May be used for an additional anti-inflammatory purpose only if supported by the exact local combination label and surgeon’s prescription.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(105, '01 — Inhibits Cyclo-Oxygenase', 'Flurbiprofen reduces prostaglandin synthesis in ocular tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(105, '02 — Limits Prostaglandin-Mediated Responses', 'Reduced prostaglandin activity helps limit surgically induced pupil constriction and inflammatory responses.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(105, '03 — Supports Surface Lubrication', 'Hypromellose provides a lubricating film but does not replace the surgical anti-inflammatory action.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(105, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(105, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(105, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(106, 5, 'Brinstar™-TM', 'brinstar-tm', 'Brinstar-TM combines brinzolamide with timolol to lower raised pressure inside the eye.', 'Brinstar-TM combines brinzolamide with timolol to lower raised pressure inside the eye. The ingredients reduce aqueous humour production through different pathways, and their combined effect can improve pressure control. It is prescribed for appropriate glaucoma or ocular hypertension when combination treatment is needed, with regular ophthalmic monitoring.', 'Brinzolamide 1%w/v + Timolol 0.5%w/v Eye Drops', '/assets/products/brinstar-tm.jpg', 'published', 106, 'Brinstar™-TM | Onecore Pharma', 'Brinstar-TM combines brinzolamide with timolol to lower raised pressure inside the eye.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(106, 'Brinzolamide 1%w/v + Timolol 0.5%w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(106, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye twice daily, approximately 12 hours apart. Continue regularly and reassess intraocular pressure at scheduled visits.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label. Shake well before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(106, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(106, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(106, '01 — Reduces Aqueous Production', 'Brinzolamide inhibits carbonic anhydrase in the ciliary body.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(106, '02 — Adds Beta-Blockade', 'Timolol blocks beta-adrenergic receptors and further reduces aqueous humour formation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(106, '03 — Lowers Intraocular Pressure', 'Reduced fluid production helps control pressure and reduce further optic nerve injury risk.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(106, 'asthma-and-heart-conditions', 'Asthma and Heart Conditions', 'Timolol-containing drops are contraindicated in asthma, significant bradycardia, certain heart blocks and uncontrolled cardiac failure. Eye drops can have systemic effects.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(106, 'interactions-and-low-blood-glucose', 'Interactions and Low Blood Glucose', 'Review oral beta-blockers, verapamil, diltiazem and other cardiac medicines. Beta-blockade may mask warning signs of hypoglycaemia.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(106, 'sulfonamide-reactions-and-kidney-disease', 'Sulfonamide Reactions and Kidney Disease', 'Carbonic anhydrase inhibitors may cause sulfonamide-type hypersensitivity. Severe kidney impairment or acid-base disturbance requires avoidance or specialist review.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(106, 'application-and-follow-up', 'Application and Follow-Up', 'Use punctal pressure after instillation to reduce systemic absorption. Attend eye-pressure checks and seek advice for breathing difficulty, faintness or a slow pulse.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(107, 5, 'Moxable™-DM', 'moxable-dm', 'Moxable-DM combines moxifloxacin with dexamethasone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.', 'Moxable-DM combines moxifloxacin with dexamethasone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation. The antibiotic acts against susceptible bacteria, while the steroid reduces inflammation. An ophthalmologist should confirm the diagnosis because steroids can worsen certain infections and require eye-pressure monitoring.', 'Moxifloxacin 0.5%w/v + Dexamethasone 0.1%w/v Eye Drops', '/assets/products/moxable-dm.jpg', 'published', 107, 'Moxable™-DM | Onecore Pharma', 'Moxable-DM combines moxifloxacin with dexamethasone for selected eye conditions requiring both antibacterial treatment and corticosteroid control of inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(107, 'Moxifloxacin 0.5%w/v + Dexamethasone 0.1%w/v Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(107, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1 drop into each affected eye four times daily for 7 days, then reassess before continuing or tapering the steroid component.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake if the pack identifies the product as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(107, 'Steroid-Responsive Ocular Inflammation with Bacterial Infection', 'May be prescribed when a superficial susceptible bacterial infection coexists with an inflammatory condition requiring a corticosteroid.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(107, 'Selected Postoperative Inflammation with Bacterial Risk', 'May be used after eye surgery when the surgeon considers both ingredients necessary under the product’s approved directions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(107, '01 — Provides Antibacterial Activity', 'Moxifloxacin inhibits bacterial DNA gyrase and topoisomerase IV.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(107, '02 — Suppresses Ocular Inflammation', 'Dexamethasone activates glucocorticoid receptors and reduces inflammatory mediator activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(107, '03 — Addresses Two Treatment Needs', 'Antibacterial and anti-inflammatory actions work together only when both are justified by the diagnosis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(107, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(107, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(107, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(107, 'allergy-and-review', 'Allergy and Review', 'Avoid with relevant antibiotic allergy. Re-examine promptly if symptoms worsen or do not improve within 48 hours.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(108, 8, 'Natvue™', 'natvue', 'Natvue contains natamycin, a topical antifungal suspension used for susceptible fungal infections of the eye, including fungal keratitis.', 'Natvue contains natamycin, a topical antifungal suspension used for susceptible fungal infections of the eye, including fungal keratitis. It acts on fungal cell membranes and requires frequent dosing in active corneal infection. An ophthalmologist should direct treatment and monitor response because delayed or inadequate therapy can threaten vision.', 'Natamycin 5% Eye Drops', '/assets/products/natvue.jpg', 'published', 108, 'Natvue™ | Onecore Pharma', 'Natvue contains natamycin, a topical antifungal suspension used for susceptible fungal infections of the eye, including fungal keratitis.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(108, 'Natamycin 5% Eye Drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(108, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFungal keratitis: instil 1 drop into the affected eye every 1–2 hours initially. After 3–4 days of improvement, reduce to 1 drop six to eight times daily. Continue for 14–21 days or until the ophthalmologist confirms resolution; severe disease requires close review.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake the suspension well before every dose. Follow storage and discard instructions precisely.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(108, 'Fungal Keratitis', 'Treats susceptible fungal corneal infection, including appropriate Fusarium infections, under urgent specialist care.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(108, 'Fungal Conjunctivitis or Blepharitis', 'May be prescribed for susceptible fungal infection involving the conjunctiva or eyelids.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(108, '01 — Binds Fungal Membrane Sterols', 'Natamycin interacts with ergosterol in susceptible fungal membranes.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(108, '02 — Disrupts Membrane Function', 'This impairs essential membrane transport and related fungal cell functions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(108, '03 — Controls Susceptible Fungal Infection', 'Local antifungal exposure limits infection when the organism is susceptible and treatment is maintained.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(108, 'urgent-corneal-monitoring', 'Urgent Corneal Monitoring', 'Increasing pain, light sensitivity, corneal opacity or reduced vision needs urgent review. Do not delay specialist treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(108, 'steroids-and-susceptibility', 'Steroids and Susceptibility', 'Do not add steroid drops without corneal-specialist advice. Resistant organisms or poor response require culture-based reassessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(108, 'allergy-and-contact-lenses', 'Allergy and Contact Lenses', 'Stop for a significant allergic reaction. Do not wear contact lenses during active ocular infection.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(109, 5, 'Ikarix™', 'ikarix', 'Ikarix combines tropicamide with phenylephrine to dilate the pupil for selected eye examinations or procedures.', 'Ikarix combines tropicamide with phenylephrine to dilate the pupil for selected eye examinations or procedures. Tropicamide reduces muscarinic activity in the iris and ciliary muscle, while phenylephrine stimulates the iris dilator. It is intended for professional ophthalmic use, with monitoring for ocular and cardiovascular adverse effects.', 'Tropicamide 0.8% w/v + phenylephrine hydrochloride 5% w/v eye drops', '/assets/products/ikarix.jpg', 'published', 109, 'Ikarix™ | Onecore Pharma', 'Ikarix combines tropicamide with phenylephrine to dilate the pupil for selected eye examinations or procedures.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(109, 'Tropicamide 0.8% w/v + phenylephrine hydrochloride 5% w/v eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(109, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults undergoing diagnostic pupil dilation: a healthcare professional instils 1 drop into the examination eye; repeat once after 5–10 minutes only if dilation is inadequate. Paediatric use requires a separate specialist regimen because this product contains phenylephrine 5%.\n\nAdministration Advice\nFor administration under professional direction. Apply punctal pressure for 1–2 minutes after the drop. Arrange help with travel if vision remains blurred or light-sensitive.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(109, 'Diagnostic Pupil Dilation', 'Facilitates examination of the lens, vitreous and retina when the clinician considers dilation safe.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(109, 'Pupil Dilation Before Selected Procedures', 'May be used to obtain mydriasis before an ophthalmic procedure according to the exact product label.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(109, '01 — Blocks Muscarinic Receptors', 'Tropicamide relaxes the iris sphincter and reduces ciliary muscle accommodation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(109, '02 — Stimulates Iris Dilator Muscle', 'Phenylephrine activates alpha-1 adrenergic receptors and contracts the iris dilator.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(109, '03 — Produces Mydriasis', 'The combined actions enlarge the pupil for the required examination or procedure.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(109, 'narrow-angles-and-glaucoma', 'Narrow Angles and Glaucoma', 'Dilation can trigger acute angle closure in susceptible eyes. Severe eye pain, headache or halos after use needs urgent assessment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(109, 'cardiovascular-and-endocrine-risks', 'Cardiovascular and Endocrine Risks', 'Phenylephrine can raise blood pressure or disturb heart rhythm. Review heart disease, hyperthyroidism and interacting medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(109, 'children-and-temporary-visual-effects', 'Children and Temporary Visual Effects', 'Children may be more sensitive to systemic effects. Do not drive until vision clears and use protection from bright light.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(110, 5, 'Predtos™', 'predtos', 'Predtos contains prednisolone, a corticosteroid eye medicine used for selected steroid-responsive inflammation.', 'Predtos contains prednisolone, a corticosteroid eye medicine used for selected steroid-responsive inflammation. It reduces inflammatory mediator activity and helps control redness, swelling and discomfort. Treatment requires an eye examination and an individual schedule because steroids can increase eye pressure, delay healing or worsen an unrecognised infection.', 'Prednisolone acetate 1% w/v ophthalmic suspension (common reference salt and form assumed)', '/assets/products/predtos.jpg', 'published', 110, 'Predtos™ | Onecore Pharma', 'Predtos contains prednisolone, a corticosteroid eye medicine used for selected steroid-responsive inflammation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(110, 'Prednisolone acetate 1% w/v ophthalmic suspension (common reference salt and form assumed)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(110, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInstil 1–2 drops into each affected eye two to four times daily. Use the examination-based frequency and taper written in the prescription. Reassess if there is no improvement within 2 days.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Shake well before each dose once suspension identity is confirmed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(110, 'Steroid-Responsive Anterior Eye Inflammation', 'May be prescribed for selected conjunctival, corneal or anterior segment inflammation after infection has been evaluated.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(110, 'Postoperative Ocular Inflammation', 'May help control inflammation after eye surgery when prescribed and monitored by the surgeon.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(110, '01 — Activates Glucocorticoid Receptors', 'The corticosteroid binds intracellular glucocorticoid receptors in responsive ocular tissues.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(110, '02 — Reduces Inflammatory Mediators', 'It alters gene activity and reduces inflammatory-cell recruitment and mediator production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(110, '03 — Controls Ocular Inflammation', 'Reduced inflammation can improve the prescribed steroid-responsive symptoms while monitoring continues.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(110, 'eye-infection', 'Eye Infection', 'Avoid in untreated fungal, viral or mycobacterial eye disease. Steroids can mask infection and worsen herpes-related corneal disease.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(110, 'eye-pressure-and-healing', 'Eye Pressure and Healing', 'Prolonged use can raise eye pressure, cause cataract and delay healing. Monitoring is needed, particularly if treatment reaches 10 days.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(110, 'worsening-symptoms-and-contact-lenses', 'Worsening Symptoms and Contact Lenses', 'Seek prompt review for increasing pain, light sensitivity or reduced vision. Avoid contact lenses during active inflammation or infection.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(111, 5, 'Olgerix™-KT', 'olgerix-kt', 'Olgerix-KT combines olopatadine with ketorolac for selected allergic eye symptoms requiring an antihistamine and a non-steroidal anti-inflammatory.', 'Olgerix-KT combines olopatadine with ketorolac for selected allergic eye symptoms requiring an antihistamine and a non-steroidal anti-inflammatory. Olopatadine reduces histamine effects and mast-cell activation, while ketorolac limits prostaglandin formation. Use should be brief and ophthalmologist-directed because anti-inflammatory eye drops carry additional corneal and healing risks.', 'Ketorolac (0.4% w/v) + Olopatadine (0.1% w/v) Eye Drop', '/assets/products/olgerix-kt.jpg', 'published', 111, 'Olgerix™-KT | Onecore Pharma', 'Olgerix-KT combines olopatadine with ketorolac for selected allergic eye symptoms requiring an antihistamine and a non-steroidal anti-inflammatory.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(111, 'Ketorolac (0.4% w/v) + Olopatadine (0.1% w/v) Eye Drop', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(111, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye twice daily for allergy-related itching and inflammation. Reassess persistent symptoms before continuing the NSAID-containing combination.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(111, 'Allergic Conjunctivitis with Itching', 'May be prescribed when allergic itching is accompanied by symptoms for which the clinician considers additional anti-inflammatory treatment appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(111, 'Selected Inflammatory Allergic Eye Discomfort', 'May help selected allergy-associated discomfort after infection and other causes of a painful red eye are excluded.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(111, '01 — Blocks Histamine and Mast-Cell Responses', 'Olopatadine reduces H1 receptor activation and allergic mediator release.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(111, '02 — Reduces Prostaglandin Synthesis', 'Ketorolac inhibits cyclo-oxygenase enzymes involved in inflammatory pain.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(111, '03 — Controls Selected Allergic Inflammation', 'The combined effects may relieve itching and associated inflammatory discomfort when both ingredients are indicated.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(111, 'nsaid-allergy-and-bleeding', 'NSAID Allergy and Bleeding', 'Avoid if previous aspirin or NSAID use caused asthma, swelling or allergy. Inform the doctor about anticoagulants and bleeding disorders.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(111, 'corneal-damage-and-delayed-healing', 'Corneal Damage and Delayed Healing', 'Diabetes, dry eye, corneal disease and prolonged treatment increase risk. Seek urgent review for pain, reduced vision or worsening redness.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(111, 'contact-lenses-and-other-eye-medicines', 'Contact Lenses and Other Eye Medicines', 'Remove contact lenses and follow the surgeon’s advice on reinsertion. Use with steroid eye drops only under supervision.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(112, 5, 'Vorcore™', 'vorcore', 'Vorcore contains voriconazole for specialist treatment of selected fungal eye infections.', 'Vorcore contains voriconazole for specialist treatment of selected fungal eye infections. It interferes with fungal sterol synthesis and may be used for susceptible organisms in carefully monitored corneal infection. The final concentration depends on correct reconstitution, and treatment frequency, storage and duration must follow the actual ophthalmic product label.', 'Voriconazole 30 mg', '/assets/products/vorcore.jpg', 'published', 112, 'Vorcore™ | Onecore Pharma', 'Vorcore contains voriconazole for specialist treatment of selected fungal eye infections.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(112, 'Voriconazole 30 mg', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(112, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFor a confirmed 1% solution: instil 1 drop into the affected eye every hour initially under corneal-specialist supervision. Reduce frequency only after documented improvement. The final reconstituted concentration must be verified before use.\n\nAdministration Advice\nReconstitute aseptically with the specified sterile diluent. A 30 mg vial yields 1% only at a final volume of 3 mL. Use the exact labelled final volume, storage and discard instructions. Keep the dropper tip sterile and separate other eye drops by at least 5 minutes.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(112, 'Selected Susceptible Fungal Keratitis', 'May be prescribed by a corneal specialist after considering the likely or cultured organism and evidence-based first-line options.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(112, 'Persistent or Resistant Fungal Corneal Infection', 'May be considered as a specialist alternative or adjunct when susceptibility and clinical response support use.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(112, '01 — Inhibits Fungal Demethylase', 'Voriconazole inhibits fungal CYP51-dependent lanosterol demethylation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(112, '02 — Reduces Ergosterol Formation', 'Sterol depletion disrupts fungal membrane structure and function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(112, '03 — Limits Susceptible Fungal Growth', 'Local exposure can control susceptible fungi, with outcome dependent on organism and corneal penetration.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(112, 'vision-threatening-infection', 'Vision-Threatening Infection', 'Fungal keratitis requires urgent follow-up. Worsening pain, opacity or vision needs immediate specialist review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(112, 'concentration-and-sterility', 'Concentration and Sterility', 'Incorrect dilution or contamination can seriously harm the eye. Do not prepare from a non-ophthalmic product without a validated sterile compounding process.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(112, 'steroids-and-evidence', 'Steroids and Evidence', 'Avoid unsupervised steroid drops. Choice of voriconazole rather than natamycin should reflect organism-specific evidence and susceptibility.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(113, 5, 'Fixtear™ Eye Ointment', 'fixtear-eye-ointment', 'Fixtear Eye Ointment is listed as an ophthalmic lubricant containing carboxymethylcellulose and glycerine.', 'Fixtear Eye Ointment is listed as an ophthalmic lubricant containing carboxymethylcellulose and glycerine. These ingredients help retain moisture and reduce friction at the surface. The dosage form must be confirmed because an eye ointment, gel and solution require different administration instructions, and the supplied composition does not resolve that distinction.', 'Carboxymethylcellulose 0.3% w/w + glycerine 1% w/w + benzyl alcohol 0.1% w/w; listed as eye ointment', '/assets/products/fixtear-eye-ointment.jpg', 'published', 113, 'Fixtear™ Eye Ointment | Onecore Pharma', 'Fixtear Eye Ointment is listed as an ophthalmic lubricant containing carboxymethylcellulose and glycerine.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(113, 'Carboxymethylcellulose 0.3% w/w + glycerine 1% w/w + benzyl alcohol 0.1% w/w; listed as eye ointment', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(113, 'Administration and Dosage Guidance', 'Dosing and Schedule\nThis medicine is for external use only. Take it in the dose and duration as advised by your doctor.\n\nAdministration Advice\nConfirm whether the product is an ointment, gel or solution before administration. Wash hands, keep the applicator sterile and use after other eye drops when a true ointment is prescribed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(113, 'Dry Ocular Surface Discomfort', 'May provide lubrication for dryness-related irritation once the ophthalmic dosage form is verified.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(113, 'Extended Lubrication When Clinically Appropriate', 'A verified viscous eye formulation may be selected for longer surface contact, including at bedtime when advised.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(113, '01 — Provides Water-Binding Ingredients', 'Carboxymethylcellulose and glycerine retain water at the ocular surface.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(113, '02 — Reduces Surface Friction', 'A compatible ophthalmic vehicle supports lubrication during blinking.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(113, '03 — Improves Temporary Comfort', 'Improved hydration may reduce dryness-related irritation; residence time depends on the actual vehicle.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(113, 'persistent-pain-or-vision-change', 'Persistent Pain or Vision Change', 'Stop and seek examination for eye pain, reduced vision, marked redness or symptoms that persist or worsen.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(113, 'dropper-hygiene-and-discard-period', 'Dropper Hygiene and Discard Period', 'Do not touch the tip, share the bottle or use cloudy or discoloured solution. Follow the exact after-opening discard period.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(113, 'contact-lenses-and-blurring', 'Contact Lenses and Blurring', 'Check compatibility with contact lenses and remove them if the label requires it. Wait until temporary blurring clears before driving.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(114, 5, 'Brinstar™-BT', 'brinstar-bt', 'Brinstar-BT combines brinzolamide, brimonidine and timolol for selected patients needing several mechanisms to control raised eye pressure.', 'Brinstar-BT combines brinzolamide, brimonidine and timolol for selected patients needing several mechanisms to control raised eye pressure. The ingredients reduce aqueous humour production, while brimonidine also supports outflow. It requires ophthalmologist-directed use, with attention to systemic beta-blocker effects, kidney function, sedation and the exact finished-product dosing instructions.', 'Brinzolamide 10 mg/mL (1% w/v) + brimonidine 2 mg/mL (0.2% w/v) + timolol 5 mg/mL (0.5% w/v) eye drops', '/assets/products/brinstar-bt.jpg', 'published', 114, 'Brinstar™-BT | Onecore Pharma', 'Brinstar-BT combines brinzolamide, brimonidine and timolol for selected patients needing several mechanisms to control raised eye pressure.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(114, 'Brinzolamide 10 mg/mL (1% w/v) + brimonidine 2 mg/mL (0.2% w/v) + timolol 5 mg/mL (0.5% w/v) eye drops', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(114, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: instil 1 drop into each affected eye twice daily, approximately 12 hours apart. Continue regularly and review intraocular pressure at scheduled visits.\n\nAdministration Advice\nWash hands and place the prescribed drop inside the lower eyelid without touching the dropper tip. Close the eye gently. Separate other eye medicines by at least 5 minutes. Close the eyelids and press the inner corner for 1–2 minutes to reduce systemic absorption. Remove contact lenses as directed by the label. Shake if labelled as a suspension.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(114, 'Open-Angle Glaucoma', 'Lowers raised eye pressure as part of prescribed treatment to reduce the risk of further optic nerve damage.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(114, 'Ocular Hypertension', 'Helps control raised eye pressure when treatment is needed before detectable glaucomatous damage develops.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(114, '01 — Inhibits Carbonic Anhydrase', 'Brinzolamide reduces bicarbonate-dependent aqueous humour secretion.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(114, '02 — Adds Alpha-2 and Beta Receptor Effects', 'Brimonidine reduces secretion and promotes outflow, while timolol reduces beta-mediated aqueous production.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(114, '03 — Provides Additive Pressure Control', 'The combined effects reduce intraocular fluid accumulation in appropriately selected patients.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(114, 'asthma-and-heart-conditions', 'Asthma and Heart Conditions', 'Timolol-containing drops are contraindicated in asthma, significant bradycardia, certain heart blocks and uncontrolled cardiac failure. Eye drops can have systemic effects.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(114, 'sulfonamide-reactions-and-kidney-disease', 'Sulfonamide Reactions and Kidney Disease', 'Carbonic anhydrase inhibitors may cause sulfonamide-type hypersensitivity. Severe kidney impairment or acid-base disturbance requires avoidance or specialist review.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(114, 'infants-children-and-sedation', 'Infants, Children and Sedation', 'Brimonidine is contraindicated under 2 years and can cause serious sedation or breathing suppression in young children. Paediatric use requires specialist care.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(114, 'interactions-and-monitoring', 'Interactions and Monitoring', 'Review other glaucoma drops, cardiac medicines, sedatives and monoamine oxidase inhibitors. Monitor eye pressure, pulse and relevant systemic symptoms.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(115, 4, 'Nervia™', 'nervia', 'Nervia contains methylcobalamin, an active form of vitamin B12 supplied for injection.', 'Nervia contains methylcobalamin, an active form of vitamin B12 supplied for injection. It is used when replacement is clinically indicated and an injectable route is selected. Vitamin B12 supports normal blood-cell formation and nerve function, with treatment tailored to the cause, severity and neurological features of deficiency.', 'Methylcobalamin 2500 mcg Injection', '/assets/products/nervia.jpg', 'published', 115, 'Nervia™ | Onecore Pharma', 'Nervia contains methylcobalamin, an active form of vitamin B12 supplied for injection.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(115, 'Methylcobalamin 2500 mcg Injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(115, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nA healthcare professional should administer by the route approved on the actual label. Do not self-inject or assume intravenous suitability from the ingredient name.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(115, 'Vitamin B12 Deficiency', 'Replenishes vitamin B12 when deficiency is established and the selected formulation is appropriate to the cause and severity.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(115, 'Deficiency-Associated Neurological or Blood Changes', 'Supports treatment of B12-related neuropathy or megaloblastic changes while the underlying cause and clinical response are monitored.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(115, '01 — Provides Active Vitamin B12', 'Methylcobalamin supplies a coenzyme form of vitamin B12.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(115, '02 — Supports Methylation Pathways', 'It participates in methionine synthase activity and linked folate metabolism.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(115, '03 — Supports Blood and Nerve Function', 'Adequate B12 supports normal red blood cell formation and myelin-related nerve function when deficiency is corrected.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(115, 'diagnosis-and-neurological-symptoms', 'Diagnosis and Neurological Symptoms', 'Confirm the cause of deficiency. New weakness, gait disturbance or numbness needs prompt assessment rather than unsupervised supplementation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(115, 'allergy-and-monitoring', 'Allergy and Monitoring', 'Avoid with relevant vitamin B12 or cobalt allergy. Monitor response and identify whether ongoing replacement is required.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(115, 'injection-and-severe-anaemia', 'Injection and Severe Anaemia', 'Observe for injection reactions. Severe megaloblastic anaemia may need early electrolyte and blood-count monitoring during effective replacement.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(116, 4, 'Nervia™-G', 'nervia-g', 'Nervia-G combines gabapentin with methylcobalamin for prescribed management of neuropathic pain.', 'Nervia-G combines gabapentin with methylcobalamin for prescribed management of neuropathic pain. Gabapentin reduces abnormal excitatory nerve transmission, while methylcobalamin provides vitamin B12 support. The dose is introduced and adjusted according to symptoms, kidney function and tolerability, with gradual withdrawal when treatment is no longer required.', 'Methylcobalamin 500 mcg + Gabapentin 300 mg Tablets', '/assets/products/nervia-g.jpg', 'published', 116, 'Nervia™-G | Onecore Pharma', 'Nervia-G combines gabapentin with methylcobalamin for prescribed management of neuropathic pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(116, 'Methylcobalamin 500 mcg + Gabapentin 300 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(116, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with normal kidney function: start with 1 tablet at bedtime on day 1, 1 tablet twice daily on day 2 and 1 tablet three times daily from day 3 if tolerated. This provides gabapentin 900 mg/day at the third step. Further titration requires review; reduce doses in kidney impairment.\n\nAdministration Advice\nSwallow with water, with or without food. Space divided doses through the day and keep at least 2 hours after aluminium- or magnesium-containing antacids. Do not stop abruptly; taper under supervision.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(116, 'Painful Diabetic Peripheral Neuropathy', 'May help reduce burning, tingling and shooting pain from an assessed diabetic peripheral neuropathy.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(116, 'Postherpetic or Other Selected Nerve Pain', 'May be prescribed for persistent neuropathic pain after shingles or in other suitable conditions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(116, '01 — Binds Calcium-Channel Subunits', 'Gabapentin binds alpha-2-delta subunits of voltage-gated calcium channels.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(116, '02 — Reduces Excitatory Neurotransmitter Release', 'Reduced transmitter release limits abnormal nerve-pain signalling.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(116, '03 — Supports Vitamin B12-Dependent Function', 'Methylcobalamin supports normal nerve metabolism when vitamin B12 supply is insufficient.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(116, 'sleepiness-dizziness-and-driving', 'Sleepiness, Dizziness and Driving', 'Avoid driving until the individual effect is known. Alcohol, opioids and other sedatives can increase sedation and breathing risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(116, 'kidney-function-and-withdrawal', 'Kidney Function and Withdrawal', 'Gabapentinoids need renal dose review. Do not stop abruptly; follow the prescribed taper.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(116, 'mood-changes-swelling-and-allergy', 'Mood Changes, Swelling and Allergy', 'Report new suicidal thoughts, marked mood changes, peripheral swelling or severe allergic symptoms promptly.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(117, 4, 'Nervia™ OD', 'nervia-od', 'Nervia OD contains methylcobalamin, an active vitamin B12 form, in a sublingual tablet.', 'Nervia OD contains methylcobalamin, an active vitamin B12 form, in a sublingual tablet. It supports replacement when vitamin B12 intake or status is inadequate and an oral approach is suitable. Appropriate correction supports normal nerve function and red blood cell formation, while the underlying cause of deficiency still needs assessment.', 'Methylcobalamin 1500 mcg Sublingual Tablet', '/assets/products/nervia-od.jpg', 'published', 117, 'Nervia™ OD | Onecore Pharma', 'Nervia OD contains methylcobalamin, an active vitamin B12 form, in a sublingual tablet.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(117, 'Methylcobalamin 1500 mcg Sublingual Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(117, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 sublingual tablet (1500 mcg) once daily. Review vitamin B12 status and neurological response to determine duration. Severe neurological deficiency or significant malabsorption requires assessment for injectable treatment.\n\nAdministration Advice\nPlace the tablet under the tongue and allow it to dissolve completely. Do not chew or swallow it immediately.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(117, 'Vitamin B12 Deficiency', 'Replenishes vitamin B12 when deficiency is established and the selected formulation is appropriate to the cause and severity.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(117, 'Deficiency-Associated Neurological or Blood Changes', 'Supports treatment of B12-related neuropathy or megaloblastic changes while the underlying cause and clinical response are monitored.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(117, '01 — Provides Active Vitamin B12', 'Methylcobalamin supplies a coenzyme form of vitamin B12.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(117, '02 — Supports Methylation Pathways', 'It participates in methionine synthase activity and linked folate metabolism.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(117, '03 — Supports Blood and Nerve Function', 'Adequate B12 supports normal red blood cell formation and myelin-related nerve function when deficiency is corrected.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(117, 'diagnosis-and-neurological-symptoms', 'Diagnosis and Neurological Symptoms', 'Confirm the cause of deficiency. New weakness, gait disturbance or numbness needs prompt assessment rather than unsupervised supplementation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(117, 'allergy-and-monitoring', 'Allergy and Monitoring', 'Avoid with relevant vitamin B12 or cobalt allergy. Monitor response and identify whether ongoing replacement is required.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(117, 'other-treatment-needs', 'Other Treatment Needs', 'Folate alone should not replace B12 when deficiency is present. Severe anaemia or malabsorption may need a different replacement plan.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(118, 4, 'Nervia™ Forte', 'nervia-forte', 'Nervia Forte combines methylcobalamin, folic acid, niacinamide and vitamin C in an injectable preparation for deficiency states.', 'Nervia Forte combines methylcobalamin, folic acid, niacinamide and vitamin C in an injectable preparation for deficiency states. The vitamins participate in blood formation, cellular metabolism and antioxidant functions. Injectable treatment should be used only when clinically indicated, with the route, ampoule volume and schedule confirmed from the finished product label.', 'Folic Acid (0.7 mg) + Methylcobalamin (1500 mcg) + Niacinamide (12 mg) & Vitamin-C (150)mg Injection', '/assets/products/nervia-forte.jpg', 'published', 118, 'Nervia™ Forte | Onecore Pharma', 'Nervia Forte combines methylcobalamin, folic acid, niacinamide and vitamin C in an injectable preparation for deficiency states.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(118, 'Folic Acid (0.7 mg) + Methylcobalamin (1500 mcg) + Niacinamide (12 mg) & Vitamin-C (150)mg Injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(118, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nAdministration is by a trained healthcare professional using the route and dilution permitted by the actual label. Do not mix with other injections unless compatibility is established.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(118, 'Selected Combined Vitamin Deficiencies', 'May be prescribed when assessment identifies a need for the supplied vitamins and an injectable formulation is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(118, 'Deficiency-Associated Blood or Neurological Changes', 'May support correction of relevant nutritional deficits alongside investigation and treatment of their cause.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(118, '01 — Provides Active Vitamin B12', 'Methylcobalamin supplies a coenzyme form of vitamin B12.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(118, '02 — Supports Cell and Energy Metabolism', 'Folate participates in DNA synthesis and niacinamide supports NAD-dependent cellular reactions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(118, '03 — Provides Additional Vitamin Support', 'Vitamin C contributes to antioxidant systems and collagen-related processes when nutritional supply is inadequate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(118, 'injection-reactions-and-allergy', 'Injection Reactions and Allergy', 'Check ingredient and excipient allergy. Parenteral vitamins can cause serious hypersensitivity, requiring professional administration and observation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(118, 'kidney-disease-and-other-medicines', 'Kidney Disease and Other Medicines', 'Review kidney disease, stone history and interacting treatments. Route, compatibility and repeated dosing require product-specific guidance.', 2);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(119, 4, 'Nervia™-Plus', 'nervia-plus', 'Nervia-Plus combines methylcobalamin and folic acid with alpha-lipoic acid and listed B-vitamin ingredients for prescribed nutritional support.', 'Nervia-Plus combines methylcobalamin and folic acid with alpha-lipoic acid and listed B-vitamin ingredients for prescribed nutritional support. These components participate in nerve-related and blood-forming pathways. The exact vitamin identities and alpha-lipoic acid unit need confirmation before a product-specific regimen or stronger clinical claims can be assigned.', 'Methylcobalamin 1500 mcg + alpha-lipoic acid 100 mcg as listed +  vitamin B 10 mg + vitamin B6 3mg + folic acid 1.5 mg per capsule', '/assets/products/nervia-plus.jpg', 'published', 119, 'Nervia™-Plus | Onecore Pharma', 'Nervia-Plus combines methylcobalamin and folic acid with alpha-lipoic acid and listed B-vitamin ingredients for prescribed nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(119, 'Methylcobalamin 1500 mcg + alpha-lipoic acid 100 mcg as listed +  vitamin B 10 mg + vitamin B6 3mg + folic acid 1.5 mg per capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(119, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor. \n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(119, 'Selected B-Vitamin Insufficiency', 'May support replacement of relevant deficiencies after the complete formula and the patient’s requirements are confirmed.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(119, 'Adjunct Nutritional Support in Neuropathy Care', 'May complement treatment when vitamin insufficiency contributes to symptoms. It is not a substitute for established neuropathic pain treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(119, '01 — Provides Active Vitamin B12', 'Methylcobalamin supplies a coenzyme form of vitamin B12.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(119, '02 — Supports Folate-Dependent Processes', 'Folic acid contributes to normal DNA synthesis and blood-cell development after metabolic conversion.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(119, '03 — Provides Additional Nutritional Components', 'The effects of the remaining ingredients depend on their verified identity and dose.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(119, 'unclear-ingredient-strengths', 'Unclear Ingredient Strengths', 'Do not assume the source’s alpha-lipoic acid 100 mcg means 100 mg or that unspecified vitamin B entries identify particular vitamins.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(119, 'neuropathy-and-supplement-overlap', 'Neuropathy and Supplement Overlap', 'Investigate persistent neurological symptoms. Excess long-term vitamin B6 can itself cause neuropathy if that vitamin is included.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(119, 'glucose-pregnancy-and-organ-disease', 'Glucose, Pregnancy and Organ Disease', 'Review glucose-lowering medicines, pregnancy, breastfeeding and kidney or liver disease before use.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(120, 4, 'Citirix™-P', 'citirix-p', 'Citirix-P combines citicoline with piracetam for neurological adjunctive use under specialist supervision.', 'Citirix-P combines citicoline with piracetam for neurological adjunctive use under specialist supervision. Citicoline participates in phospholipid pathways, while piracetam has effects on neuronal membrane-related function. The combination should be used only for an approved clinical indication, with discussion of evidence limitations and continued use of established stroke or rehabilitation care.', 'Citicoline Sodium 500 mg + Piracetam 400 mg Tablets', '/assets/products/citirix-p.jpg', 'published', 120, 'Citirix™-P | Onecore Pharma', 'Citirix-P combines citicoline with piracetam for neurological adjunctive use under specialist supervision.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(120, 'Citicoline Sodium 500 mg + Piracetam 400 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(120, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with suitable kidney function: take 1 tablet twice daily. Review neurological response and kidney function before continuing or increasing treatment.\n\nAdministration Advice\nSwallow with water after breakfast and the evening meal. Do not stop established neurological treatment or substitute this combination for rehabilitation.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(120, 'Adjunctive Management after Ischaemic Stroke', 'May be prescribed where the exact combination has a local approved indication. It does not replace reperfusion, antithrombotic treatment or rehabilitation.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(120, 'Selected Post-Stroke Functional or Cognitive Symptoms', 'Any continued use for residual symptoms requires specialist review and label confirmation. A reliable recovery benefit is not established for this exact blend.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(120, '01 — Provides Phospholipid Precursors', 'Citicoline is metabolised to compounds used in phosphatidylcholine synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(120, '02 — Provides Piracetam-Related Activity', 'Piracetam influences neuronal membrane-related processes, although its full mechanism is not established.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(120, '03 — Provides a Proposed Supportive Action', 'Biochemical plausibility does not establish improved neurological recovery. Clinical benefit is uncertain and treatment remains adjunctive.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(120, 'evidence-and-urgent-stroke-care', 'Evidence and Urgent Stroke Care', 'Do not delay emergency stroke treatment, rehabilitation or established secondary prevention. Large trials did not show routine functional benefit from citicoline in stroke or brain injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(120, 'kidney-function-and-bleeding', 'Kidney Function and Bleeding', 'Piracetam is renally cleared and may affect platelet function. Review kidney impairment, anticoagulants, bleeding disorders and planned surgery.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(120, 'diagnosis-and-special-populations', 'Diagnosis and Special Populations', 'Confirm the approved indication and avoid use in relevant contraindicated conditions, including cerebral haemorrhage. Pregnancy and breastfeeding require specialist advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(121, 4, 'Nervia™-PG', 'nervia-pg', 'Nervia-PG combines pregabalin with methylcobalamin for prescribed management of neuropathic pain.', 'Nervia-PG combines pregabalin with methylcobalamin for prescribed management of neuropathic pain. Pregabalin reduces abnormal excitatory nerve transmission, while methylcobalamin provides vitamin B12 support. The dose is introduced and adjusted according to symptoms, kidney function and tolerability, with gradual withdrawal when treatment is no longer required.', 'Methylcobalamin 1500 mcg + Pregabalin 75 mg (SR) Tablet', '/assets/products/nervia-pg.jpg', 'published', 121, 'Nervia™-PG | Onecore Pharma', 'Nervia-PG combines pregabalin with methylcobalamin for prescribed management of neuropathic pain.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(121, 'Methylcobalamin 1500 mcg + Pregabalin 75 mg (SR) Tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(121, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor. \n\nAdministration Advice\nSwallow the sustained-release tablet whole with water. Do not crush or chew. Adjust pregabalin dosing for kidney function and taper over at least 1 week when discontinuing.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(121, 'Painful Diabetic Peripheral Neuropathy', 'May help reduce burning, tingling and shooting pain from an assessed diabetic peripheral neuropathy.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(121, 'Postherpetic or Other Selected Nerve Pain', 'May be prescribed for persistent neuropathic pain after shingles or in other suitable conditions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(121, '01 — Binds Calcium-Channel Subunits', 'Pregabalin binds alpha-2-delta subunits of voltage-gated calcium channels.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(121, '02 — Reduces Excitatory Neurotransmitter Release', 'Reduced transmitter release limits abnormal nerve-pain signalling.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(121, '03 — Supports Vitamin B12-Dependent Function', 'Methylcobalamin supports normal nerve metabolism when vitamin B12 supply is insufficient.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(121, 'sleepiness-dizziness-and-driving', 'Sleepiness, Dizziness and Driving', 'Avoid driving until the individual effect is known. Alcohol, opioids and other sedatives can increase sedation and breathing risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(121, 'kidney-function-and-withdrawal', 'Kidney Function and Withdrawal', 'Gabapentinoids need renal dose review. Do not stop abruptly; follow the prescribed taper.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(121, 'mood-changes-swelling-and-allergy', 'Mood Changes, Swelling and Allergy', 'Report new suicidal thoughts, marked mood changes, peripheral swelling or severe allergic symptoms promptly.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(122, 4, 'Pulsorex™', 'pulsorex', 'Pulsorex contains sustained-release propranolol, a non-selective beta-blocker used in selected cardiovascular and neurological conditions.', 'Pulsorex contains sustained-release propranolol, a non-selective beta-blocker used in selected cardiovascular and neurological conditions. It reduces beta-adrenergic responses, helping control heart rate or symptoms such as tremor. The dose is individualised and monitored, particularly in people with low blood pressure, diabetes, breathing problems or other cardiac medicines.', 'Propranolol 40 mg SR Tablets', '/assets/products/pulsorex.jpg', 'published', 122, 'Pulsorex™ | Onecore Pharma', 'Pulsorex contains sustained-release propranolol, a non-selective beta-blocker used in selected cardiovascular and neurological conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(122, 'Propranolol 40 mg SR Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(122, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults starting this 40 mg sustained-release formulation: take 1 tablet once daily. Review pulse, blood pressure and indication-specific response before titration. Migraine prevention and essential tremor can require a higher maintenance dose; do not increase independently.\n\nAdministration Advice\nSwallow whole with water at the same time each morning, consistently in relation to food. Do not crush or chew. Continue regularly and taper gradually when stopping.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, 'Migraine Prevention', 'May reduce migraine frequency when used regularly. It does not treat an acute migraine attack.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, 'Essential Tremor', 'May reduce tremor severity in suitable patients after the cause has been assessed.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, 'Selected Heart-Rate or Blood-Pressure Disorders', 'May be prescribed for appropriate cardiovascular indications with pulse and blood-pressure monitoring.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, '01 — Blocks Beta-Adrenergic Receptors', 'Propranolol blocks beta-1 and beta-2 receptors.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, '02 — Reduces Sympathetic Responses', 'It lowers heart rate and contractility and reduces beta-mediated tremor.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(122, '03 — Supports the Prescribed Indication', 'Sustained beta-blockade can help prevent migraine or control selected tremor and cardiovascular symptoms.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(122, 'asthma-and-cardiac-contraindications', 'Asthma and Cardiac Contraindications', 'Avoid with asthma, significant bradycardia, relevant heart block or uncontrolled heart failure. Seek help for wheeze or fainting.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(122, 'diabetes-and-interactions', 'Diabetes and Interactions', 'May mask hypoglycaemia warning signs. Review verapamil, diltiazem, other beta-blockers and medicines affecting blood pressure or rhythm.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(122, 'abrupt-withdrawal', 'Abrupt Withdrawal', 'Sudden stopping may worsen angina or trigger cardiovascular events. Follow a gradual prescriber-directed reduction.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(123, 4, 'Citirix™', 'citirix', 'Citirix contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings.', 'Citirix contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings. Proposed effects relate to membrane and neurotransmitter metabolism. Evidence for improved recovery after stroke or brain injury is inconsistent, so use should complement established treatment and specialist-directed rehabilitation.', 'Citicoline 500 mg per tablet', '/assets/products/citirix.jpg', 'published', 123, 'Citirix™ | Onecore Pharma', 'Citirix contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(123, 'Citicoline 500 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(123, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet (500 mg) twice daily when citicoline is prescribed as adjunctive therapy. Review clinical benefit before continuing long term.\n\nAdministration Advice\nSwallow with water in the morning and evening, with or without food. Continue the prescribed rehabilitation and other neurological treatment.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(123, 'Selected Post-Stroke Adjunctive Care', 'May be prescribed where locally approved as an adjunct. It is not a substitute for acute stroke treatment or secondary prevention.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(123, 'Selected Neurological Rehabilitation Settings', 'Any use after brain injury or for cognitive symptoms should follow the approved label and specialist review, with discussion of uncertain benefit.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(123, '01 — Provides Phospholipid Precursors', 'Citicoline is metabolised to compounds used in phosphatidylcholine synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(123, '02 — Supports Membrane-Related Biochemistry', 'These substrates participate in normal cell membrane and neurotransmitter pathways.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(123, '03 — Provides a Proposed Supportive Action', 'Biochemical plausibility does not establish improved neurological recovery. Clinical benefit is uncertain and treatment remains adjunctive.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(123, 'evidence-and-urgent-stroke-care', 'Evidence and Urgent Stroke Care', 'Do not delay emergency stroke treatment, rehabilitation or established secondary prevention. Large trials did not show routine functional benefit from citicoline in stroke or brain injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(123, 'individual-assessment-and-tolerance', 'Individual Assessment and Tolerance', 'Headache, gastrointestinal symptoms or blood-pressure changes may occur. Review the neurological diagnosis and ongoing need with the specialist.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(123, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Pregnancy, breastfeeding and interacting medicines, including levodopa, require individual review.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(124, 4, 'Citirix™ 250', 'citirix-250', 'Citirix 250 contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings.', 'Citirix 250 contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings. Proposed effects relate to membrane and neurotransmitter metabolism.', 'Citicoline 250ml/mg injection', '/assets/products/citirix-250.jpg', 'published', 124, 'Citirix™ 250 | Onecore Pharma', 'Citirix 250 contains citicoline, a precursor involved in cell-membrane phospholipid pathways, used as an adjunct in selected neurological care settings.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(124, 'Citicoline 250ml/mg injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(124, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nA healthcare professional should administer by the actual approved route using verified concentration and dilution instructions. Do not self-inject.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(124, 'Selected Post-Stroke Adjunctive Care', 'May be prescribed where locally approved as an adjunct. It is not a substitute for acute stroke treatment or secondary prevention.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(124, 'Selected Neurological Rehabilitation Settings', 'Any use after brain injury or for cognitive symptoms should follow the approved label and specialist review, with discussion of uncertain benefit.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(124, '01 — Provides Phospholipid Precursors', 'Citicoline is metabolised to compounds used in phosphatidylcholine synthesis.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(124, '02 — Supports Membrane-Related Biochemistry', 'These substrates participate in normal cell membrane and neurotransmitter pathways.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(124, '03 — Provides a Proposed Supportive Action', 'Biochemical plausibility does not establish improved neurological recovery. Clinical benefit is uncertain and treatment remains adjunctive.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(124, 'evidence-and-urgent-stroke-care', 'Evidence and Urgent Stroke Care', 'Do not delay emergency stroke treatment, rehabilitation or established secondary prevention. Large trials did not show routine functional benefit from citicoline in stroke or brain injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(124, 'individual-assessment-and-tolerance', 'Individual Assessment and Tolerance', 'Headache, gastrointestinal symptoms or blood-pressure changes may occur. Review the neurological diagnosis and ongoing need with the specialist.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(124, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Pregnancy, breastfeeding and interacting medicines, including levodopa, require individual review.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(125, 4, 'Neurorelax™', 'neurorelax', 'Neurorelax combines a multi-strain probiotic blend with GABA, valerian extract and immediate- and delayed-release melatonin.', 'Neurorelax combines a multi-strain probiotic blend with GABA, valerian extract and immediate- and delayed-release melatonin. It is intended for supplemental sleep and microbiota support in adults. Melatonin contributes to sleep timing, while benefits from the complete combination remain formulation-specific and should be assessed alongside sleep habits and other medicines.', 'Proprietary Probiotic Matrix (64 mg) 26 Billion CFU Lab4™, Clinical Cultures Lactobacillus acidophilus (ATCC SD6865), Lactobacillus acidophilus (ATCC SD6866), Bifidobacterium bifidum (ATCC SD6869), Bifidobacterium animalis subsp. lactis (ATCC Sd6870), Active Microbiome Blend Lactobacillus rhamnosus (IMC501), Lactobacillus paracasei (IMC502), Gamma-Aminobutyric Acid 100 mg, Valerian Extract (root) (0.8% valerenic acids) 50 mg, Melatonin (immediate release) 0.75 mg, Melatonin (delayed release) 0.75 mg Capsule', '/assets/products/neurorelax.jpg', 'published', 125, 'Neurorelax™ | Onecore Pharma', 'Neurorelax combines a multi-strain probiotic blend with GABA, valerian extract and immediate- and delayed-release melatonin.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(125, 'Proprietary Probiotic Matrix (64 mg) 26 Billion CFU Lab4™, Clinical Cultures Lactobacillus acidophilus (ATCC SD6865), Lactobacillus acidophilus (ATCC SD6866), Bifidobacterium bifidum (ATCC SD6869), Bifidobacterium animalis subsp. lactis (ATCC Sd6870), Active Microbiome Blend Lactobacillus rhamnosus (IMC501), Lactobacillus paracasei (IMC502), Gamma-Aminobutyric Acid 100 mg, Valerian Extract (root) (0.8% valerenic acids) 50 mg, Melatonin (immediate release) 0.75 mg, Melatonin (delayed release) 0.75 mg Capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(125, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule 30–60 minutes before bedtime. This supplies 1.5 mg total melatonin. Review response after 2–4 weeks before continuing.\n\nAdministration Advice\nSwallow whole with water in the evening and allow a full night for sleep. Do not crush the delayed-release component or combine with alcohol or other sedatives.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(125, 'Occasional Difficulty Initiating Sleep', 'May support sleep timing when a clinician considers melatonin appropriate after assessment of sleep habits and underlying causes.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(125, 'Supplemental Microbiota Support', 'Provides the listed probiotic organisms for intestinal microbial support. This does not establish treatment of anxiety, depression or chronic insomnia.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(125, '01 — Provides a Melatonin Signal', 'Immediate- and delayed-release melatonin can activate receptors involved in circadian sleep timing.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(125, '02 — Adds Other Calming Ingredients', 'Valerian and GABA are included for proposed calming effects, but reliable benefits of the exact blend are not established.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(125, '03 — Delivers Probiotic Organisms', 'The microbial blend provides specified organisms whose gastrointestinal effects depend on strain viability and individual response.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(125, 'sedation-and-interactions', 'Sedation and Interactions', 'May cause next-day sleepiness. Alcohol, benzodiazepines, opioids and other sedatives can increase impairment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(125, 'pregnancy-children-and-persistent-insomnia', 'Pregnancy, Children and Persistent Insomnia', 'Avoid unsupervised use in pregnancy, breastfeeding or children. Persistent sleep problems need assessment for underlying medical or psychological causes.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(125, 'probiotic-and-product-specific-risks', 'Probiotic and Product-Specific Risks', 'Severe illness or immunosuppression needs specialist review. Confirm strain identity, viable count and release design before use.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(126, 3, 'Fracway™', 'fracway', 'Fracway combines Cissus quadrangularis with collagen peptides, arginine, vitamin C and vitamin K2 for bone and connective-tissue nutritional support.', 'Fracway combines Cissus quadrangularis with collagen peptides, arginine, vitamin C and vitamin K2 for bone and connective-tissue nutritional support. These ingredients may complement an assessed recovery diet. The formulation should not be presented as a proven way to accelerate fracture union or replace immobilisation, surgery or prescribed fracture management.', 'Cissus quadrangularis extract 500 mg + Collagen peptide 100 mg + L-arginine 200 mg + Vitamin C 50 mg + Vitamin K2-7 45 mcg Tablets', '/assets/products/fracway.jpg', 'published', 126, 'Fracway™ | Onecore Pharma', 'Fracway combines Cissus quadrangularis with collagen peptides, arginine, vitamin C and vitamin K2 for bone and connective-tissue nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(126, 'Cissus quadrangularis extract 500 mg + Collagen peptide 100 mg + L-arginine 200 mg + Vitamin C 50 mg + Vitamin K2-7 45 mcg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(126, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(126, 'Nutritional Support During Fracture Recovery', 'May complement adequate calories, protein and prescribed fracture care when the clinician identifies dietary support needs.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(126, 'Connective-Tissue Nutrient Intake', 'Supplies selected ingredients involved in normal collagen-related and bone-protein processes when intake is inadequate.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(126, '01 — Provides Connective-Tissue Nutrients', 'Collagen peptides and arginine supply nutritional substrates, while vitamin C supports collagen-related enzyme activity.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(126, '02 — Supports Vitamin K-Dependent Proteins', 'Vitamin K2 participates in activation of vitamin K-dependent proteins involved in bone physiology.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(126, '03 — Adds a Botanical Component', 'Cissus has been studied in small trials, but findings from other combinations do not validate fracture acceleration with this formula.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(126, 'vitamin-k-and-anticoagulants', 'Vitamin K and Anticoagulants', 'Vitamin K2 can interfere with warfarin and related vitamin K antagonists. Use only after anticoagulation review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(126, 'allergy-and-botanical-variability', 'Allergy and Botanical Variability', 'Confirm collagen source and Cissus extract identity. Avoid with relevant animal-protein or botanical allergy.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(126, 'fracture-care-and-special-populations', 'Fracture Care and Special Populations', 'Do not replace orthopaedic follow-up. Seek individual advice in pregnancy, breastfeeding, kidney disease or before surgery.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(127, 3, 'Curajoy™', 'curajoy', 'Curajoy combines curcumin, rosehip, chondroitin and selected connective-tissue nutrients for supplemental joint support.', 'Curajoy combines curcumin, rosehip, chondroitin and selected connective-tissue nutrients for supplemental joint support. The ingredients participate in antioxidant, cartilage-related or nutritional pathways. It may complement exercise and an individual osteoarthritis care plan, but improvement in pain, cartilage structure or disease progression is not established for this exact formulation.', 'Curcuma longa (curcumin 95%) 200 mg + Rosehip 200 mg Chondroitin sulfate sodium 200 mg + Elemental magnesium 45 mg + Collagen type I 40 mg + Vitamin C 35 mg Sodium hyaluronate 30 mg + Vitamin D 400 IU Capsules', '/assets/products/curajoy.jpg', 'published', 127, 'Curajoy™ | Onecore Pharma', 'Curajoy combines curcumin, rosehip, chondroitin and selected connective-tissue nutrients for supplemental joint support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(127, 'Curcuma longa (curcumin 95%) 200 mg + Rosehip 200 mg Chondroitin sulfate sodium 200 mg + Elemental magnesium 45 mg + Collagen type I 40 mg + Vitamin C 35 mg Sodium hyaluronate 30 mg + Vitamin D 400 IU Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(127, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 capsule once daily. Reassess joint symptoms and total vitamin D intake before continuing long term.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(127, 'Adjunct Joint Nutritional Support', 'May complement an assessed joint-care plan when a clinician considers these ingredients appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(127, 'Inadequate Connective-Tissue Micronutrient Intake', 'Provides selected vitamins and minerals when dietary intake is inadequate. It is not a replacement for adequate protein or prescribed treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(127, '01 — Supplies Antioxidant Botanicals', 'Curcumin and rosehip provide compounds with antioxidant and inflammatory-signalling activity in experimental systems.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(127, '02 — Provides Matrix-Related Components', 'Chondroitin, collagen and hyaluronate are included as connective-tissue-related nutritional ingredients.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(127, '03 — Supports Nutrient-Dependent Functions', 'Vitamins C and D and magnesium contribute to normal connective-tissue, muscle or bone physiology.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(127, 'interactions-and-surgery', 'Interactions and Surgery', 'Review anticoagulants, antiplatelets and planned surgery because several ingredients may affect bleeding or interact with treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(127, 'allergy-and-liver-symptoms', 'Allergy and Liver Symptoms', 'Check collagen and chondroitin sources. Stop for jaundice, persistent nausea or significant abdominal pain.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(127, 'kidney-disease-and-vitamin-intake', 'Kidney Disease and Vitamin Intake', 'Review kidney impairment and total vitamin D or magnesium intake. Pregnancy and breastfeeding require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(128, 3, 'Jorelax™', 'jorelax', 'Jorelax combines diacerein with glucosamine, methylsulfonylmethane, chondroitin and selected minerals for prescribed osteoarthritis care.', 'Jorelax combines diacerein with glucosamine, methylsulfonylmethane, chondroitin and selected minerals for prescribed osteoarthritis care. Diacerein is a pharmacologically active medicine with a slow symptomatic effect. The combination requires individual assessment because diarrhoea, liver injury, interactions and age-related risks can make treatment unsuitable for some patients.', 'Glucosamine Sulphate Potassium Chloride 750 mg + Methylsulfonylmethane 250 mg + Diacerein 50 mg + Chondroitin Sulphate 100 mg + Manganese Sulphate 3 mg Sodium Borate 0.5 mg + Selenium 70 mcg Tablets', '/assets/products/jorelax.jpg', 'published', 128, 'Jorelax™ | Onecore Pharma', 'Jorelax combines diacerein with glucosamine, methylsulfonylmethane, chondroitin and selected minerals for prescribed osteoarthritis care.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(128, 'Glucosamine Sulphate Potassium Chloride 750 mg + Methylsulfonylmethane 250 mg + Diacerein 50 mg + Chondroitin Sulphate 100 mg + Manganese Sulphate 3 mg Sodium Borate 0.5 mg + Selenium 70 mcg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(128, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults younger than 65 years: start with 1 tablet once daily for 2–4 weeks. If tolerated and ongoing treatment is required, increase to 1 tablet twice daily. Do not exceed 2 tablets daily (diacerein 100 mg/day). Stop treatment if diarrhoea develops.\n\nAdministration Advice\nSwallow whole with food and water. At the twice-daily stage, take after breakfast and the evening meal. Do not use for immediate pain relief; reassess benefit and liver function during continued treatment.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(128, 'Symptomatic Knee Osteoarthritis', 'May be prescribed for selected patients after assessment of expected benefit, alternatives and diacerein-related risks.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(128, 'Symptomatic Hip Osteoarthritis', 'May be considered in selected hip osteoarthritis where the locally approved indication and patient profile support use.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(128, '01 — Provides Slow-Acting Pharmacological Activity', 'Diacerein is converted to rhein and modulates interleukin-1-related inflammatory pathways.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(128, '02 — Supplies Joint-Related Ingredients', 'Glucosamine and chondroitin provide compounds associated with cartilage matrix physiology.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(128, '03 — May Reduce Osteoarthritis Symptoms', 'Symptomatic effects can take weeks and do not establish cartilage regrowth or reversal of osteoarthritis.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(128, 'diarrhoea-and-older-age', 'Diarrhoea and Older Age', 'Diacerein can cause severe diarrhoea and dehydration. Stop if diarrhoea occurs. It is generally not recommended from age 65 under EMA safety guidance.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(128, 'liver-disease-and-monitoring', 'Liver Disease and Monitoring', 'Avoid with current or previous liver disease. Monitor liver symptoms and function as advised.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(128, 'interactions-allergy-and-organ-function', 'Interactions, Allergy and Organ Function', 'Review warfarin, diabetes, shellfish or collagen-related allergy and kidney impairment. Do not use during pregnancy or breastfeeding without specialist advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(129, 3, 'Oneflexo™', 'oneflexo', 'OneFLEXO combines a Boswellia serrata extract with a collagen- or hyaluronate-related ingredient for supplemental joint support.', 'OneFLEXO combines a Boswellia serrata extract with a collagen- or hyaluronate-related ingredient for supplemental joint support. Boswellia constituents have anti-inflammatory signalling effects, while the companion ingredient may support joint-related nutrition. The exact branded ingredient identity needs confirmation before applying evidence from a particular native collagen or hyaluronate formulation.', 'Aflapin (Boswellia serrata gum resin extract) 100mg + Mobilee (Native Collagen Type II) 40mg + (Contains Sodium Hyaluronate, Polysaccharides and collagen) Capsules', '/assets/products/oneflexo.jpg', 'published', 129, 'Oneflexo™ | Onecore Pharma', 'OneFLEXO combines a Boswellia serrata extract with a collagen- or hyaluronate-related ingredient for supplemental joint support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(129, 'Aflapin (Boswellia serrata gum resin extract) 100mg + Mobilee (Native Collagen Type II) 40mg + (Contains Sodium Hyaluronate, Polysaccharides and collagen) Capsules', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(129, 'Administration and Dosage Guidance', 'Dosing and Schedule\nOne capsule daily after meal orally with water for minimum 2-3 months or more depending upon the severity of condition, or as directed by a healthcare professional.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(129, 'Adjunct Joint-Comfort Support', 'May complement exercise, weight management and clinician-directed care in selected people with joint discomfort.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(129, 'Supplemental Joint-Related Nutrition', 'Provides the verified companion ingredient when a clinician considers it appropriate. It does not establish cartilage regeneration.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(129, '01 — Provides Boswellia Constituents', 'The extract supplies boswellic-acid-related compounds that may influence inflammatory signalling.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(129, '02 — Adds a Joint-Related Ingredient', 'A verified hyaluronate matrix or native collagen ingredient would have different proposed actions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(129, '03 — Complements Joint Care', 'Any symptomatic benefit depends on the exact ingredients, doses and evidence and should be reviewed clinically.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(129, 'ingredient-identity-and-allergy', 'Ingredient Identity and Allergy', 'Confirm whether the formula contains Mobilee, native type II collagen or both. Review the animal source and relevant allergy.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(129, 'interactions-and-tolerance', 'Interactions and Tolerance', 'Review anticoagulants and other joint supplements. Stop for significant gastrointestinal upset or allergic symptoms.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(129, 'pregnancy-and-progressive-symptoms', 'Pregnancy and Progressive Symptoms', 'Seek individual advice in pregnancy or breastfeeding. Hot, swollen joints or worsening functional loss needs medical assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(130, 3, 'Duodk™', 'duodk', 'DuoDK combines vitamin D3 with vitamin K2 as menaquinone-7 for nutritional bone support.', 'DuoDK combines vitamin D3 with vitamin K2 as menaquinone-7 for nutritional bone support. Vitamin D helps maintain calcium and phosphate absorption, while vitamin K supports activation of vitamin K-dependent proteins. It complements adequate dietary calcium and a balanced diet when assessed nutrient intake is insufficient.', 'Vitamin D3 600 IU + Vitamin K2 as MK-7 55 mcg Tablets', '/assets/products/duodk.jpg', 'published', 130, 'Duodk™ | Onecore Pharma', 'DuoDK combines vitamin D3 with vitamin K2 as menaquinone-7 for nutritional bone support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(130, 'Vitamin D3 600 IU + Vitamin K2 as MK-7 55 mcg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(130, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet once daily. Review the duration against the identified nutritional need and response.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(130, 'Inadequate Vitamin D and K Intake', 'Supplements the listed vitamins when dietary assessment indicates a need for this combination.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(130, 'Adjunct Bone Nutritional Support', 'Supports normal bone-related physiology alongside adequate calcium, protein and appropriate exercise. It does not replace osteoporosis-specific medicines.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(130, '01 — Supports Calcium Absorption', 'Vitamin D3 is converted to active metabolites that support calcium and phosphate absorption.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(130, '02 — Activates Vitamin K-Dependent Proteins', 'Vitamin K2 is a cofactor for carboxylation of proteins involved in bone and other physiological functions.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(130, '03 — Complements Bone Nutrition', 'Adequate vitamin D, vitamin K and dietary mineral intake support normal skeletal maintenance.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(130, 'warfarin-and-related-medicines', 'Warfarin and Related Medicines', 'Vitamin K2 can alter vitamin K antagonist anticoagulation. Do not start or change intake without the anticoagulation clinician’s advice.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(130, 'high-calcium-and-duplicate-supplements', 'High Calcium and Duplicate Supplements', 'Review total vitamin D intake. High blood calcium, kidney stones or granulomatous disease requires individual assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(130, 'dose-expectations', 'Dose Expectations', 'This nutritional dose is not a high-dose deficiency treatment. Pregnancy, breastfeeding and children need age-appropriate advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(131, 3, 'Trypcor™', 'trypcor', 'Trypcor combines aceclofenac with paracetamol and trypsin-chymotrypsin for short-term relief of selected painful inflammatory conditions.', 'Trypcor combines aceclofenac with paracetamol and trypsin-chymotrypsin for short-term relief of selected painful inflammatory conditions. Aceclofenac reduces prostaglandin-mediated pain and inflammation. The enzyme ingredients are included as adjuncts, but additional benefits for swelling or recovery are not consistently established and do not replace treatment of the underlying cause.', 'Trypsin-Chymotrypsin 150000 AU, Aceclofenac 100 mg & Paracetamol 325 mg Tablets', '/assets/products/trypcor.jpg', 'published', 131, 'Trypcor™ | Onecore Pharma', 'Trypcor combines aceclofenac with paracetamol and trypsin-chymotrypsin for short-term relief of selected painful inflammatory conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(131, 'Trypsin-Chymotrypsin 150000 AU, Aceclofenac 100 mg & Paracetamol 325 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(131, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet twice daily for the shortest necessary course. Do not exceed 2 tablets in 24 hours; this supplies the maximum 200 mg daily aceclofenac dose.\n\nAdministration Advice\nSwallow whole with water immediately after breakfast and the evening meal. Do not crush an enteric-coated enzyme component. Avoid other NSAIDs and review other paracetamol-containing medicines before use.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(131, 'Acute Musculoskeletal Pain and Inflammation', 'May be prescribed briefly for assessed painful strains, sprains or other inflammatory musculoskeletal conditions.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(131, 'Selected Post-Injury or Postoperative Pain', 'May provide symptomatic relief when the treating clinician considers the combination appropriate and bleeding risk acceptable.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(131, '01 — Reduces Inflammatory Prostaglandins', 'Aceclofenac inhibits cyclo-oxygenase-mediated prostaglandin production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(131, '02 — Adds Central Pain Relief', 'Paracetamol supports analgesia mainly through central pain pathways.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(131, '03 — Provides Adjunct Proteolytic Activity', 'Trypsin-chymotrypsin supplies proteolytic enzyme activity, with limited evidence for additional clinical reduction of swelling.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(131, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(131, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(131, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(131, 'enzymes-and-other-ingredients', 'Enzymes and Other Ingredients', 'Avoid duplicate paracetamol and excessive alcohol. Review anticoagulants because proteolytic enzymes may add bleeding risk.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(132, 3, 'Trypcor™-BR', 'trypcor-br', 'Trypcor-BR combines aceclofenac with bromelain, trypsin and rutoside for short-term relief of selected painful inflammatory conditions.', 'Trypcor-BR combines aceclofenac with bromelain, trypsin and rutoside for short-term relief of selected painful inflammatory conditions. Aceclofenac reduces prostaglandin-mediated pain and inflammation. The enzyme ingredients are included as adjuncts, but additional benefits for swelling or recovery are not consistently established and do not replace treatment of the underlying cause.', 'Trypsin 48 mg + Bromelain 90 mg + Rutoside Trihydrate 100 mg + Aceclofenac 100 mg Tablets', '/assets/products/trypcor-br.jpg', 'published', 132, 'Trypcor™-BR | Onecore Pharma', 'Trypcor-BR combines aceclofenac with bromelain, trypsin and rutoside for short-term relief of selected painful inflammatory conditions.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(132, 'Trypsin 48 mg + Bromelain 90 mg + Rutoside Trihydrate 100 mg + Aceclofenac 100 mg Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(132, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults: take 1 tablet twice daily for the shortest necessary course. Do not exceed 2 tablets in 24 hours; this supplies the maximum 200 mg daily aceclofenac dose.\n\nAdministration Advice\nSwallow the tablet whole with water immediately after breakfast and the evening meal. Do not crush an enteric-coated enzyme component or combine with other NSAIDs.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(132, 'Acute Musculoskeletal Pain and Inflammation', 'May be prescribed briefly for assessed painful strains, sprains or other inflammatory musculoskeletal conditions.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(132, 'Selected Post-Injury or Postoperative Pain', 'May provide symptomatic relief when the treating clinician considers the combination appropriate and bleeding risk acceptable.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(132, '01 — Reduces Inflammatory Prostaglandins', 'Aceclofenac inhibits cyclo-oxygenase-mediated prostaglandin production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(132, '02 — Provides Adjunct Enzyme and Flavonoid Components', 'Trypsin, bromelain and rutoside have proposed proteolytic or inflammatory-signalling actions; clinical benefit is formulation-specific.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(132, '03 — Provides Adjunct Proteolytic Activity', 'The blend is intended to complement symptomatic care; it does not prove accelerated tissue healing.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(132, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(132, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(132, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(132, 'enzymes-and-other-ingredients', 'Enzymes and Other Ingredients', 'Review anticoagulants and planned surgery. Avoid with relevant pineapple or enzyme allergy.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(133, 8, 'Tofcore™-11', 'tofcore-11', 'TOFCORE-11 contains extended-release tofacitinib, an oral Janus kinase inhibitor used in selected immune-mediated inflammatory diseases.', 'TOFCORE-11 contains extended-release tofacitinib, an oral Janus kinase inhibitor used in selected immune-mediated inflammatory diseases. It reduces signalling by cytokines involved in inflammation. Treatment requires specialist selection, screening and monitoring because serious infection, cancer, major cardiovascular events and thrombosis can occur, particularly in patients with relevant risk factors.', 'Tofacitinib 11 mg Extended Release Tablets', '/assets/therapeutic-general-medicine.jpg', 'published', 133, 'Tofcore™-11 | Onecore Pharma', 'TOFCORE-11 contains extended-release tofacitinib, an oral Janus kinase inhibitor used in selected immune-mediated inflammatory diseases.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(133, 'Tofacitinib 11 mg Extended Release Tablets', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(133, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with rheumatoid arthritis, psoriatic arthritis or ankylosing spondylitis requiring this formulation: take 1 extended-release tablet (11 mg) once daily. Moderate or severe kidney impairment, moderate liver impairment or relevant interacting medicines require a different reduced-dose regimen and formulation.\n\nAdministration Advice\nSwallow whole with water at the same time daily, with or without food. Do not split, crush or chew. Do not interchange with immediate-release tablets without a prescribing change.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, 'Selected Rheumatoid Arthritis', 'May be used after an inadequate response or intolerance to appropriate prior therapies, according to the local indication and risk assessment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, 'Selected Psoriatic Arthritis', 'May be prescribed for eligible adults after previous treatment has been reviewed.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, 'Selected Ankylosing Spondylitis', 'May be considered in eligible adults when the approved indication and prior-treatment requirements are met.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, '01 — Inhibits Janus Kinases', 'Tofacitinib inhibits intracellular JAK-dependent signalling.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, '02 — Reduces Cytokine Responses', 'This limits downstream signalling from multiple immune-regulating cytokine receptors.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(133, '03 — Suppresses Inflammatory Activity', 'Reduced immune signalling can improve disease activity in appropriately selected patients.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(133, 'serious-infection-and-screening', 'Serious Infection and Screening', 'Screen for tuberculosis and relevant hepatitis and assess blood counts before treatment. Do not start during active serious infection and review vaccination needs.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(133, 'cancer-and-cardiovascular-risk', 'Cancer and Cardiovascular Risk', 'Assess malignancy, smoking, cardiovascular and thrombotic risk before treatment. Use only when the specialist judges expected benefit appropriate.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(133, 'monitoring-and-interactions', 'Monitoring and Interactions', 'Monitor blood counts, liver enzymes and lipids. Kidney or liver impairment and strong CYP inhibitors may require a different dose or formulation.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(133, 'pregnancy-and-urgent-symptoms', 'Pregnancy and Urgent Symptoms', 'Avoid in pregnancy and follow contraception and breastfeeding restrictions. Fever, chest pain, breathlessness or leg swelling needs urgent assessment.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(134, 8, 'Frecox™-R', 'frecox-r', 'Frecox-R combines aceclofenac with rabeprazole for selected painful inflammatory conditions when both an NSAID and acid suppression are appropriate.', 'Frecox-R combines aceclofenac with rabeprazole for selected painful inflammatory conditions when both an NSAID and acid suppression are appropriate. Aceclofenac reduces pain and inflammation, while rabeprazole lowers stomach acid. Acid suppression does not remove the NSAID’s bleeding, kidney or cardiovascular risks, and treatment should remain brief and individually reviewed.', 'Aceclofenac 200 mg + rabeprazole 20 mg per tablet', '/assets/products/frecox-r.jpg', 'published', 134, 'Frecox™-R | Onecore Pharma', 'Frecox-R combines aceclofenac with rabeprazole for selected painful inflammatory conditions when both an NSAID and acid suppression are appropriate.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(134, 'Aceclofenac 200 mg + rabeprazole 20 mg per tablet', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(134, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nSwallow the tablet whole with water at the prescribed meal-related time. Do not crush a sustained-release or gastro-resistant component. Follow the actual fixed-combination label.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(134, 'Painful Inflammatory Musculoskeletal Conditions', 'May relieve assessed joint or musculoskeletal pain when an NSAID is appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(134, 'NSAID Therapy Requiring Acid Suppression', 'May be selected when the clinician identifies a concurrent need for proton pump inhibitor gastroprotection.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(134, '01 — Reduces Prostaglandin-Mediated Inflammation', 'Aceclofenac inhibits cyclo-oxygenase activity and reduces inflammatory pain.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(134, '02 — Suppresses Gastric Acid', 'Rabeprazole inhibits the gastric proton pump.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(134, '03 — Combines Symptomatic and Acid Control', 'The two actions address separate clinical needs but do not eliminate serious NSAID toxicity.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(134, 'stomach-bleeding-and-allergy', 'Stomach Bleeding and Allergy', 'Avoid with active peptic ulcer, previous NSAID-related bleeding or aspirin-sensitive asthma. Stop and seek urgent care for black stools or vomiting blood.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(134, 'kidney-heart-and-liver-problems', 'Kidney, Heart and Liver Problems', 'Use the lowest effective dose briefly. Kidney disease, dehydration, cardiovascular disease and liver problems need medical assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(134, 'pregnancy-and-other-medicines', 'Pregnancy and Other Medicines', 'Avoid in pregnancy unless specifically prescribed, particularly from 20 weeks onwards. Do not combine with other NSAIDs. Review anticoagulants and other interacting medicines.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(135, 3, 'Frecox™ Gel', 'frecox-gel', 'Frecox Gel combines topical aceclofenac with linseed oil, methyl salicylate, menthol and capsaicin for selected local musculoskeletal discomfort.', 'Frecox Gel combines topical aceclofenac with linseed oil, methyl salicylate, menthol and capsaicin for selected local musculoskeletal discomfort. The ingredients have anti-inflammatory or sensory counter-irritant actions. The capsaicin concentration requires verification before use because the supplied value differs greatly from common low-strength topical pain-relief formulations.', 'Aceclofenac 1.5% w/w + linseed oil 3% w/w + methyl salicylate 10% w/w + menthol 5% w/w + capsaicin 3% w/w', '/assets/therapeutic-orthopaedics.jpg', 'published', 135, 'Frecox™ Gel | Onecore Pharma', 'Frecox Gel combines topical aceclofenac with linseed oil, methyl salicylate, menthol and capsaicin for selected local musculoskeletal discomfort.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(135, 'Aceclofenac 1.5% w/w + linseed oil 3% w/w + methyl salicylate 10% w/w + menthol 5% w/w + capsaicin 3% w/w', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(135, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nFor external use only on intact skin after label verification. Avoid heat pads, tight dressings, vigorous massage, eyes and mucous membranes. Wash hands thoroughly afterwards.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(135, 'Local Muscle or Joint Discomfort', 'May be used for limited symptomatic relief once the finished formula and safe application directions are confirmed.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(135, 'Minor Soft-Tissue Pain', 'May complement appropriate care for a minor strain or sprain after assessment and verification of the product strength.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(135, '01 — Reduces Local Inflammatory Activity', 'Aceclofenac inhibits cyclo-oxygenase-related prostaglandin production.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(135, '02 — Produces Sensory Counter-Irritation', 'Menthol and methyl salicylate alter local sensory perception and provide a warming or cooling effect.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(135, '03 — Modulates Capsaicin-Sensitive Nerves', 'Capsaicin activates TRPV1 receptors; repeated suitable exposure can reduce sensory responsiveness, but concentration governs safety.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(135, 'capsaicin-strength-and-burns', 'Capsaicin Strength and Burns', 'The listed 3% is not a routine low-strength pain-gel concentration. Do not use until verified. Heat or occlusion can increase serious burn risk.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(135, 'broken-skin-and-allergy', 'Broken Skin and Allergy', 'Avoid wounds, irritated skin and relevant NSAID or salicylate allergy. Stop immediately for severe burning, blistering or rash.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(135, 'pregnancy-children-and-other-treatments', 'Pregnancy, Children and Other Treatments', 'Use only after individual advice in pregnancy or children. Review other topical analgesics and avoid accidental ingestion.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(136, 9, 'Curajoy™ Q10', 'curajoy-q10', 'Curajoy Q10 combines curcuma-derived ingredients with coenzyme Q10 in a water-soluble syrup for supplemental antioxidant support.', 'Curajoy Q10 combines curcuma-derived ingredients with coenzyme Q10 in a water-soluble syrup for supplemental antioxidant support. Curcuminoids have antioxidant activity, while coenzyme Q10 participates in cellular energy pathways. It may complement an assessed nutritional plan, but benefits during cancer treatment or recovery are not established for this specific formulation.', 'Curcuma longa 125 mg + nanocurcuminoids stated as 10% + coenzyme Q10 50 mg in water-soluble syrup', '/assets/products/curajoy-q10.jpg', 'published', 136, 'Curajoy™ Q10 | Onecore Pharma', 'Curajoy Q10 combines curcuma-derived ingredients with coenzyme Q10 in a water-soluble syrup for supplemental antioxidant support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(136, 'Curcuma longa 125 mg + nanocurcuminoids stated as 10% + coenzyme Q10 50 mg in water-soluble syrup', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(136, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nMeasure the verified prescribed serving with a calibrated device. Shake if directed and follow storage instructions. Obtain oncology approval during cancer treatment.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(136, 'Supplemental Antioxidant Intake', 'May be considered when a clinician identifies a reason for this antioxidant combination.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(136, 'Adjunct Nutritional Support During Recovery', 'May complement an appropriate nutritional plan after illness when cleared by the treating team. It is not an anticancer therapy.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(136, '01 — Supplies Plant-Derived Antioxidants', 'The listed curcuminoids or tocotrienols have antioxidant activity in experimental systems.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(136, '02 — Supports Mitochondrial Electron Transfer', 'Coenzyme Q10 participates in energy production and antioxidant functions within cell membranes.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(136, '03 — Provides Adjunct Nutritional Support', 'Use may complement assessed nutritional care. These mechanisms do not establish prevention or treatment of cancer.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(136, 'cancer-treatment-and-interactions', 'Cancer Treatment and Interactions', 'Ask the oncologist before use during chemotherapy, radiotherapy or immunotherapy. Antioxidant and herbal interactions may affect treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(136, 'bleeding-liver-and-digestive-effects', 'Bleeding, Liver and Digestive Effects', 'Review anticoagulants and planned surgery. Stop for jaundice, persistent nausea or significant abdominal pain and seek medical advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(136, 'evidence-and-special-populations', 'Evidence and Special Populations', 'Do not replace prescribed treatment. Pregnancy, breastfeeding, children and significant kidney or liver disease require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(137, 9, 'Gemcore™', 'gemcore', 'Gemcore contains gemcitabine, an intravenous cytotoxic medicine used in selected cancer treatment regimens.', 'Gemcore contains gemcitabine, an intravenous cytotoxic medicine used in selected cancer treatment regimens. Inside cells, it is converted into active metabolites that interfere with DNA synthesis. Treatment is delivered by an oncology team, with the dose and schedule based on cancer type, body surface area, blood counts and organ function.', 'Gemcitabine 200 mg / 1 g Injection', '/assets/products/gemcore.jpg', 'published', 137, 'Gemcore™ | Onecore Pharma', 'Gemcore contains gemcitabine, an intravenous cytotoxic medicine used in selected cancer treatment regimens.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(137, 'Gemcitabine 200 mg / 1 g Injection', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(137, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults — pancreatic cancer: 1000 mg/m² once weekly for 7 weeks, then 1 week off; subsequently on days 1, 8 and 15 of each 28-day cycle. NSCLC with cisplatin: 1250 mg/m² on days 1 and 8 every 21 days, or 1000 mg/m² on days 1, 8 and 15 every 28 days. Breast cancer with paclitaxel: 1250 mg/m² on days 1 and 8 every 21 days. Ovarian cancer with carboplatin: 1000 mg/m² on days 1 and 8 every 21 days. Adjust or withhold according to blood counts and toxicity.\n\nAdministration Advice\nGive by intravenous infusion over 30 minutes in an oncology unit. Calculate the required milligrams from body surface area and select sufficient 200 mg and/or 1 g vials. Reconstitute and dilute by the exact vial instructions; use cytotoxic handling precautions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, 'Pancreatic Cancer', 'Used in selected locally advanced or metastatic pancreatic cancer regimens according to the oncologist’s assessment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, 'Non-Small Cell Lung Cancer', 'May be used with cisplatin in appropriate non-small cell lung cancer treatment protocols.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, 'Breast Cancer', 'May be combined with paclitaxel for selected metastatic breast cancer following prior treatment.', 3);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, 'Ovarian Cancer', 'May be combined with carboplatin in selected recurrent ovarian cancer.', 4);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, '01 — Forms Active Nucleotide Metabolites', 'Intracellular enzymes convert gemcitabine to diphosphate and triphosphate metabolites.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, '02 — Interferes with DNA Synthesis', 'The metabolites inhibit ribonucleotide reductase and are incorporated into DNA.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(137, '03 — Restricts Cancer Cell Division', 'Impaired DNA synthesis limits proliferation of susceptible rapidly dividing cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(137, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Myelosuppression requires blood-count monitoring. Fever, bleeding or marked weakness during treatment needs urgent oncology advice.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(137, 'lung-kidney-and-liver-toxicity', 'Lung, Kidney and Liver Toxicity', 'Report new breathlessness, reduced urine, swelling or jaundice. Organ function and haemolytic-uraemic syndrome risk require monitoring.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(137, 'pregnancy-and-reproductive-risk', 'Pregnancy and Reproductive Risk', 'Can harm a fetus. Use effective contraception for the label-specified period and discuss fertility and breastfeeding restrictions.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(137, 'infusion-and-radiation-precautions', 'Infusion and Radiation Precautions', 'Longer infusions or excessive dosing frequency increase toxicity. Radiation-related toxicity requires coordination of treatment timing.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(138, 9, 'Oxalitos™ 50', 'oxalitos-50', 'Oxalitos 50 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer.', 'Oxalitos 50 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer. It forms DNA cross-links that interfere with cell division. Treatment is prescribed by an oncologist, with dose selection and adjustments based on body surface area, neuropathy, blood counts and kidney function.', 'Oxaliplatin 50 mg per injection vial; concentrate or powder presentation not specified', '/assets/products/oxalitos-50.jpg', 'published', 138, 'Oxalitos™ 50 | Onecore Pharma', 'Oxalitos 50 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(138, 'Oxaliplatin 50 mg per injection vial; concentrate or powder presentation not specified', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(138, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults receiving FOLFOX for colorectal cancer: administer 85 mg/m² intravenously on day 1 of each 14-day cycle with leucovorin and fluorouracil. Calculate the dose from body surface area; adjust or withhold for neuropathy, blood counts, severe kidney impairment or other toxicity.\n\nAdministration Advice\nInfuse over 2 hours through an oncology service, before fluorouracil. Use the pack-specified 5% glucose dilution. Do not use sodium chloride or other chloride-containing solutions, and do not mix with alkaline preparations. Use the required number of vials for the calculated dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(138, 'Adjuvant Treatment of Stage III Colon Cancer', 'Used with fluorouracil and leucovorin after complete tumour removal in appropriate patients.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(138, 'Advanced Colorectal Cancer', 'Used within selected combination chemotherapy regimens for advanced disease.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(138, '01 — Forms Reactive Platinum Compounds', 'Oxaliplatin undergoes conversion to reactive platinum species within biological fluids.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(138, '02 — Creates DNA Cross-Links', 'Platinum binds DNA and produces intra-strand and inter-strand cross-links.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(138, '03 — Disrupts Cell Replication', 'DNA damage interferes with replication and transcription, leading to death of susceptible cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(138, 'neuropathy-and-cold-sensitivity', 'Neuropathy and Cold Sensitivity', 'Cold can trigger acute tingling or throat discomfort. Avoid cold exposure around treatment and report persistent numbness or functional difficulty.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(138, 'hypersensitivity-and-infusion-reactions', 'Hypersensitivity and Infusion Reactions', 'Severe allergy can occur, including after previous tolerated cycles. Infusion staff must monitor and manage reactions immediately.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(138, 'blood-counts-and-organ-function', 'Blood Counts and Organ Function', 'Monitor blood counts and kidney function. Fever, unusual bleeding, severe diarrhoea or dehydration requires prompt oncology advice.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(138, 'pregnancy-and-contraception', 'Pregnancy and Contraception', 'May harm a fetus and affect fertility. Follow label-specific contraception and breastfeeding restrictions.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(139, 9, 'Oxalitos™ 100', 'oxalitos-100', 'Oxalitos 100 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer.', 'Oxalitos 100 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer. It forms DNA cross-links that interfere with cell division. Treatment is prescribed by an oncologist, with dose selection and adjustments based on body surface area, neuropathy, blood counts and kidney function.', 'Oxaliplatin 100 mg per injection vial; concentrate or powder presentation not specified', '/assets/products/oxalitos-100.jpg', 'published', 139, 'Oxalitos™ 100 | Onecore Pharma', 'Oxalitos 100 contains oxaliplatin, a platinum-based intravenous chemotherapy medicine used with other anticancer agents in colorectal cancer.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(139, 'Oxaliplatin 100 mg per injection vial; concentrate or powder presentation not specified', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(139, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults receiving FOLFOX for colorectal cancer: administer 85 mg/m² intravenously on day 1 of each 14-day cycle with leucovorin and fluorouracil. Calculate the dose from body surface area; adjust or withhold for neuropathy, blood counts, severe kidney impairment or other toxicity.\n\nAdministration Advice\nInfuse over 2 hours through an oncology service, before fluorouracil. Use the pack-specified 5% glucose dilution. Do not use sodium chloride or other chloride-containing solutions, and do not mix with alkaline preparations. Use the required number of vials for the calculated dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(139, 'Adjuvant Treatment of Stage III Colon Cancer', 'Used with fluorouracil and leucovorin after complete tumour removal in appropriate patients.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(139, 'Advanced Colorectal Cancer', 'Used within selected combination chemotherapy regimens for advanced disease.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(139, '01 — Forms Reactive Platinum Compounds', 'Oxaliplatin undergoes conversion to reactive platinum species within biological fluids.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(139, '02 — Creates DNA Cross-Links', 'Platinum binds DNA and produces intra-strand and inter-strand cross-links.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(139, '03 — Disrupts Cell Replication', 'DNA damage interferes with replication and transcription, leading to death of susceptible cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(139, 'neuropathy-and-cold-sensitivity', 'Neuropathy and Cold Sensitivity', 'Cold can trigger acute tingling or throat discomfort. Avoid cold exposure around treatment and report persistent numbness or functional difficulty.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(139, 'hypersensitivity-and-infusion-reactions', 'Hypersensitivity and Infusion Reactions', 'Severe allergy can occur, including after previous tolerated cycles. Infusion staff must monitor and manage reactions immediately.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(139, 'blood-counts-and-organ-function', 'Blood Counts and Organ Function', 'Monitor blood counts and kidney function. Fever, unusual bleeding, severe diarrhoea or dehydration requires prompt oncology advice.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(139, 'pregnancy-and-contraception', 'Pregnancy and Contraception', 'May harm a fetus and affect fertility. Follow label-specific contraception and breastfeeding restrictions.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(140, 9, 'Bevacore™ 400', 'bevacore-400', 'Bevacore 400 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor.', 'Bevacore 400 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor. Blocking this signal reduces formation of blood vessels that support tumour growth. Treatment is delivered by an oncology team with monitoring for hypertension, bleeding, wound-healing problems and other serious adverse effects.', 'Bevacizumab 400 mg/16 mL (25 mg/mL) concentrate for intravenous infusion', '/assets/products/bevacore-400.jpg', 'published', 140, 'Bevacore™ 400 | Onecore Pharma', 'Bevacore 400 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(140, 'Bevacizumab 400 mg/16 mL (25 mg/mL) concentrate for intravenous infusion', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(140, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults — metastatic colorectal cancer: 5 mg/kg every 2 weeks with bolus-IFL chemotherapy, or 10 mg/kg every 2 weeks with FOLFOX4. First-line non-squamous NSCLC: 15 mg/kg every 3 weeks with carboplatin/paclitaxel. Persistent, recurrent or metastatic cervical cancer: 15 mg/kg every 3 weeks with paclitaxel/cisplatin or paclitaxel/topotecan. Platinum-sensitive recurrent ovarian cancer: 15 mg/kg every 3 weeks with carboplatin/gemcitabine for 6–10 cycles, then 15 mg/kg every 3 weeks alone. Select the protocol matching the indication and treatment setting; withhold for protocol-defined toxicity.\n\nAdministration Advice\nDilute the calculated weight-based dose in 0.9% sodium chloride and give by intravenous infusion only. Infuse the first dose over 90 minutes, the second over 60 minutes if tolerated, then over 30 minutes if tolerated. Do not give as an IV push or intraocular injection.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, 'Metastatic Colorectal Cancer', 'Used with appropriate fluoropyrimidine-based chemotherapy in selected treatment settings.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, 'Selected Non-Squamous Lung Cancer', 'May be combined with chemotherapy in appropriate advanced non-squamous non-small cell lung cancer.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, 'Selected Ovarian or Cervical Cancer', 'May be used in specific combination regimens where the locally approved indication and patient assessment support treatment.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, '01 — Binds VEGF-A', 'Bevacizumab binds vascular endothelial growth factor A in extracellular fluid.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, '02 — Prevents Receptor Activation', 'Bound VEGF cannot activate its receptors on vascular endothelial cells.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(140, '03 — Inhibits Angiogenic Signalling', 'Reduced signalling limits new blood-vessel formation supporting susceptible tumours.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(140, 'bleeding-perforation-and-clots', 'Bleeding, Perforation and Clots', 'Serious haemorrhage, gastrointestinal perforation and thromboembolic events can occur. Severe abdominal pain, bleeding or sudden neurological symptoms need urgent care.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(140, 'surgery-and-wound-healing', 'Surgery and Wound Healing', 'Withhold around major surgery according to the label, generally at least 28 days before and after surgery and until adequate healing.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(140, 'blood-pressure-and-kidney-effects', 'Blood Pressure and Kidney Effects', 'Monitor blood pressure and urine protein. Uncontrolled hypertension, severe proteinuria or neurological symptoms may require treatment interruption.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(140, 'pregnancy-fertility-and-administration', 'Pregnancy, Fertility and Administration', 'Can harm a fetus and affect ovarian function. Follow contraception and breastfeeding restrictions. Use only the approved oncology administration route.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(141, 9, 'Bevacore™ 100', 'bevacore-100', 'Bevacore 100 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor.', 'Bevacore 100 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor. Blocking this signal reduces formation of blood vessels that support tumour growth. Treatment is delivered by an oncology team with monitoring for hypertension, bleeding, wound-healing problems and other serious adverse effects.', 'Bevacizumab 100 mg/4 mL (25 mg/mL) concentrate for intravenous infusion', '/assets/products/bevacore-100.jpg', 'published', 141, 'Bevacore™ 100 | Onecore Pharma', 'Bevacore 100 contains bevacizumab, a monoclonal antibody used in selected cancer regimens to inhibit vascular endothelial growth factor.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(141, 'Bevacizumab 100 mg/4 mL (25 mg/mL) concentrate for intravenous infusion', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(141, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults — metastatic colorectal cancer: 5 mg/kg every 2 weeks with bolus-IFL chemotherapy, or 10 mg/kg every 2 weeks with FOLFOX4. First-line non-squamous NSCLC: 15 mg/kg every 3 weeks with carboplatin/paclitaxel. Persistent, recurrent or metastatic cervical cancer: 15 mg/kg every 3 weeks with paclitaxel/cisplatin or paclitaxel/topotecan. Platinum-sensitive recurrent ovarian cancer: 15 mg/kg every 3 weeks with carboplatin/gemcitabine for 6–10 cycles, then 15 mg/kg every 3 weeks alone. Select the protocol matching the indication and treatment setting; withhold for protocol-defined toxicity.\n\nAdministration Advice\nDilute the calculated weight-based dose in 0.9% sodium chloride and give by intravenous infusion only. Infuse the first dose over 90 minutes, the second over 60 minutes if tolerated, then over 30 minutes if tolerated. Do not give as an IV push or intraocular injection.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, 'Metastatic Colorectal Cancer', 'Used with appropriate fluoropyrimidine-based chemotherapy in selected treatment settings.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, 'Selected Non-Squamous Lung Cancer', 'May be combined with chemotherapy in appropriate advanced non-squamous non-small cell lung cancer.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, 'Selected Ovarian or Cervical Cancer', 'May be used in specific combination regimens where the locally approved indication and patient assessment support treatment.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, '01 — Binds VEGF-A', 'Bevacizumab binds vascular endothelial growth factor A in extracellular fluid.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, '02 — Prevents Receptor Activation', 'Bound VEGF cannot activate its receptors on vascular endothelial cells.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(141, '03 — Inhibits Angiogenic Signalling', 'Reduced signalling limits new blood-vessel formation supporting susceptible tumours.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(141, 'bleeding-perforation-and-clots', 'Bleeding, Perforation and Clots', 'Serious haemorrhage, gastrointestinal perforation and thromboembolic events can occur. Severe abdominal pain, bleeding or sudden neurological symptoms need urgent care.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(141, 'surgery-and-wound-healing', 'Surgery and Wound Healing', 'Withhold around major surgery according to the label, generally at least 28 days before and after surgery and until adequate healing.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(141, 'blood-pressure-and-kidney-effects', 'Blood Pressure and Kidney Effects', 'Monitor blood pressure and urine protein. Uncontrolled hypertension, severe proteinuria or neurological symptoms may require treatment interruption.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(141, 'pregnancy-fertility-and-administration', 'Pregnancy, Fertility and Administration', 'Can harm a fetus and affect ovarian function. Follow contraception and breastfeeding restrictions. Use only the approved oncology administration route.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(142, 9, 'Oncogras™', 'oncogras', 'Oncogras contains filgrastim, a granulocyte colony-stimulating factor that helps increase neutrophil production.', 'Oncogras contains filgrastim, a granulocyte colony-stimulating factor that helps increase neutrophil production. It is used in selected chemotherapy and other neutropenia settings to support recovery of infection-fighting white blood cells. The dose and duration are determined by indication, body weight and blood-count response under specialist supervision.', 'Filgrastim 300 mcg per 1 mL injection (corrected spelling)', '/assets/products/oncogras.jpg', 'published', 142, 'Oncogras™ | Onecore Pharma', 'Oncogras contains filgrastim, a granulocyte colony-stimulating factor that helps increase neutrophil production.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(142, 'Filgrastim 300 mcg per 1 mL injection (corrected spelling)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(142, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChemotherapy-associated neutropenia: start at 5 mcg/kg once daily, beginning at least 24 hours after cytotoxic chemotherapy. Continue until the post-nadir neutrophil count recovers, using blood-count monitoring. At 300 mcg/mL, 5 mcg/kg equals 0.0167 mL/kg; a trained professional must calculate and measure the dose. Do not give within 24 hours before chemotherapy.\n\nAdministration Advice\nAdminister by subcutaneous injection or the label-approved intravenous infusion route. Refrigerate as directed, do not shake and use aseptic technique. A 300 mcg vial is not a fixed dose for every patient; follow vial-specific dilution and discard instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, 'Chemotherapy-Associated Neutropenia', 'Helps reduce the duration or consequences of neutropenia in appropriate patients receiving myelosuppressive chemotherapy.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, 'Stem-Cell Mobilisation', 'May be prescribed to mobilise peripheral blood progenitor cells before collection within a specialist protocol.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, 'Selected Severe Chronic Neutropenia', 'May support neutrophil counts in selected congenital, cyclic or idiopathic neutropenia after specialist assessment.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, '01 — Activates G-CSF Receptors', 'Filgrastim binds granulocyte colony-stimulating factor receptors on responsive marrow cells.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, '02 — Stimulates Neutrophil Production', 'It promotes proliferation, differentiation and activity of neutrophil precursor cells.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(142, '03 — Supports Neutrophil Recovery', 'Increased circulating neutrophils can reduce the duration of clinically important neutropenia.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(142, 'splenic-and-lung-complications', 'Splenic and Lung Complications', 'Left upper abdominal or shoulder pain may signal splenic enlargement or rupture. New breathing difficulty requires urgent assessment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(142, 'blood-counts-and-timing', 'Blood Counts and Timing', 'Monitor neutrophils and platelets and use the prescribed chemotherapy interval. Excess white-cell counts may require adjustment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(142, 'allergy-and-other-serious-reactions', 'Allergy and Other Serious Reactions', 'Severe allergy, capillary leak, glomerulonephritis and aortitis can occur. Sickle-cell disease requires particular caution.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(143, 9, 'Curaway™', 'curaway', 'Curaway combines nano-formulated curcuminoid-related ingredients with selected plant constituents for nutritional support.', 'Curaway combines nano-formulated curcuminoid-related ingredients with selected plant constituents for nutritional support. These ingredients have been studied for antioxidant or cellular-signalling activity, but the finished blend’s clinical effects depend on identity, dose and formulation. It should complement appropriate nutritional care and must not be described as a proven anticancer treatment.', 'Nano-formulated Curcuminoids and Peptides 100 mg + Triterpenoid Saponins 5 mg + Bacosides A1, A2, A3 5 mg + Pectin 5 mg', '/assets/therapeutic-oncology.jpg', 'published', 143, 'Curaway™ | Onecore Pharma', 'Curaway combines nano-formulated curcuminoid-related ingredients with selected plant constituents for nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(143, 'Nano-formulated Curcuminoids and Peptides 100 mg + Triterpenoid Saponins 5 mg + Bacosides A1, A2, A3 5 mg + Pectin 5 mg', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(143, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nFollow the finished-product directions and obtain approval from the treating team, particularly during cancer therapy. Do not substitute this blend for prescribed medicines.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(143, 'Supplemental Plant-Derived Antioxidant Intake', 'May be considered when the clinician selects this blend to complement the diet.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(143, 'Adjunct Nutritional Care', 'May provide supplementary ingredients during an assessed nutrition plan. Evidence does not establish improvement in cancer outcomes or treatment tolerance.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(143, '01 — Supplies Plant-Derived Antioxidants', 'The listed curcuminoids or tocotrienols have antioxidant activity in experimental systems.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(143, '02 — Interacts with Cellular Pathways', 'These compounds can influence oxidative and inflammatory signalling, with clinical relevance dependent on formulation and dose.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(143, '03 — Provides Adjunct Nutritional Support', 'Use may complement assessed nutritional care. These mechanisms do not establish prevention or treatment of cancer.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(143, 'cancer-treatment-and-interactions', 'Cancer Treatment and Interactions', 'Ask the oncologist before use during chemotherapy, radiotherapy or immunotherapy. Antioxidant and herbal interactions may affect treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(143, 'bleeding-liver-and-digestive-effects', 'Bleeding, Liver and Digestive Effects', 'Review anticoagulants and planned surgery. Stop for jaundice, persistent nausea or significant abdominal pain and seek medical advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(143, 'evidence-and-special-populations', 'Evidence and Special Populations', 'Do not replace prescribed treatment. Pregnancy, breastfeeding, children and significant kidney or liver disease require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(144, 9, 'Tocofrac™', 'tocofrac', 'Tocofrac provides gamma- and delta-tocotrienol fractions, members of the vitamin E family, for supplemental antioxidant intake.', 'Tocofrac provides gamma- and delta-tocotrienol fractions, members of the vitamin E family, for supplemental antioxidant intake. Tocotrienols participate in membrane-related antioxidant processes, but clinical benefits depend on the amount and formulation. Use should follow assessment of dietary needs and other medicines, without claims to prevent or treat cancer.', 'Gamma- and delta-tocotrienol-rich fractions per tablet; total tocotrienols, isomer amounts and source not supplied', '/assets/therapeutic-oncology.jpg', 'published', 144, 'Tocofrac™ | Onecore Pharma', 'Tocofrac provides gamma- and delta-tocotrienol fractions, members of the vitamin E family, for supplemental antioxidant intake.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(144, 'Gamma- and delta-tocotrienol-rich fractions per tablet; total tocotrienols, isomer amounts and source not supplied', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(144, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this medicine in the dose and duration as advised by your doctor.\n\nAdministration Advice\nTake with or immediately after a meal. Review continued use with the treating clinician and avoid overlapping supplements.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(144, 'Supplemental Tocotrienol Intake', 'May supplement dietary intake when the clinician considers a tocotrienol product appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(144, 'Adjunct Antioxidant Nutritional Support', 'May complement a balanced diet. Specific cardiovascular, anti-ageing or anticancer benefits are not established for this finished product.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(144, '01 — Supplies Plant-Derived Antioxidants', 'The listed curcuminoids or tocotrienols have antioxidant activity in experimental systems.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(144, '02 — Interacts with Cellular Pathways', 'These compounds can influence oxidative and inflammatory signalling, with clinical relevance dependent on formulation and dose.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(144, '03 — Provides Adjunct Nutritional Support', 'Use may complement assessed nutritional care. These mechanisms do not establish prevention or treatment of cancer.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(144, 'cancer-treatment-and-interactions', 'Cancer Treatment and Interactions', 'Ask the oncologist before use during chemotherapy, radiotherapy or immunotherapy. Antioxidant and herbal interactions may affect treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(144, 'bleeding-liver-and-digestive-effects', 'Bleeding, Liver and Digestive Effects', 'Review anticoagulants and planned surgery. Stop for jaundice, persistent nausea or significant abdominal pain and seek medical advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(144, 'evidence-and-special-populations', 'Evidence and Special Populations', 'Do not replace prescribed treatment. Pregnancy, breastfeeding, children and significant kidney or liver disease require individual advice.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(145, 9, 'Temzoro™-100', 'temzoro-100', 'Temzoro-100 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens.', 'Temzoro-100 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens. It is converted into an active compound that damages tumour-cell DNA. Doses are calculated from body surface area and treatment phase, with regular monitoring of blood counts, liver function and infection risk.', 'Temozolomide 100 mg per capsule', '/assets/products/temzoro-100.jpg', 'published', 145, 'Temzoro™-100 | Onecore Pharma', 'Temzoro-100 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(145, 'Temozolomide 100 mg per capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(145, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with newly diagnosed glioblastoma: 75 mg/m² once daily for 42–49 days with radiotherapy. Start maintenance 4 weeks later at 150 mg/m² once daily on days 1–5 of each 28-day cycle; increase to 200 mg/m² from cycle 2 only if counts and tolerability meet protocol criteria. Calculate capsule combinations from body surface area; adjust or withhold for toxicity.\n\nAdministration Advice\nTake the entire calculated daily dose at one time with water, consistently on an empty stomach, preferably at bedtime to reduce nausea. Swallow capsules whole; do not open or crush. Use prescribed antiemetics and infection prophylaxis. Do not repeat a dose after vomiting.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(145, 'Newly Diagnosed Glioblastoma', 'Used with radiotherapy and then as maintenance treatment in an appropriate specialist protocol.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(145, 'Selected Anaplastic Astrocytoma', 'May be used in locally approved adjuvant or refractory disease settings after specialist assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(145, '01 — Forms an Active Alkylating Compound', 'Temozolomide converts spontaneously to MTIC at physiological pH.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(145, '02 — Methylates Tumour-Cell DNA', 'Reactive products add methyl groups to DNA bases, including guanine.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(145, '03 — Disrupts Replication', 'Unrepaired DNA lesions can trigger cell-cycle arrest and death in susceptible tumour cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(145, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Myelosuppression can be severe. Regular blood counts are required, and fever or bleeding needs urgent oncology review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(145, 'pneumocystis-prophylaxis', 'Pneumocystis Prophylaxis', 'Pneumocystis pneumonia prophylaxis is required during the concomitant radiotherapy phase and may need continuation with persistent lymphopenia.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(145, 'liver-injury-and-hypersensitivity', 'Liver Injury and Hypersensitivity', 'Monitor liver function. Avoid in relevant temozolomide or dacarbazine hypersensitivity and report jaundice or severe rash.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(145, 'pregnancy-and-safe-handling', 'Pregnancy and Safe Handling', 'May harm a fetus. Follow contraception, fertility and breastfeeding advice. Avoid contact with powder from damaged capsules.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(146, 9, 'Temzoro™-250', 'temzoro-250', 'Temzoro-250 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens.', 'Temzoro-250 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens. It is converted into an active compound that damages tumour-cell DNA. Doses are calculated from body surface area and treatment phase, with regular monitoring of blood counts, liver function and infection risk.', 'Temozolomide 250 mg per capsule', '/assets/products/temzoro-250.jpg', 'published', 146, 'Temzoro™-250 | Onecore Pharma', 'Temzoro-250 contains temozolomide, an oral alkylating anticancer medicine used in selected malignant glioma regimens.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(146, 'Temozolomide 250 mg per capsule', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(146, 'Administration and Dosage Guidance', 'Dosing and Schedule\nAdults with newly diagnosed glioblastoma: 75 mg/m² once daily for 42–49 days with radiotherapy. Start maintenance 4 weeks later at 150 mg/m² once daily on days 1–5 of each 28-day cycle; increase to 200 mg/m² from cycle 2 only if counts and tolerability meet protocol criteria. Calculate capsule combinations from body surface area; adjust or withhold for toxicity.\n\nAdministration Advice\nTake the entire calculated daily dose at one time with water, consistently on an empty stomach, preferably at bedtime to reduce nausea. Swallow capsules whole; do not open or crush. Use prescribed antiemetics and infection prophylaxis. Do not repeat a dose after vomiting.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(146, 'Newly Diagnosed Glioblastoma', 'Used with radiotherapy and then as maintenance treatment in an appropriate specialist protocol.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(146, 'Selected Anaplastic Astrocytoma', 'May be used in locally approved adjuvant or refractory disease settings after specialist assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(146, '01 — Forms an Active Alkylating Compound', 'Temozolomide converts spontaneously to MTIC at physiological pH.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(146, '02 — Methylates Tumour-Cell DNA', 'Reactive products add methyl groups to DNA bases, including guanine.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(146, '03 — Disrupts Replication', 'Unrepaired DNA lesions can trigger cell-cycle arrest and death in susceptible tumour cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(146, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Myelosuppression can be severe. Regular blood counts are required, and fever or bleeding needs urgent oncology review.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(146, 'pneumocystis-prophylaxis', 'Pneumocystis Prophylaxis', 'Pneumocystis pneumonia prophylaxis is required during the concomitant radiotherapy phase and may need continuation with persistent lymphopenia.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(146, 'liver-injury-and-hypersensitivity', 'Liver Injury and Hypersensitivity', 'Monitor liver function. Avoid in relevant temozolomide or dacarbazine hypersensitivity and report jaundice or severe rash.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(146, 'pregnancy-and-safe-handling', 'Pregnancy and Safe Handling', 'May harm a fetus. Follow contraception, fertility and breastfeeding advice. Avoid contact with powder from damaged capsules.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(147, 9, 'Pacli™-one-30', 'pacli-one-30', 'Pacli-one-30 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.', 'Pacli-one-30 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division. It is used in selected cancer regimens under oncology supervision. Conventional solvent-based and albumin-bound formulations have different doses, infusion procedures and premedication requirements, so the exact finished formulation must be confirmed before treatment.', 'Paclitaxel 30 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '/assets/products/pacli-one-30.jpg', 'published', 147, 'Pacli™-one-30 | Onecore Pharma', 'Pacli-one-30 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(147, 'Paclitaxel 30 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(147, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nFor intravenous infusion in an oncology unit only. The oncologist must calculate the dose in mg/m² using the confirmed formulation and cancer protocol. Follow its exact dilution, filtration, premedication and infusion instructions; vial strength alone does not determine the dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, 'Selected Breast Cancer Regimens', 'May be used in adjuvant or advanced breast cancer according to the selected formulation and approved treatment protocol.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, 'Selected Ovarian Cancer Regimens', 'Conventional paclitaxel may be used with other medicines or after prior treatment, according to specialist assessment.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, 'Selected Lung Cancer Regimens', 'May be combined with platinum-based therapy where the formulation-specific indication supports use.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, '01 — Binds Microtubules', 'Paclitaxel binds beta-tubulin and promotes microtubule assembly.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, '02 — Prevents Microtubule Disassembly', 'It stabilises microtubules and disrupts their normal dynamic function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(147, '03 — Interrupts Cell Division', 'Abnormal spindle function causes cell-cycle arrest and can lead to death of susceptible cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(147, 'formulation-and-infusion-reactions', 'Formulation and Infusion Reactions', 'Severe hypersensitivity can occur. Conventional solvent-based products generally need corticosteroid and antihistamine premedication. Follow the exact formulation label.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(147, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Check neutrophil and platelet counts before treatment. Fever or unexpected bleeding needs prompt oncology assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(147, 'neuropathy-liver-and-cardiac-effects', 'Neuropathy, Liver and Cardiac Effects', 'Report progressive numbness, marked weakness or palpitations. Liver impairment and neurological toxicity may require dose changes.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(147, 'pregnancy-and-administration-safety', 'Pregnancy and Administration Safety', 'Follow contraception and breastfeeding restrictions. Monitor the infusion site for extravasation and use cytotoxic handling precautions.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(148, 9, 'Pacli™-one-100', 'pacli-one-100', 'Pacli-one-100 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.', 'Pacli-one-100 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division. It is used in selected cancer regimens under oncology supervision. Conventional solvent-based and albumin-bound formulations have different doses, infusion procedures and premedication requirements, so the exact finished formulation must be confirmed before treatment.', 'Paclitaxel 100 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '/assets/products/pacli-one-100.jpg', 'published', 148, 'Pacli™-one-100 | Onecore Pharma', 'Pacli-one-100 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(148, 'Paclitaxel 100 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(148, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nFor intravenous infusion in an oncology unit only. The oncologist must calculate the dose in mg/m² using the confirmed formulation and cancer protocol. Follow its exact dilution, filtration, premedication and infusion instructions; vial strength alone does not determine the dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, 'Selected Breast Cancer Regimens', 'May be used in adjuvant or advanced breast cancer according to the selected formulation and approved treatment protocol.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, 'Selected Ovarian Cancer Regimens', 'Conventional paclitaxel may be used with other medicines or after prior treatment, according to specialist assessment.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, 'Selected Lung Cancer Regimens', 'May be combined with platinum-based therapy where the formulation-specific indication supports use.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, '01 — Binds Microtubules', 'Paclitaxel binds beta-tubulin and promotes microtubule assembly.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, '02 — Prevents Microtubule Disassembly', 'It stabilises microtubules and disrupts their normal dynamic function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(148, '03 — Interrupts Cell Division', 'Abnormal spindle function causes cell-cycle arrest and can lead to death of susceptible cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(148, 'formulation-and-infusion-reactions', 'Formulation and Infusion Reactions', 'Severe hypersensitivity can occur. Conventional solvent-based products generally need corticosteroid and antihistamine premedication. Follow the exact formulation label.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(148, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Check neutrophil and platelet counts before treatment. Fever or unexpected bleeding needs prompt oncology assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(148, 'neuropathy-liver-and-cardiac-effects', 'Neuropathy, Liver and Cardiac Effects', 'Report progressive numbness, marked weakness or palpitations. Liver impairment and neurological toxicity may require dose changes.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(148, 'pregnancy-and-administration-safety', 'Pregnancy and Administration Safety', 'Follow contraception and breastfeeding restrictions. Monitor the infusion site for extravasation and use cytotoxic handling precautions.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(149, 9, 'Pacli™-one-260', 'pacli-one-260', 'Pacli-one-260 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.', 'Pacli-one-260 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division. It is used in selected cancer regimens under oncology supervision. Conventional solvent-based and albumin-bound formulations have different doses, infusion procedures and premedication requirements, so the exact finished formulation must be confirmed before treatment.', 'Paclitaxel 260 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '/assets/products/pacli-one-260.jpg', 'published', 149, 'Pacli™-one-260 | Onecore Pharma', 'Pacli-one-260 contains paclitaxel, an intravenous chemotherapy medicine that disrupts microtubule function and cell division.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(149, 'Paclitaxel 260 mg per injection vial; solvent system, concentration and albumin-bound status not specified', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(149, 'Administration and Dosage Guidance', 'Dosing and Schedule\nYour doctor or nurse will give you this medicine. Kindly do not self administer.\n\nAdministration Advice\nFor intravenous infusion in an oncology unit only. The oncologist must calculate the dose in mg/m² using the confirmed formulation and cancer protocol. Follow its exact dilution, filtration, premedication and infusion instructions; vial strength alone does not determine the dose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, 'Selected Breast Cancer Regimens', 'May be used in adjuvant or advanced breast cancer according to the selected formulation and approved treatment protocol.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, 'Selected Ovarian Cancer Regimens', 'Conventional paclitaxel may be used with other medicines or after prior treatment, according to specialist assessment.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, 'Selected Lung Cancer Regimens', 'May be combined with platinum-based therapy where the formulation-specific indication supports use.', 3);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, '01 — Binds Microtubules', 'Paclitaxel binds beta-tubulin and promotes microtubule assembly.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, '02 — Prevents Microtubule Disassembly', 'It stabilises microtubules and disrupts their normal dynamic function.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(149, '03 — Interrupts Cell Division', 'Abnormal spindle function causes cell-cycle arrest and can lead to death of susceptible cells.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(149, 'formulation-and-infusion-reactions', 'Formulation and Infusion Reactions', 'Severe hypersensitivity can occur. Conventional solvent-based products generally need corticosteroid and antihistamine premedication. Follow the exact formulation label.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(149, 'blood-counts-and-infection', 'Blood Counts and Infection', 'Check neutrophil and platelet counts before treatment. Fever or unexpected bleeding needs prompt oncology assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(149, 'neuropathy-liver-and-cardiac-effects', 'Neuropathy, Liver and Cardiac Effects', 'Report progressive numbness, marked weakness or palpitations. Liver impairment and neurological toxicity may require dose changes.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(149, 'pregnancy-and-administration-safety', 'Pregnancy and Administration Safety', 'Follow contraception and breastfeeding restrictions. Monitor the infusion site for extravasation and use cytotoxic handling precautions.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(150, 2, 'Glypocal™-LP Syrup', 'glypocal-lp-syrup', 'Glypocal-LP Syrup is listed as a calcium, vitamin K2 and vitamin D2 supplement for bone support.', 'Glypocal-LP Syrup is listed as a calcium, vitamin K2 and vitamin D2 supplement for bone support. Calcium and vitamin D contribute to normal bone mineralisation, while vitamin K supports vitamin K-dependent proteins. The serving size, elemental calcium amount and vitamin K2 unit require confirmation before paediatric dosing can be specified.', 'Liposomal calcium 350 mg  + vitamin K2 source lists 125 mg + vitamin D2 10 mcg (400 IU)', '/assets/products/glypocal-lp-syrup.jpg', 'published', 150, 'Glypocal™-LP Syrup | Onecore Pharma', 'Glypocal-LP Syrup is listed as a calcium, vitamin K2 and vitamin D2 supplement for bone support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(150, 'Liposomal calcium 350 mg  + vitamin K2 source lists 125 mg + vitamin D2 10 mcg (400 IU)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(150, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this syrup in the dose and duration as advised by your doctor.\n\nAdministration Advice\nMeasure the verified dose with a calibrated oral syringe and follow meal and storage instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(150, 'Inadequate Bone-Nutrient Intake', 'May supplement an assessed dietary gap once the finished composition and age-appropriate dose have been verified.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(150, 'Nutritional Support During Growth', 'May complement adequate food intake and normal childhood bone development when clinically indicated. It does not replace treatment of rickets or other bone disease.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(150, '01 — Provides Calcium', 'The verified calcium component would supply mineral needed for skeletal development.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(150, '02 — Supports Vitamin D-Dependent Absorption', 'Vitamin D2 is converted to active metabolites involved in calcium absorption.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(150, '03 — Supports Vitamin K-Dependent Proteins', 'Vitamin K participates in carboxylation of relevant proteins, with dose-dependent use requiring verified composition.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(150, 'vitamin-k2-unit-discrepancy', 'Vitamin K2 Unit Discrepancy', 'The supplied 125 mg value is unusually high for a paediatric nutritional product. Do not use or publish a dose until it is verified.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(150, 'high-calcium-and-kidney-disease', 'High Calcium and Kidney Disease', 'Children with high blood calcium, kidney disease or stone disorders require individual assessment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(150, 'other-supplements-and-medicines', 'Other Supplements and Medicines', 'Review total calcium and vitamin D intake and medicines, especially vitamin K antagonists. Keep the bottle out of children’s reach.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(151, 8, 'Zincolys™ Syrup', 'zincolys-syrup', 'Zincolys Syrup is a nutritional supplement containing zinc bisglycinate, lysine and vitamin B6.', 'Zincolys Syrup is a nutritional supplement containing zinc bisglycinate, lysine and vitamin B6. It helps address nutritional deficiencies that may contribute to poor appetite, inadequate dietary intake and slow growth in children. It supports protein synthesis, nutrient metabolism and normal growth when used alongside a balanced diet.', 'Zinc bisglycinate 50 mg + lysine 200 mg + vitamin B6 2 mg per 5 mL syrup (volume basis assumed; elemental zinc equivalent not supplied)', '/assets/products/zincolys-syrup.jpg', 'published', 151, 'Zincolys™ Syrup | Onecore Pharma', 'Zincolys Syrup is a nutritional supplement containing zinc bisglycinate, lysine and vitamin B6.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(151, 'Zinc bisglycinate 50 mg + lysine 200 mg + vitamin B6 2 mg per 5 mL syrup (volume basis assumed; elemental zinc equivalent not supplied)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(151, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 1–4 years: give 2.5 mL once daily. Children aged 5 years or older: give 5 mL once daily. Review after 2–4 weeks. These directions use the per-5-mL composition stated in the sheet; the manufacturer must confirm that concentration and elemental zinc equivalent before publication.\n\nAdministration Advice\nMeasure with a calibrated oral syringe and give with or just after a meal to reduce stomach discomfort. Follow label storage and handling directions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, 'Zinc Deficiency with Poor Appetite or Altered Taste', 'May help improve deficiency-related appetite or taste problems by replenishing zinc. It is not a general appetite stimulant for children with adequate zinc intake.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, 'Inadequate Nutritional Intake from Restricted Diets', 'Supplements the listed nutrients when a limited diet does not meet assessed needs, alongside adequate calories and protein.', 2);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, 'Deficiency-Related Poor Growth', 'May support normal growth when relevant nutrient gaps contribute to poor growth. The underlying cause and growth pattern need assessment.', 3);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, 'Nutritional Recovery after Illness', 'May supplement specific nutrient needs during recovery when intake is temporarily inadequate.', 4);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, '01 — Replenishes Essential Nutrients', 'Provides zinc, lysine and vitamin B6 to support assessed nutritional needs.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, '02 — Supports Protein and Cell Metabolism', 'Lysine supplies an essential amino acid, zinc supports normal cell division, and vitamin B6 participates in amino acid metabolism.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(151, '03 — Supports Deficiency-Related Recovery', 'Restoring zinc status may improve taste and appetite when zinc deficiency is the underlying cause.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(151, 'allergy-and-stomach-discomfort', 'Allergy and Stomach Discomfort', 'Avoid with ingredient allergy. Zinc can cause nausea, vomiting or stomach pain, particularly on an empty stomach.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(151, 'excess-zinc-and-vitamin-b6', 'Excess Zinc and Vitamin B6', 'Review all supplements. Prolonged excessive zinc can reduce copper status, and excessive vitamin B6 can cause neuropathy.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(151, 'antibiotic-and-penicillamine-interactions', 'Antibiotic and Penicillamine Interactions', 'Give relevant tetracycline or quinolone antibiotics at least 2 hours before or 4–6 hours after zinc unless their label differs. Separate penicillamine by at least 1 hour.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(151, 'kidney-disease-and-copper-deficiency', 'Kidney Disease and Copper Deficiency', 'Seek individual advice in kidney disease or known copper deficiency. Verify the elemental zinc dose rather than treating chelate weight as elemental zinc.', 4);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(152, 2, 'Oneriv™ D3 Drops', 'oneriv-d3-drops', 'Oneriv D3 Drops provides vitamin D3 in an oral drop formulation for age-appropriate supplementation or prescribed deficiency care.', 'Oneriv D3 Drops provides vitamin D3 in an oral drop formulation for age-appropriate supplementation or prescribed deficiency care. Vitamin D supports calcium and phosphate absorption and normal bone development. The daily volume must be calculated from the verified concentration, because different drop products can contain very different amounts per drop.', 'Cholecalciferol (vitamin D3) 800 IU per mL oral drops (concentration basis assumed)', '/assets/products/oneriv-d3-drops.jpg', 'published', 152, 'Oneriv™ D3 Drops | Onecore Pharma', 'Oneriv D3 Drops provides vitamin D3 in an oral drop formulation for age-appropriate supplementation or prescribed deficiency care.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(152, 'Cholecalciferol (vitamin D3) 800 IU per mL oral drops (concentration basis assumed)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(152, 'Administration and Dosage Guidance', 'Dosing and Schedule\nInfant nutritional supplementation: give 0.5 mL once daily to provide 400 IU vitamin D3 at the stated concentration of 800 IU/mL. Children older than 1 year requiring 600 IU/day: give 0.75 mL once daily. Deficiency treatment requires a separate regimen. Confirm the assumed 800 IU/mL label before publication.\n\nAdministration Advice\nMeasure with the supplied calibrated dropper or oral syringe. Give directly or in a small amount of cool feed that will be fully consumed. Do not estimate dose by drop count unless calibrated on the pack.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(152, 'Routine Infant Vitamin D Supplementation', 'May provide the recommended supplement when the infant’s total vitamin D intake is insufficient, according to paediatric advice.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(152, 'Assessed Vitamin D Deficiency', 'May be used in a prescribed replacement plan, with the dose and duration based on age, severity and clinical assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(152, '01 — Provides Cholecalciferol', 'Vitamin D3 is absorbed and converted to 25-hydroxyvitamin D in the liver.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(152, '02 — Forms Active Vitamin D', 'Further conversion produces calcitriol, which regulates calcium and phosphate handling.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(152, '03 — Supports Normal Mineralisation', 'Appropriate vitamin D supply supports bone development alongside adequate calcium intake.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(152, 'concentration-and-overdose', 'Concentration and Overdose', 'Confirm IU per mL rather than IU per drop. Excess vitamin D can cause high calcium, vomiting, dehydration and kidney injury.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(152, 'total-intake-and-kidney-conditions', 'Total Intake and Kidney Conditions', 'Include vitamin D from formula and other supplements. Kidney disease, stones or high calcium requires individual advice.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(152, 'deficiency-treatment-and-follow-up', 'Deficiency Treatment and Follow-Up', 'Do not use a maintenance dose as treatment for rickets without assessment. Follow the prescribed course and monitoring plan.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(153, 2, 'Glypocal™ Junior', 'glypocal-junior', 'Glypocal Junior combines tricalcium phosphate with vitamin D3 in a chewable gummy for nutritional support.', 'Glypocal Junior combines tricalcium phosphate with vitamin D3 in a chewable gummy for nutritional support. Calcium contributes to normal bone and tooth structure, while vitamin D supports calcium absorption. The product complements a balanced diet when intake is inadequate, with supervised use and review of the amount supplied per gummy.', 'Tricalcium phosphate 260 mg + vitamin D3 15 mcg (600 IU)', '/assets/products/glypocal-junior.jpg', 'published', 153, 'Glypocal™ Junior | Onecore Pharma', 'Glypocal Junior combines tricalcium phosphate with vitamin D3 in a chewable gummy for nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(153, 'Tricalcium phosphate 260 mg + vitamin D3 15 mcg (600 IU)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(153, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 4 years or older who can chew safely: give 1 gummy once daily. This supplies 600 IU vitamin D3 on the stated per-gummy basis. Review total calcium and vitamin D from food and other supplements.\n\nAdministration Advice\nGive after a meal with adult supervision. The child must chew thoroughly and must not swallow the gummy whole. Keep the bottle out of reach between doses.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(153, 'Inadequate Calcium and Vitamin D Intake', 'May supplement the listed nutrients when the diet does not meet assessed requirements.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(153, 'Nutritional Support for Bone Development', 'Supports normal bone and tooth mineralisation alongside adequate protein, food intake and activity.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(153, '01 — Provides a Calcium Salt', 'Tricalcium phosphate supplies calcium, with elemental content lower than the stated salt weight.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(153, '02 — Supports Calcium Absorption', 'Vitamin D3 supports intestinal uptake of calcium after metabolic activation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(153, '03 — Complements Bone Nutrition', 'Adequate mineral and vitamin intake supports normal skeletal growth.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(153, 'choking-and-accidental-overconsumption', 'Choking and Accidental Overconsumption', 'Do not give to children who cannot chew safely. Keep out of reach to prevent consumption of multiple gummies.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(153, 'elemental-calcium-and-vitamin-d', 'Elemental Calcium and Vitamin D', 'Verify the per-gummy amount. Tricalcium phosphate 260 mg is not 260 mg elemental calcium. Include other supplements in total intake.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(153, 'kidney-disease-and-allergy', 'Kidney Disease and Allergy', 'Seek advice with high calcium, kidney disease or stone history. Check ingredients and gummy base for allergy.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(154, 2, 'Dozokid™', 'dozokid', 'Dozokid contains melatonin in an oral syrup for sleep-timing difficulties when a paediatrician considers treatment appropriate.', 'Dozokid contains melatonin in an oral syrup for sleep-timing difficulties when a paediatrician considers treatment appropriate. Melatonin signals biological night and can help with sleep onset in some children. It should be used alongside consistent sleep routines, after assessment of underlying causes, with the lowest suitable dose and periodic review.', 'Melatonin 3 mg/5 mL Syrup', '/assets/products/dozokid.jpg', 'published', 154, 'Dozokid™ | Onecore Pharma', 'Dozokid contains melatonin in an oral syrup for sleep-timing difficulties when a paediatrician considers treatment appropriate.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(154, 'Melatonin 3 mg/5 mL Syrup', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(154, 'Administration and Dosage Guidance', 'Dosing and Schedule\nFor a child selected for melatonin by the paediatrician: start with 1 mL (0.6 mg) once nightly, 30–60 minutes before bedtime. Review response, age suitability and the sleep routine before any increase. Do not repeat a dose during the night.\n\nAdministration Advice\nMeasure with an oral syringe marked in mL. Give at a consistent time alongside a regular bedtime routine. Avoid additional sedating products unless specifically prescribed.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(154, 'Selected Sleep-Onset Difficulty', 'May be considered when persistent difficulty falling asleep remains after suitable behavioural and sleep-routine measures.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(154, 'Selected Circadian Sleep-Timing Problems', 'May help shift sleep timing in an appropriately diagnosed circadian problem, with the administration time set by the clinician.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(154, '01 — Provides an Evening Melatonin Signal', 'Melatonin activates MT1 and MT2 receptors involved in circadian timing.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(154, '02 — Influences Sleep Readiness', 'Appropriately timed dosing can help align the sleep-wake cycle and support sleep onset.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(154, '03 — Works with Behavioural Measures', 'Benefit depends on timing and the underlying sleep problem. It does not replace a consistent sleep routine.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(154, 'medical-assessment-and-duration', 'Medical Assessment and Duration', 'Use only after paediatric review. Snoring, breathing pauses, restless legs, anxiety or prolonged insomnia may need different treatment.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(154, 'sedation-and-interactions', 'Sedation and Interactions', 'Daytime sleepiness, headache or vivid dreams may occur. Review sedatives, seizure medicines and other interacting treatments.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(154, 'accidental-ingestion-and-long-term-uncertainty', 'Accidental Ingestion and Long-Term Uncertainty', 'Store securely away from children. Long-term paediatric safety and effects on development remain incompletely established.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(155, 2, 'Appyone™', 'appyone', 'Appyone combines selected vitamins, zinc, amino-acid-related ingredients, botanicals and colostrum in a gummy supplement.', 'Appyone combines selected vitamins, zinc, amino-acid-related ingredients, botanicals and colostrum in a gummy supplement. It provides nutritional ingredients when a child’s dietary intake is inadequate. The product should support a balanced diet and growth assessment, without promising appetite stimulation, weight gain or improved immunity in children without a nutritional need.', 'Vitamin C 30 mg + vitamin B12 2.5 mcg + vitamin B6 0.7 mg + niacin 3 mg + thiamine 0.5 mg + zinc 2 mg + chicory extract 5 mg + fenugreek extract 25 mg + watercress extract 20 mg + spirulina 10 mg + honey 5 mg + lysine HCl 2 mg + carnitine tartrate 10 mg + histidine 5 mg + colostrum 20 mg', '/assets/products/appyone.jpg', 'published', 155, 'Appyone™ | Onecore Pharma', 'Appyone combines selected vitamins, zinc, amino-acid-related ingredients, botanicals and colostrum in a gummy supplement.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(155, 'Vitamin C 30 mg + vitamin B12 2.5 mcg + vitamin B6 0.7 mg + niacin 3 mg + thiamine 0.5 mg + zinc 2 mg + chicory extract 5 mg + fenugreek extract 25 mg + watercress extract 20 mg + spirulina 10 mg + honey 5 mg + lysine HCl 2 mg + carnitine tartrate 10 mg + histidine 5 mg + colostrum 20 mg', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(155, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 4 years or older who can chew safely: give 1 gummy once daily after a meal, using the stated one-gummy serving assumption. Confirm the age approval and per-gummy nutrient declaration before publication.\n\nAdministration Advice\nSupervise the child and ensure the gummy is chewed thoroughly. Do not give as a sweet, a meal replacement or to a child unable to chew safely.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(155, 'Restricted Dietary Variety', 'May supplement selected nutrient gaps in children with a limited diet after assessment of overall intake.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(155, 'Nutritional Support During Recovery', 'May complement adequate food and protein intake during recovery when the clinician identifies a need for the listed ingredients.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(155, '01 — Supplies Selected Vitamins and Zinc', 'The micronutrients support normal metabolic processes when dietary supply is inadequate.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(155, '02 — Adds Amino-Acid and Food-Derived Components', 'Lysine, carnitine-related ingredients and the other listed components provide additional nutritional substrates.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(155, '03 — Complements the Diet', 'Supplementation may address specific gaps when combined with adequate calories, protein and varied food.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(155, 'milk-and-botanical-allergy', 'Milk and Botanical Allergy', 'Colostrum is milk-derived. Review milk, fenugreek and other ingredient allergies before use.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(155, 'choking-and-age-restrictions', 'Choking and Age Restrictions', 'Use only when the child can chew safely. Honey-containing products should not be given below 12 months, and the gummy’s own age limit may be higher.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(155, 'total-intake-and-persistent-poor-growth', 'Total Intake and Persistent Poor Growth', 'Avoid duplicate vitamins and zinc. Persistent poor appetite or growth requires assessment rather than repeated supplement use.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(156, 2, 'Doxicent™ DS', 'doxicent-ds', 'Doxicent DS contains cefpodoxime proxetil in a dry syrup that is reconstituted before use.', 'Doxicent DS contains cefpodoxime proxetil in a dry syrup that is reconstituted before use. It is prescribed for selected susceptible bacterial infections in children. The antibiotic interferes with bacterial cell wall formation, while the dose is calculated from body weight, infection type, kidney function and the concentration after mixing.', 'Cefpodoxime proxetil equivalent to cefpodoxime 50 mg per 5 mL after reconstitution', '/assets/products/doxicent-ds.jpg', 'published', 156, 'Doxicent™ DS | Onecore Pharma', 'Doxicent DS contains cefpodoxime proxetil in a dry syrup that is reconstituted before use.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(156, 'Cefpodoxime proxetil equivalent to cefpodoxime 50 mg per 5 mL after reconstitution', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(156, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 2 months to 12 years: give 0.5 mL/kg per dose every 12 hours (5 mg/kg/dose). Pharyngitis/tonsillitis: maximum 10 mL per dose for 5–10 days. Otitis media: maximum 20 mL per dose for 5 days. Acute maxillary sinusitis: maximum 20 mL per dose for 10 days. Significant kidney impairment requires an interval adjustment.\n\nAdministration Advice\nReconstitute with the exact water volume on the pack. Shake thoroughly before every dose and measure with an oral syringe. Give with or without food, about 12 hours apart. Follow the pack’s refrigeration and discard instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(156, 'Selected Bacterial Throat or Sinus Infections', 'May be prescribed when the likely organism and local antibiotic guidance support cefpodoxime use.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(156, 'Acute Bacterial Otitis Media', 'May be selected for a susceptible middle-ear infection after clinical assessment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(156, '01 — Forms Active Cefpodoxime', 'Cefpodoxime proxetil is converted to cefpodoxime after absorption.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(156, '02 — Inhibits Cell Wall Cross-Linking', 'Cefpodoxime binds bacterial penicillin-binding proteins and disrupts peptidoglycan synthesis.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(156, '03 — Kills Susceptible Bacteria', 'The weakened cell wall leads to bacterial death when exposure is appropriate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(156, 'beta-lactam-allergy', 'Beta-Lactam Allergy', 'Inform the doctor about penicillin or cephalosporin allergy. Stop and seek emergency care for breathing difficulty, facial swelling or a severe skin reaction.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(156, 'diarrhoea-and-antibiotic-resistance', 'Diarrhoea and Antibiotic Resistance', 'Persistent or bloody diarrhoea needs medical review. Use only for prescribed bacterial infections and complete the prescribed course.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(156, 'kidney-function-and-interactions', 'Kidney Function and Interactions', 'Kidney impairment may require dose adjustment. Review anticoagulants, probenecid and other medicines with the prescriber.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(157, 2, 'Wayomega™-LC', 'wayomega-lc', 'WayOmega-LC combines L-carnosine with DHA, EPA and vitamin D2 for supplemental nutritional support.', 'WayOmega-LC combines L-carnosine with DHA, EPA and vitamin D2 for supplemental nutritional support. Omega-3 fatty acids contribute to cell membrane structure, while vitamin D supports mineral metabolism. The suspension may complement an assessed diet, but improved intelligence, speech or treatment of neurodevelopmental conditions is not established for this formulation.', 'L-carnosine 200 mg + DHA 150 mg + EPA 300 mg + vitamin D2 400 IU oral suspension', '/assets/products/wayomega-lc.jpg', 'published', 157, 'Wayomega™-LC | Onecore Pharma', 'WayOmega-LC combines L-carnosine with DHA, EPA and vitamin D2 for supplemental nutritional support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(157, 'L-carnosine 200 mg + DHA 150 mg + EPA 300 mg + vitamin D2 400 IU oral suspension', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(157, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this syrup in the dose and duration as advised by your doctor.\n\nAdministration Advice\nShake the suspension well and measure the verified dose with a calibrated oral syringe. Give with food if advised and follow storage instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(157, 'Inadequate Omega-3 Intake', 'May supplement dietary DHA and EPA when intake is insufficient and the formulation is appropriate for age.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(157, 'Selected Vitamin D Nutritional Support', 'Provides the listed vitamin D amount when a clinician considers it part of the child’s total nutritional plan.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(157, '01 — Provides Omega-3 Fatty Acids', 'DHA and EPA are incorporated into cellular phospholipids.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(157, '02 — Supports Nutrient-Dependent Processes', 'Vitamin D2 contributes to calcium and phosphate regulation after metabolic activation.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(157, '03 — Adds Carnosine-Related Substrates', 'L-carnosine is included for proposed cellular support, but clinical neurodevelopmental benefits are not established for this blend.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(157, 'serving-size-and-duplicate-vitamin-d', 'Serving Size and Duplicate Vitamin D', 'Confirm the volume basis before dosing and include vitamin D from all sources. Excess intake can cause high calcium.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(157, 'allergy-and-bleeding-medicines', 'Allergy and Bleeding Medicines', 'Check fish or other omega-3 sources for allergy and review anticoagulants or bleeding disorders.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(157, 'developmental-concerns', 'Developmental Concerns', 'Do not use instead of hearing, speech or developmental assessment. Persistent symptoms require appropriate specialist care.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(158, 2, 'Vitatots™ (400g)', 'vitatots-400g', 'Vitatots (400g) is a children’s nutrition powder listed in vanilla and chocolate flavours.', 'Vitatots (400g) is a children’s nutrition powder listed in vanilla and chocolate flavours. It is intended to supplement dietary intake when a child has an assessed nutritional gap. The protein, energy, carbohydrate and micronutrient content must be taken from the finished label to determine a suitable serving and age range.', 'Kids Protein Powder (Vanilla & Chocolate Flavour)', '/assets/products/vitatots-400g.jpg', 'published', 158, 'Vitatots™ (400g) | Onecore Pharma', 'Vitatots (400g) is a children’s nutrition powder listed in vanilla and chocolate flavours.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(158, 'Kids Protein Powder (Vanilla & Chocolate Flavour)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(158, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this powder in the dose and duration as advised by your doctor.\n\nAdministration Advice\nPrepare with the exact scoop weight and liquid volume on the pack. Use clean utensils, consume promptly and follow preparation and storage instructions. Do not use as the sole food unless specifically designed and prescribed for that purpose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(158, 'Inadequate Energy or Protein Intake', 'May complement meals when a dietitian or paediatrician identifies insufficient intake.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(158, 'Nutritional Support for Children at Risk of Undernutrition', 'May be included in an individual growth-support plan alongside feeding advice and treatment of the underlying cause.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(158, '01 — Provides Labelled Macronutrients', 'The finished formula supplies protein and other nutrients according to its verified composition.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(158, '02 — Supports Dietary Requirements', 'Adequate protein supports tissue growth and maintenance, while energy supports normal physiological needs.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(158, '03 — Complements a Growth-Care Plan', 'An appropriate supplement may help close dietary gaps alongside meals and clinical monitoring.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(158, 'allergens-and-formula-identity', 'Allergens and Formula Identity', 'Confirm milk, soy, gluten and other allergens from the actual label. Do not assume a protein source or a lactose-free formulation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(158, 'growth-assessment-and-medical-conditions', 'Growth Assessment and Medical Conditions', 'Poor growth needs assessment. Kidney disease, metabolic disorders and food allergy require a specialised nutrition plan.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(158, 'preparation-and-overfeeding', 'Preparation and Overfeeding', 'Use the correct dilution and serving. Excess supplement intake can displace food or provide unnecessary calories.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(159, 2, 'Vitatots™ (200g)', 'vitatots-200g', 'Vitatots (200g) is a children’s nutrition powder listed in vanilla and chocolate flavours.', 'Vitatots (200g) is a children’s nutrition powder listed in vanilla and chocolate flavours. It is intended to supplement dietary intake when a child has an assessed nutritional gap. The protein, energy, carbohydrate and micronutrient content must be taken from the finished label to determine a suitable serving and age range.', 'Kids Protein Powder (Vanilla & Chocolate Flavour)', '/assets/products/vitatots-200g.jpg', 'published', 159, 'Vitatots™ (200g) | Onecore Pharma', 'Vitatots (200g) is a children’s nutrition powder listed in vanilla and chocolate flavours.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(159, 'Kids Protein Powder (Vanilla & Chocolate Flavour)', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(159, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this powder in the dose and duration as advised by your doctor.\n\nAdministration Advice\nPrepare with the exact scoop weight and liquid volume on the pack. Use clean utensils, consume promptly and follow preparation and storage instructions. Do not use as the sole food unless specifically designed and prescribed for that purpose.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(159, 'Inadequate Energy or Protein Intake', 'May complement meals when a dietitian or paediatrician identifies insufficient intake.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(159, 'Nutritional Support for Children at Risk of Undernutrition', 'May be included in an individual growth-support plan alongside feeding advice and treatment of the underlying cause.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(159, '01 — Provides Labelled Macronutrients', 'The finished formula supplies protein and other nutrients according to its verified composition.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(159, '02 — Supports Dietary Requirements', 'Adequate protein supports tissue growth and maintenance, while energy supports normal physiological needs.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(159, '03 — Complements a Growth-Care Plan', 'An appropriate supplement may help close dietary gaps alongside meals and clinical monitoring.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(159, 'allergens-and-formula-identity', 'Allergens and Formula Identity', 'Confirm milk, soy, gluten and other allergens from the actual label. Do not assume a protein source or a lactose-free formulation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(159, 'growth-assessment-and-medical-conditions', 'Growth Assessment and Medical Conditions', 'Poor growth needs assessment. Kidney disease, metabolic disorders and food allergy require a specialised nutrition plan.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(159, 'preparation-and-overfeeding', 'Preparation and Overfeeding', 'Use the correct dilution and serving. Excess supplement intake can displace food or provide unnecessary calories.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(160, 2, 'Appycore™', 'appycore', 'Appycore combines cyproheptadine with tricholine citrate in a prescription syrup for selected patients with poor appetite and inadequate intake.', 'Appycore combines cyproheptadine with tricholine citrate in a prescription syrup for selected patients with poor appetite and inadequate intake. Cyproheptadine has antihistamine and antiserotonin actions that can increase appetite. Use requires assessment of the cause of poor intake, age-related safety and sedation risk, alongside appropriate nutritional care.', 'Cyproheptadine hydrochloride 2 mg + tricholine citrate 275 mg syrup', '/assets/therapeutic-paediatrics.jpg', 'published', 160, 'Appycore™ | Onecore Pharma', 'Appycore combines cyproheptadine with tricholine citrate in a prescription syrup for selected patients with poor appetite and inadequate intake.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(160, 'Cyproheptadine hydrochloride 2 mg + tricholine citrate 275 mg syrup', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(160, 'Administration and Dosage Guidance', 'Dosing and Schedule\nChildren aged 2 years or older: calculate a total DAILY cyproheptadine dose of 0.25 mg/kg, equivalent to 0.625 mL/kg/day of this syrup, and divide into 2 or 3 doses. Maximum daily volumes: ages 2–6 years, 30 mL; ages 7–14 years, 40 mL. The weight-based dose and age maximum both apply. Do not use under 2 years; confirm the assumed per-5-mL strength before publication.\n\nAdministration Advice\nMeasure each divided dose with an oral syringe and give at the prescribed times. Do not confuse the total daily volume with the volume per dose. Avoid sedating cough medicines and monitor alertness and food intake.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(160, 'Poor Appetite with Clinically Assessed Underweight', 'May be considered when poor appetite contributes to inadequate intake and the clinician judges medication appropriate.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(160, 'Selected Recovery-Related Inadequate Intake', 'May be prescribed briefly during an assessed recovery plan when expected benefit outweighs sedation and other risks.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(160, '01 — Blocks Serotonin Receptors', 'Cyproheptadine antagonises serotonin receptors involved in appetite regulation.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(160, '02 — Blocks Histamine H1 Receptors', 'Its antihistamine and central actions can produce sedation as well as changes in appetite.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(160, '03 — Adds a Choline-Related Ingredient', 'Tricholine citrate supplies a choline-related component; its independent contribution to appetite benefit is less well established.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(160, 'age-and-sedation', 'Age and Sedation', 'Do not use below 2 years without an explicit specialist rationale and verified local authorisation. Sedation, paradoxical excitation and impaired alertness can occur.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(160, 'glaucoma-retention-and-interactions', 'Glaucoma, Retention and Interactions', 'Avoid contraindicated MAOI combinations and review glaucoma, urinary retention, obstruction and other anticholinergic medicines.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(160, 'underlying-cause-and-liver-symptoms', 'Underlying Cause and Liver Symptoms', 'Do not routinely medicate normal selective eating. Persistent poor intake, weight loss or jaundice requires assessment.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(161, 2, 'Zincolys™ Plus', 'zincolys-plus', 'Zincolys Plus combines selected vitamins, DHA, lysine and trace minerals in a syrup for nutritional supplementation.', 'Zincolys Plus combines selected vitamins, DHA, lysine and trace minerals in a syrup for nutritional supplementation. The ingredients support normal metabolic, antioxidant and growth-related processes when intake is inadequate. The finished concentrations and age range must guide dosing, particularly because excessive vitamin A, zinc or selenium can cause harm.', 'Vitamin A + riboflavin (B2) + niacin (B3) + pantothenic acid (B5) + vitamin E + DHA + lysine + copper + selenium + zinc sulphate syrup', '/assets/products/zincolys-plus.jpg', 'published', 161, 'Zincolys™ Plus | Onecore Pharma', 'Zincolys Plus combines selected vitamins, DHA, lysine and trace minerals in a syrup for nutritional supplementation.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(161, 'Vitamin A + riboflavin (B2) + niacin (B3) + pantothenic acid (B5) + vitamin E + DHA + lysine + copper + selenium + zinc sulphate syrup', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(161, 'Administration and Dosage Guidance', 'Dosing and Schedule\nTake this syrup in the dose and duration as advised by your doctor.\n\nAdministration Advice\nMeasure the verified prescribed dose with a calibrated oral syringe and give with food if advised. Follow the pack’s shaking, storage and after-opening instructions.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(161, 'Restricted Dietary Intake', 'May supplement specific micronutrient gaps in a child with a limited diet after nutritional assessment.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(161, 'Increased Nutritional Needs During Recovery', 'May complement adequate food and protein during recovery when the clinician identifies a need for the listed nutrients.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(161, '01 — Provides Vitamins and Trace Minerals', 'The verified formulation supplies nutrients required for normal cellular enzyme activity.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(161, '02 — Supports Protein and Membrane Nutrition', 'Lysine contributes an essential amino acid, while DHA is a structural fatty acid in cell membranes.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(161, '03 — Complements Deficiency Correction', 'Appropriate supplementation can close identified gaps when total diet and intake are adequate.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(161, 'persistent-poor-growth-or-illness', 'Persistent Poor Growth or Illness', 'Ongoing poor appetite, weight loss or developmental concerns require clinical assessment rather than continued empirical supplementation.', 1);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(162, 2, 'G™ G Shield', 'g-g-shield', 'G G Shield contains a Lacticaseibacillus rhamnosus probiotic in a corn-oil vehicle for intestinal microbial support.', 'G G Shield contains a Lacticaseibacillus rhamnosus probiotic in a corn-oil vehicle for intestinal microbial support. The strain and viable count determine the evidence and suitable dose. It may be used as an adjunct within a paediatric digestive-care plan, while hydration, feeding and treatment of the underlying illness remain central.', 'Lacticaseibacillus rhamnosus in corn oil', '/assets/products/g-g-shield.jpg', 'published', 162, 'G™ G Shield | Onecore Pharma', 'G G Shield contains a Lacticaseibacillus rhamnosus probiotic in a corn-oil vehicle for intestinal microbial support.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(162, 'Lacticaseibacillus rhamnosus in corn oil', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(162, 'Administration and Dosage Guidance', 'Dosing and Schedule\nGive 0.25 mL once daily, providing at least 1 billion CFU under the stated LGG concentration assumption. Use 5 drops only if the supplied dropper is calibrated to deliver 0.25 mL in 5 drops. Confirm strain, CFU concentration and drop calibration before publication.\n\nAdministration Advice\nShake as directed and measure with the supplied calibrated device. Give directly or mix into a small amount of cool feed that will be fully consumed. Do not add to hot liquids; separate oral antibiotics by at least 2 hours.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(162, 'Support During Antibiotic Treatment', 'A verified evidence-supported strain may be considered to reduce antibiotic-associated diarrhoea risk in selected children.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(162, 'Adjunct Intestinal Microbiota Support', 'May provide supplemental organisms after digestive illness. It does not replace oral rehydration or indicated infection treatment.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(162, '01 — Delivers a Selected Probiotic', 'The oil vehicle carries the labelled viable L. rhamnosus organisms.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(162, '02 — Interacts with the Gut Environment', 'An appropriate strain may influence microbial competition and barrier-related responses.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(162, '03 — Provides Strain-Specific Support', 'Clinical effects depend on the exact strain and viable dose. Species identity alone is insufficient to establish benefit.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(162, 'immunosuppression-and-serious-illness', 'Immunosuppression and Serious Illness', 'Seek specialist advice for premature infants, severe illness, immunosuppression or a central venous catheter. Rare invasive probiotic infection is possible.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(162, 'dehydration-and-warning-symptoms', 'Dehydration and Warning Symptoms', 'Blood in stools, reduced urine, lethargy or persistent fever needs prompt assessment. Continue appropriate fluids and feeding.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(162, 'strain-dose-and-storage', 'Strain, Dose and Storage', 'Confirm the strain code, CFU at expiry, drop size and storage instructions. Avoid use if the product is damaged or contaminated.', 3);

INSERT INTO `products` (`id`, `therapeutic_area_id`, `brand_name`, `slug`, `short_description`, `full_description`, `composition_summary`, `packshot_url`, `status`, `display_order`, `seo_title`, `seo_description`) VALUES
(163, 2, 'Dermatio™ Cream', 'dermatio-cream', 'Dermatio Cream is a multi-ingredient moisturiser containing humectants, emollients and barrier-supporting skin-care ingredients.', 'Dermatio Cream is a multi-ingredient moisturiser containing humectants, emollients and barrier-supporting skin-care ingredients. Glycerin and hyaluronate help retain moisture, while lipids and silicones reduce dryness and improve skin feel. It supports a dry-skin care routine and may complement prescribed eczema care without replacing treatment of active inflammation or infection.', 'Purified Water, Caprylic Capric Triglyceride, Glycerin, Cetearyl Alcohol and Ceteareth-20, Cyclopentasiloxane, Disodium Ethylene Dicocamide PEG-15 Disulfate, Niacinamide, Sorbitol, Glyceryl Mono Stearate, Cyclopentasiloxane (and) Dimethiconol, Cetyl Alcohol, Glyceryl Stearate Citrate, Pentylene Glycol, Butyrospermum Parkii (Shea) Butter, Sodium PCA, Tasman Pepper (Tasmannia Lanceolata Extract), Zinc Oxide, D-Panthenol, Vitamin E Acetate, Citric Acid, Caprylyl Glycol, Colloidal Oatmeal, Calendula Oil Soluble Extract, Sea Buckthorn Seed Oil, Sodium Polyacrylate, Allantoin, Arginine, Lactobacillus Ferment Lysate, Di-Sodium EDTA, Sodium Hyaluronate (Low Molecular Weight), Ceramide Lotion', '/assets/products/dermatio-cream.jpg', 'published', 163, 'Dermatio™ Cream | Onecore Pharma', 'Dermatio Cream is a multi-ingredient moisturiser containing humectants, emollients and barrier-supporting skin-care ingredients.');
INSERT INTO `product_compositions` (`product_id`, `ingredient_name`, `strength`, `display_order`) VALUES
(163, 'Purified Water, Caprylic Capric Triglyceride, Glycerin, Cetearyl Alcohol and Ceteareth-20, Cyclopentasiloxane, Disodium Ethylene Dicocamide PEG-15 Disulfate, Niacinamide, Sorbitol, Glyceryl Mono Stearate, Cyclopentasiloxane (and) Dimethiconol, Cetyl Alcohol, Glyceryl Stearate Citrate, Pentylene Glycol, Butyrospermum Parkii (Shea) Butter, Sodium PCA, Tasman Pepper (Tasmannia Lanceolata Extract), Zinc Oxide, D-Panthenol, Vitamin E Acetate, Citric Acid, Caprylyl Glycol, Colloidal Oatmeal, Calendula Oil Soluble Extract, Sea Buckthorn Seed Oil, Sodium Polyacrylate, Allantoin, Arginine, Lactobacillus Ferment Lysate, Di-Sodium EDTA, Sodium Hyaluronate (Low Molecular Weight), Ceramide Lotion', '', 1);
INSERT INTO `product_dosage` (`product_id`, `heading`, `description`) VALUES
(163, 'Administration and Dosage Guidance', 'Dosing and Schedule\nApply a thin layer at least twice daily and after bathing. Reapply to dry areas as needed.\n\nAdministration Advice\nApply gently to clean skin, preferably immediately after a brief lukewarm bath. Avoid eyes and mucosal surfaces. Use clean hands or a clean spatula to prevent contamination.');
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(163, 'Dry and Sensitive Skin Care', 'Helps improve hydration, softness and comfort when dryness or barrier disturbance is present.', 1);
INSERT INTO `product_benefits` (`product_id`, `title`, `description`, `display_order`) VALUES
(163, 'Adjunct Moisturising Care in Eczema-Prone Skin', 'Supports regular barrier care alongside appropriate treatment of eczema flares and any infection.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(163, '01 — Attracts Water', 'Glycerin, sodium PCA and hyaluronate act as humectants within the outer skin.', 1);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(163, '02 — Reduces Moisture Loss', 'Emollient lipids and silicones form a protective surface layer that limits water loss.', 2);
INSERT INTO `product_mechanisms` (`product_id`, `title`, `description`, `display_order`) VALUES
(163, '03 — Supports Barrier Comfort', 'Barrier-supporting and soothing ingredients may reduce dryness-related tightness and improve skin comfort.', 3);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(163, 'ingredient-allergy-and-patch-testing', 'Ingredient Allergy and Patch Testing', 'The formula includes oat and multiple botanical ingredients. Patch test where appropriate and stop for rash, swelling or worsening irritation.', 1);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(163, 'infected-or-worsening-eczema', 'Infected or Worsening Eczema', 'Weeping, crusting, spreading redness or marked pain needs assessment. A moisturiser does not replace prescribed anti-inflammatory or antimicrobial treatment.', 2);
INSERT INTO `product_safety_sections` (`product_id`, `section_key`, `title`, `description`, `display_order`) VALUES
(163, 'dosage-form-and-product-claims', 'Dosage Form and Product Claims', 'Confirm cream versus lotion and the exact ceramide ingredients. Do not assume SPF, fragrance-free status or proven probiotic effects from the ingredient list.', 3);

