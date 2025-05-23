/* HILFSTABELLE SPRACHEN UND REGIONEN */
DROP TABLE IF EXISTS fl_i18n CASCADE;

CREATE TABLE IF NOT EXISTS fl_i18n (
  id INT,
  locale VARCHAR,
  dialect VARCHAR,
  label VARCHAR,
  PRIMARY KEY(id)
);

CREATE UNIQUE INDEX IF NOT EXISTS fl_i18n_locale_dialect_idx ON fl_i18n (locale, dialect);

INSERT INTO fl_i18n (id, locale, dialect, label) VALUES
(1, 'de', 'DE', 'Deutsch'),
(2, 'dk', 'DK', 'Dansk'),
(3, 'en', 'GB', 'English');



/* META TABELLE UMGANGSSPRACHLICHE TABELLENNAMEN */
DROP TABLE IF EXISTS fl_table_meta_data;

CREATE TABLE IF NOT EXISTS fl_table_meta_data (
  id SERIAL,
  i18n_id INT,
  table_name VARCHAR,
  table_label TEXT,
  table_hint TEXT,
  PRIMARY KEY(id),
  FOREIGN KEY(i18n_id) REFERENCES fl_i18n(id)
);

INSERT INTO fl_table_meta_data (i18n_id, table_name, table_label, table_hint) VALUES
(1, 'fl_residents_by_district', 'Einwohnerinnen in den Stadtteilen 2011 bis 2021', 'Einwohnerinnen mit Haupt- oder alleiniger Wohnung. Geringfügige Abweichungen ergeben sich durch nicht zuordenbare Personen.'),
(1, 'fl_births_by_district', 'Anzahl der Geburten und Geburtenquoten in den Stadtteilen 2011 bis 2021', NULL),
(1, 'fl_age_groups_of_residents', 'Entwicklung der Altersgruppen 2011 bis 2021', NULL),
(1, 'fl_age_ratio_by_district', 'Altenquotient 2011 bis 2021 differenziert nach Stadtteilen', NULL),
(1, 'fl_age_groups_of_residents_by_district', 'Einwohnerinnen in den Stadtteilen differenziert nach Altersgruppen in 2021', NULL),
(1, 'fl_children_age_under_18_by_district', 'Anzahl der Kinder und Jugendlichen bis unter 18 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', NULL),
(1, 'fl_residents_age_18_to_under_65_by_district', 'Personen im Alter von 18 bis unter 65 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', NULL),
(1, 'fl_residents_age_65_and_above_by_district', 'Personen im Alter von 65 Jahren und älter in den Stadtteilen 2011 bis 2021', NULL),
(1, 'fl_migration_background_by_district', 'Anzahl der Personen mit Migrationshintergrund und Anteil an der Gesamtbevölkerung in den Stadtteilen 2021', NULL),
(1, 'fl_non_german_nationals_residence_status', 'Nicht-deutsche Staatsangehörige nach Aufenthaltsstatus (Fallzahlen 2016 bis 2021, jeweils zum 31.12.)', 'Nach Angaben vom Einwanderungsbüro zum Stichtag 31.12.2021. Ein direkter Abgleich mit Daten nach Auswertung des Einwohnermelderegisters ist nicht möglich. Bei den Personen ohne langfristiges Aufenthaltsrecht handelt es sich ausschließlich um Menschen aus sog. Drittstaaten. Ihr Aufenthalt begründet sich nach dem Aufenthaltsgesetz für Drittstaatsangehörige. Die Zeile „Gesamt“ umfasst weitere Personen, die in den anderen Spalten nicht geführt werden, da sie andere Rechtsstatus haben.'),
(1, 'fl_employed_with_pension_insurance_by_district', 'Anzahl der sozialversicherungspflichtig Beschäftigten nach Stadtteilen 2017 bis 2021', 'Beschäftigungsquote (BQ) = Anteil der sozialversicherungspflichtig Beschäftigten an der Wohnbevölkerung im erwerbsfähigen Alter (15 bis unter 65 Jahren). Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen.'),
(1, 'fl_unemployed_residents_by_district', 'Arbeitslose und Anteil an der Bevölkerung im Alter von 18 bis unter 65 Jahren in den Stadtteilen 2017 bis 2021', 'Anteil der Arbeitslosen an der Bevölkerung im Alter von 18- unter 65 Jahren. Darstellung und Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg. Arbeitslosenzahlen zum 30.06.'),
(1, 'fl_unemployed_residents_categorized_by_district', 'Anzahl der Arbeitslosen nach ausgewählten Merkmalen in den Stadtteilen (zum 30.06.2021)', 'Geringfügige Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen. Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit.'),
(1, 'fl_housing_benefit_by_district', 'Wohngeldempfängerinnen und ihr Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', 'Zusammenstellung nach Angaben des Fachbereiches Soziales und Gesundheit.'),
(1, 'fl_housing_assistance_cases_by_district', 'Wohnungshilfefälle 2021', 'Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit gekennzeichnete Werte liegen unter 4 und werden aus datenschutzrechtlichen Gründen unkenntlich gemacht. Auf Grund einer Programmunmstellung werden bei den Beratungen keine Fallzahlen, sondern die Anzahl der tatsächlich durchgeführten Beratungen dargestellt.'),
(1, 'fl_risk_homelessness_by_district', 'Von Wohnungslosigkeit bedrohte Haushalte (Räumungsklagen) in den Stadtteilen 2017 bis 2021', 'Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit  gekennzeichnete Werte liegen unter 4 und werden unkenntlich gemacht.'),
(1, 'fl_beneficiaries_age_15_to_under_65_by_district', 'Anzahl der Personen im Bezug von Leistungen nach SGB II, III und XIl (im Alter von 15 bis unter 65 Jahren) und Anteil an der Bevölkerung in den Stadtteilen 2021', 'Darstellung und Berechnung nach Statistik der Bundesagentur für Arbeit, der Statistikstelle der Stadt Flensburg und des Fachbereichs Soziales und Gesundheit. Dargestellt sind die Empfänger:innen im Alter von 15- und 65 Jahren bezogen auf die Bevölkerung in dieser Altersgruppe. Berichtsmonat SGB II: März 2021, Berichtsmonat SGB III: Juni 2021, Stichtag SGB XII: 31.12.2021'),
(1, 'fl_beneficiaries_by_district', 'Anzahl der Regelleistungsberechtigten nach SGB Il und Anteil an der Bevölkerung unter 65 Jahren in den Stadtteilen 2018 bis 2021', NULL),
(1, 'fl_beneficiaries_characteristics_by_district', 'Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021', NULL),
(1, 'fl_inactive_beneficiaries_households_by_district', 'Nichterwerbsfähige Leistungsberechtigte in Bedarfsgemeinschaften nach SGB II (überwiegend Personen unter 15 Jahren) und Anteil an der Bevölkerung in den Stadtteilen unter 15 Jahren 2018 bis 2021', 'Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021. Darstellungen und Berechnungen nach Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg.'),
(1, 'fl_basic_benefits_income_by_district', 'Empfängerinnen der Grundsicherung nach ausgewählten Merkmalen in den Stadtteilen 2021', NULL),
(1, 'fl_debt_counseling_residents', 'In der Schuldnerberatung beratene Personen 2021', NULL),
(1, 'fl_child_education_support', 'Anzahl der Hilfen zur Erziehung (Durchschnittszahlen) und ihre Verteilung auf die Hilfearten 2017 bis 2021', NULL);



