/* HILFSTABELLE GESCHLECHT */
DROP TABLE IF EXISTS gender;

CREATE TABLE IF NOT EXISTS gender (
  "id" INT,
  "label" VARCHAR,
  PRIMARY KEY(id)
);

INSERT INTO gender VALUES
(1, 'female'),
(2, 'male');



/* TABELLE 21 */
DROP TABLE IF EXISTS empfaenger_innen_grundsicherung;

CREATE TABLE IF NOT EXISTS empfaenger_innen_grundsicherung (
  "id" SERIAL,
  "district_id" INT,
  "year" INT,
  "residents_male" INT,
  "residents_female" INT,
  "18_bis_unter_65" INT,
  "65_und_aelter" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

INSERT INTO empfaenger_innen_grundsicherung (district_id, year, residents_male, residents_female, "18_bis_unter_65", "65_und_aelter") VALUES
(1, 2021, 245, 158, 55, 55),
(2, 2021, 61, 49, 122, 76),
(3, 2021, 112, 86, 283, 248),
(4, 2021, 287, 244, 74, 79),
(5, 2021, 74, 79, 88, 78),
(6, 2021, 76, 90, 37, 45),
(7, 2021, 37, 45, 80, 65),
(8, 2021, 75, 70, 81, 74),
(9, 2021, 77, 78, 126, 104),
(10, 2021, 111, 119, 138, 110),
(11, 2021, 116, 132, 137, 164),
(12, 2021, 140, 161, 69, 99),
(13, 2021, 77, 91, 23, 28);



/* TABELLE 22 */
DROP TABLE IF EXISTS in_schuldnerberatung_beratene_personen;

CREATE TABLE IF NOT EXISTS in_schuldnerberatung_beratene_personen (
  "id" SERIAL,
  "year" INT,
  "household_type_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(household_type_id) REFERENCES household_type(id)
);

INSERT INTO in_schuldnerberatung_beratene_personen (year, household_type_id, residents) VALUES
(2021, 1, 767),
(2021, 2, 403),
(2021, 3, NULL),
(2021, 4, 381),
(2021, 5, 350),
(2021, 6, 528),
(2021, 7, 60);



/* TABELLE 19 */
DROP TABLE IF EXISTS beneficiaries;

CREATE TABLE IF NOT EXISTS beneficiaries (
  "id" SERIAL,
  "district_id" INT,
  "year" INT,
  "nicht_erwebsfaehig" INT,
  "erwebsfaehig" INT,
  "erwebsfaehig_frauen_percent" NUMERIC,
  "allein_erziehend_percent" NUMERIC,
  "auslaendische_staatsangehoerigkeit_percent" NUMERIC,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

INSERT INTO beneficiaries (district_id, year, nicht_erwebsfaehig, erwebsfaehig, erwebsfaehig_frauen_percent, allein_erziehend_percent, auslaendische_staatsangehoerigkeit_percent) VALUES
(1, 2021, 98, 377, 40.3, 7.2, 31.3),
(2, 2021, 307, 809, 41.9, 7.5, 40.5),
(3, 2021, 585, 1585, 48, 14.5, 37.5),
(4, 2021, 215, 518, 49.4, 12.9, 31.9),
(5, 2021, 156, 514, 52.3, 17.9, 23.7),
(6, 2021, 170, 324, 47.5, 16, 38.9),
(7, 2021, 171, 444, 50.5, 16.2, 29.3),
(8, 2021, 139, 567, 39.2, 10.1, 25.4),
(9, 2021, 211, 837, 43.8, 9.3, 26.8),
(10, 2021, 223, 569, 56.1, 20.7, 19),
(11, 2021, 441, 988, 53.8, 18.8, 29.9),
(12, 2021, 236, 518, 56, 14.3, 24.5),
(13, 2021, 30, 120, 50.8, 9.2, 23.3);
