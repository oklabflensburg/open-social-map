DROP TABLE IF EXISTS table_meta_information;

CREATE TABLE IF NOT EXISTS table_meta_information (
  id SERIAL,
  name VARCHAR,
  title TEXT,
  hint TEXT,
  PRIMARY KEY(id)
);

INSERT INTO table_meta_information (name, title, hint) VALUES
('residents_by_districts', 'Einwohnerinnen in den Stadtteilen 2011 bis 2021', 'Einwohnerinnen mit Haupt- oder alleiniger Wohnung. Geringfügige Abweichungen ergeben sich durch nicht zuordenbare Personen.'),
('births_by_districts', 'Anzahl der Geburten und Geburtenquoten in den Stadtteilen 2011 bis 2021', NULL),
('age_groups_of_residents', 'Entwicklung der Altersgruppen 2011 bis 2021', NULL),
('age_ratio_by_districts', 'Altenquotient 2011 bis 2021 differenziert nach Stadtteilen', NULL),
('age_groups_of_residents_by_districts', 'Einwohnerinnen in den Stadtteilen differenziert nach Altersgruppen in 2021', NULL),
('children_age_under_18_by_districts', 'Anzahl der Kinder und Jugendlichen bis unter 18 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', NULL),
('residents_age_18_to_under_65_by_districts', 'Personen im Alter von 18 bis unter 65 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', NULL),
('residents_age_65_and_above_by_districts', 'Personen im Alter von 65 Jahren und älter in den Stadtteilen 2011 bis 2021', NULL),
('migration_background_by_districts', 'Anzahl der Personen mit Migrationshintergrund und Anteil an der Gesamtbevölkerung in den Stadtteilen 2021', NULL),
('non_german_nationals_residence_status', 'Nicht-deutsche Staatsangehörige nach Aufenthaltsstatus (Fallzahlen 2016 bis 2021, jeweils zum 31.12.)', 'Nach Angaben vom Einwanderungsbüro zum Stichtag 31.12.2021. Ein direkter Abgleich mit Daten nach Auswertung des Einwohnermelderegisters ist nicht möglich. Bei den Personen ohne langfristiges Aufenthaltsrecht handelt es sich ausschließlich um Menschen aus sog. Drittstaaten. Ihr Aufenthalt begründet sich nach dem Aufenthaltsgesetz für Drittstaatsangehörige. Die Zeile „Gesamt“ umfasst weitere Personen, die in den anderen Spalten nicht geführt werden, da sie andere Rechtsstatus haben.'),
('employed_with_pension_insurance_by_districts', 'Anzahl der sozialversicherungspflichtig Beschäftigten nach Stadtteilen 2017 bis 2021', 'Beschäftigungsquote (BQ) = Anteil der sozialversicherungspflichtig Beschäftigten an der Wohnbevölkerung im erwerbsfähigen Alter (15 bis unter 65 Jahren). Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen.'),
('unemployed_residents_by_districts', 'Arbeitslose und Anteil an der Bevölkerung im Alter von 18 bis unter 65 Jahren in den Stadtteilen 2017 bis 2021', 'Anteil der Arbeitslosen an der Bevölkerung im Alter von 18- unter 65 Jahren. Darstellung und Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg. Arbeitslosenzahlen zum 30.06.'),
('unemployed_residents_by_districts_categorized', 'Anzahl der Arbeitslosen nach ausgewählten Merkmalen in den Stadtteilen (zum 30.06.2021)', 'Geringfügige Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen. Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit.'),
('housing_benefit_by_districts', 'Wohngeldempfängerinnen und ihr Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021', 'Zusammenstellung nach Angaben des Fachbereiches Soziales und Gesundheit.'),
('housing_assistance_cases_by_districts', 'Wohnungshilfefälle 2021', 'Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit gekennzeichnete Werte liegen unter 4 und werden aus datenschutzrechtlichen Gründen unkenntlich gemacht. Auf Grund einer Programmunmstellung werden bei den Beratungen keine Fallzahlen, sondern die Anzahl der tatsächlich durchgeführten Beratungen dargestellt.'),
('households_at_risk_of_homelessness_by_districts', 'Von Wohnungslosigkeit bedrohte Haushalte (Räumungsklagen) in den Stadtteilen 2017 bis 2021', 'Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit  gekennzeichnete Werte liegen unter 4 und werden unkenntlich gemacht.'),
('beneficiaries_age_15_to_under_65_by_districts', 'Anzahl der Personen im Bezug von Leistungen nach SGB II, III und XIl (im Alter von 15 bis unter 65 Jahren) und Anteil an der Bevölkerung in den Stadtteilen 2021', 'Darstellung und Berechnung nach Statistik der Bundesagentur für Arbeit, der Statistikstelle der Stadt Flensburg und des Fachbereichs Soziales und Gesundheit. Dargestellt sind die Empfänger:innen im Alter von 15- und 65 Jahren bezogen auf die Bevölkerung in dieser Altersgruppe. Berichtsmonat SGB II: März 2021, Berichtsmonat SGB III: Juni 2021, Stichtag SGB XII: 31.12.2021'),
('beneficiaries_by_districts', 'Anzahl der Regelleistungsberechtigten nach SGB Il und Anteil an der Bevölkerung unter 65 Jahren in den Stadtteilen 2018 bis 2021', NULL),
('beneficiaries_characteristics_by_districts', 'Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021', NULL),
('inactive_beneficiaries_in_households_by_districts', 'Nichterwerbsfähige Leistungsberechtigte in Bedarfsgemeinschaften nach SGB II (überwiegend Personen unter 15 Jahren) und Anteil an der Bevölkerung in den Stadtteilen unter 15 Jahren 2018 bis 2021', 'Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021. Darstellungen und Berechnungen nach Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg.'),
('basic_benefits_income_by_districts', 'Empfängerinnen der Grundsicherung nach ausgewählten Merkmalen in den Stadtteilen 2021', NULL),
('debt_counseling_residents', 'In der Schuldnerberatung beratene Personen 2021', NULL),
('child_education_support', 'Anzahl der Hilfen zur Erziehung (Durchschnittszahlen) und ihre Verteilung auf die Hilfearten 2017 bis 2021', NULL);