/* META TABELLE UMGANGSSPRACHLICHE SPALTENNAMEN */
DROP TABLE IF EXISTS fl_column_meta_data;

CREATE TABLE IF NOT EXISTS fl_column_meta_data (
  id SERIAL,
  i18n_id INT,
  table_name VARCHAR,
  column_name VARCHAR,
  column_label VARCHAR,
  PRIMARY KEY(id),
  FOREIGN KEY(i18n_id) REFERENCES fl_i18n(id)
);

INSERT INTO fl_column_meta_data (i18n_id, table_name, column_name, column_label) VALUES
(1, 'household_type', 'male_living_alone', 'Alleinlebender Mann'),
(1, 'household_type', 'female_living_alone', 'Alleinlebende Frau'),
(1, 'household_type', 'single_father', 'Alleinerziehender Mann'),
(1, 'household_type', 'single_mother', 'Alleinerziehende Frau'),
(1, 'household_type', 'couples_without_children', 'Paare ohne Kinder'),
(1, 'household_type', 'couples_with_children', 'Paare mit Kindern'),
(1, 'household_type', 'other_way_of_life', 'Sonstige Lebensform'),


(1, 'residents_by_district', 'year', 'Jahr'),
(1, 'residents_by_district', 'district_id', 'Statdtteil'),
(1, 'residents_by_district', 'residents', 'Einwohner'),


(1, 'births_by_district', 'year', 'Jahr'),
(1, 'births_by_district', 'district_id', 'Statdtteil'),
(1, 'births_by_district', 'births', 'Geburten'),
(1, 'births_by_district', 'birth_rate', 'Geburtenquote'),


(1, 'age_groups_of_residents', 'year', 'Jahr'),
(1, 'age_groups_of_residents', 'age_under_18', 'unter 18'),
(1, 'age_groups_of_residents', 'age_18_to_under_30', '18 bis unter 30'),
(1, 'age_groups_of_residents', 'age_30_to_under_45', '30 bis unter 45'),
(1, 'age_groups_of_residents', 'age_45_to_under_65', '45 bis unter 65'),
(1, 'age_groups_of_residents', 'age_65_to_under_80', '65 bis unter 80'),
(1, 'age_groups_of_residents', 'age_80_and_above', '80 und älter'),


(1, 'age_ratio_by_district', 'year', 'Jahr'),
(1, 'age_ratio_by_district', 'district_id', 'Statdtteil'),
(1, 'age_ratio_by_district', 'quotient', 'Altenquotient'),


(1, 'age_groups_of_residents_by_district', 'year', 'Jahr'),
(1, 'age_groups_of_residents_by_district', 'district_id', 'Statdtteil'),
(1, 'age_groups_of_residents_by_district', 'age_under_18', 'unter 18'),
(1, 'age_groups_of_residents_by_district', 'age_18_to_under_30', '18 bis unter 30'),
(1, 'age_groups_of_residents_by_district', 'age_30_to_under_45', '30 bis unter 45'),
(1, 'age_groups_of_residents_by_district', 'age_45_to_under_65', '45 bis unter 65'),
(1, 'age_groups_of_residents_by_district', 'age_65_to_under_80', '65 bis unter 80'),
(1, 'age_groups_of_residents_by_district', 'age_80_and_above', '80 und älter'),
(1, 'age_groups_of_residents_by_district', 'age_0_to_under_7', '0 bis unter 7'),
(1, 'age_groups_of_residents_by_district', 'age_60_and_above', '60 und älter'),


(1, 'children_age_under_18_by_district', 'year', 'Jahr'),
(1, 'children_age_under_18_by_district', 'district_id', 'Statdtteil'),
(1, 'children_age_under_18_by_district', 'residents', 'Einwohner'),


(1, 'residents_age_18_to_under_65_by_district', 'year', 'Jahr'),
(1, 'residents_age_18_to_under_65_by_district', 'district_id', 'Statdtteil'),
(1, 'residents_age_18_to_under_65_by_district', 'residents', 'Einwohner'),


(1, 'residents_age_65_and_above_by_district', 'year', 'Jahr'),
(1, 'residents_age_65_and_above_by_district', 'district_id', 'Statdtteil'),
(1, 'residents_age_65_and_above_by_district', 'residents', 'Einwohner'),


(1, 'migration_background_by_district', 'year', 'Jahr'),
(1, 'migration_background_by_district', 'district_id', 'Statdtteil'),
(1, 'migration_background_by_district', 'foreign_citizenship', 'ausländische Staatsangehörigkeit'),
(1, 'migration_background_by_district', 'german_citizenship', 'deutsche Staatsangehörigkeit'),


(1, 'non_german_nationals_residence_status', 'year', 'Jahr'),
(1, 'non_german_nationals_residence_status', 'permanent_residency', 'langfristiges Aufenthaltsrecht'),
(1, 'non_german_nationals_residence_status', 'permanent_residency_according_eu_freedom_movement_act', 'Aufenthalt nach EU-Freizügigkeitsgesetz'),
(1, 'non_german_nationals_residence_status', 'permanent_residency_third_country_nationality', 'Aufenthalt nach Aufenthaltsgesetz für Drittstaatsangehörige'),
(1, 'non_german_nationals_residence_status', 'without_permanent_residency', 'ohne langfristiges Aufenthaltsrecht'),
(1, 'non_german_nationals_residence_status', 'asylum_seeker', 'Asylbewerber (Aufenthaltsgestattung)'),
(1, 'non_german_nationals_residence_status', 'suspension_of_deportation', 'Aussetzung der Abschiebung (Duldung)'),


(1, 'employed_with_pension_insurance_by_district', 'year', 'Jahr'),
(1, 'employed_with_pension_insurance_by_district', 'district_id', 'Statdtteil'),
(1, 'employed_with_pension_insurance_by_district', 'residents', 'Einwohner'),
(1, 'employed_with_pension_insurance_by_district', 'remployment_rate', 'Beschäftigungsquote'),


(1, 'unemployed_residents_by_district', 'year', 'Jahr'),
(1, 'unemployed_residents_by_district', 'district_id', 'Statdtteil'),
(1, 'unemployed_residents_by_district', 'residents', 'Einwohner'),


(1, 'unemployed_residents_by_district_categorized', 'year', 'Jahr'),
(1, 'unemployed_residents_by_district_categorized', 'district_id', 'Statdtteil'),
(1, 'unemployed_residents_by_district_categorized', 'unemployed_total', 'Arbeitslose insgesamt'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_of_total', 'Anteil an allen in Prozent'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_sgb_iii', 'nur SGB III in Prozent'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_sgb_ii', 'nur SGB II in Prozent'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_foreign_citizenship', 'mit ausländischer Staatsangehörigkeit'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_female', 'Frauen in Prozent'),
(1, 'unemployed_residents_by_district_categorized', 'percentage_age_under_25', 'unter 25 Jahren in Prozent'),


(1, 'housing_benefit_by_district', 'year', 'Jahr'),
(1, 'housing_benefit_by_district', 'district_id', 'Statdtteil'),
(1, 'housing_benefit_by_district', 'residents', 'Einwohner'),


(1, 'housing_assistance_cases_by_district', 'year', 'Jahr'),
(1, 'housing_assistance_cases_by_district', 'district_id', 'Statdtteil'),
(1, 'housing_assistance_cases_by_district', 'general_consulting', 'allgemeine Beratung'),
(1, 'housing_assistance_cases_by_district', 'notices_of_rent_arrears', 'Mitteilungen über Mietrückstände'),
(1, 'housing_assistance_cases_by_district', 'termination_rent_arrears', 'Kündigungen wegen Mietrückständen'),
(1, 'housing_assistance_cases_by_district', 'termination_for_conduct', 'Kündigungen wegen Verhalten'),
(1, 'housing_assistance_cases_by_district', 'action_for_eviction', 'Räumungklagen'),
(1, 'housing_assistance_cases_by_district', 'eviction_notice', 'Räumungsankündigungen'),
(1, 'housing_assistance_cases_by_district', 'eviction_carried', 'tatsächlich durchgeführte Räumungen'),


(1, 'households_risk_of_homelessness_by_district', 'year', 'Jahr'),
(1, 'households_risk_of_homelessness_by_district', 'district_id', 'Statdtteil'),
(1, 'households_risk_of_homelessness_by_district', 'residents', 'Einwohner'),


(1, 'beneficiaries_age_15_to_under_65_by_district', 'year', 'Jahr'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'district_id', 'Statdtteil'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'total', 'Anzahl Personen'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'percentage_of_total_residents', 'Anzahl in Prozent'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'employable_with_benefits', 'erwerbsfähige Leistungsberechtigte SGB II'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'unemployment_benefits', 'Arbeitslose SGB III'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'basic_income', 'Grundsicherung SGB XII'),
(1, 'beneficiaries_age_15_to_under_65_by_district', 'assisting_benefits', 'Hilfe zum Lebensunterhalt SGB XII'),


(1, 'beneficiaries_by_district', 'year', 'Jahr'),
(1, 'beneficiaries_by_district', 'district_id', 'Statdtteil'),
(1, 'beneficiaries_by_district', 'residents', 'Einwohner'),


(1, 'beneficiaries_characteristics_by_district', 'year', 'Jahr'),
(1, 'beneficiaries_characteristics_by_district', 'district_id', 'Statdtteil'),
(1, 'beneficiaries_characteristics_by_district', 'unemployability', 'Anzahl nicht erwerbsfähiger'),
(1, 'beneficiaries_characteristics_by_district', 'employability', 'Anzahl erwerbsfähiger'),
(1, 'beneficiaries_characteristics_by_district', 'percentage_females', 'erwerbsfähige Frauen in Prozent'),
(1, 'beneficiaries_characteristics_by_district', 'percentage_single_parents', 'erwerbsfähige alleinerziehende in Prozent'),
(1, 'beneficiaries_characteristics_by_district', 'percentage_foreign_citizenship', 'erwerbsfähige mit ausländischer Staatsangehörigkeit in Prozent'),


(1, 'inactive_beneficiaries_in_households_by_district', 'year', 'Jahr'),
(1, 'inactive_beneficiaries_in_households_by_district', 'district_id', 'Statdtteil'),
(1, 'inactive_beneficiaries_in_households_by_district', 'residents', 'Einwohner'),


(1, 'basic_benefits_income_by_district', 'year', 'Jahr'),
(1, 'basic_benefits_income_by_district', 'district_id', 'Statdtteil'),
(1, 'basic_benefits_income_by_district', 'male', 'männlich'),
(1, 'basic_benefits_income_by_district', 'female', 'weiblich'),
(1, 'basic_benefits_income_by_district', 'age_18_to_under_65', '18 bis unter 65'),
(1, 'basic_benefits_income_by_district', 'age_65_and_above', '65 und älter'),


(1, 'debt_counseling_residents', 'year', 'Jahr'),
(1, 'debt_counseling_residents', 'male_living_alone', 'Alleinlebender Mann'),
(1, 'debt_counseling_residents', 'female_living_alone', 'Alleinlebende Frau'),
(1, 'debt_counseling_residents', 'single_father', 'Alleinerziehender Mann'),
(1, 'debt_counseling_residents', 'single_mother', 'Alleinerziehende Frau'),
(1, 'debt_counseling_residents', 'couples_without_children', 'Paare ohne Kinder'),
(1, 'debt_counseling_residents', 'couples_with_children', 'Paare mit Kindern'),
(1, 'debt_counseling_residents', 'other_way_of_life', 'Sonstige Lebensform'),
(1, 'debt_counseling_residents', 'residents', 'Einwohner'),


(1, 'child_education_support', 'year', 'Jahr'),
(1, 'child_education_support', 'educational_assistance', 'soziale Gruppenarbeit nach § 29 SGB VIII'),
(1, 'child_education_support', 'parenting_counselor', 'Erziehungsbeistand, Betreuungshelfer nach § 30 SGB VIII'),
(1, 'child_education_support', 'pedagogical_family_assistance', 'Sozialpädagogische Familienhilfe nach § 31 SGB VIII'),
(1, 'child_education_support', 'child_day_care_facility', 'Erziehung in einer Tagesgruppe nach § 32 SGB VIII'),
(1, 'child_education_support', 'full_time_care', 'Vollzeitpflege nach § 33 SGB VIII'),
(1, 'child_education_support', 'residential_education', 'Heimerziehung, sonstige betreute Wohnform nach § 34 SGB VIII'),
(1, 'child_education_support', 'integration_assistance', 'Eingliederungshilfe nach § 35a SGB VIII'),
(1, 'child_education_support', 'additional_support', 'sonstige Hilfen nach § 27 Abs. 2 SGB VIII');
