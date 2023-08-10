/* HINWEIS, WENN NULL DANN WERT UNTER 4 -> DATENSCHUTZ */


/* TABELLE 10, NICHT DEUTSCHE NACH AUFENTHALTSSTATUS */
CREATE TABLE IF NOT EXISTS non_german_nationals_residence_status (
  "id" SERIAL PRIMARY KEY,
	"year" INT,
	"langfristiges Aufenthaltsrecht" INT,
	"langfristiges Aufenthaltsrecht nach EU-Freizügikeitsgesetz" INT,
	"langfristiges Aufenthaltsrecht Drittstaatenangehörige" INT,
	"ohne langfristiges Aufenthaltsrecht" INT,
	"Asylbewerber:innen" INT,
	"Aussetzung der Abschiebung" INT
);

INSERT INTO non_german_nationals_residence_status VALUES 
(2016, 6527, 5029, 1498, 2138, 790, 146),
(2017, 7995, 6466, 1529, 3234, 424, 186),
(2018, 8363, 6865, 1498, 3987, 366, 214),
(2019, 8117, 6569, 1548, 4585, 287, 275),
(2020, 9510, 7842, 1668, 4747, 204, 252),
(2021, 10178, 8314, 1864, 4868, 143, 276);



/* TABELLE 12 ANTEIL ARBEITSLOSE 18 bis 65 */
CREATE TABLE IF NOT EXISTS unemployed_residents (
  "id" SERIAL PRIMARY KEY,
  `district` INT,
  `residents` INT,
  `2017` INT,
	`2018` INT,
	`2019` INT,
	`2020` INT,
	`2021` INT
);

INSERT INTO unemployed_residents VALUES ('Altstadt',233, 227, 218, 252, 226),
('Neustadt',390, 360, 343, 450, 383),
('Nordstadt',933, 856, 754, 927),
('Westliche Höhe',281, 259, 270, 350, 304),
('Friesischer Berg',300, 276, 251, 288, 286),
('Weiche',229, 204, 202, 230, 205),
('Südstadt',241, 239, 213, 238,226),
('Sandberg',292, 304, 296, 359, 327),
('Jürgensby',452, 456, 431, 567, 427),
('Fruerlund',278, 278, 241, 335, 303),
('Mürwik',512, 517, 477, 614, 532),
('Engelsby',266, 265, 248, 310, 276),
('Tarup',52, 53, 54, 98, 85);



/* TABELLE 14 WOHNGELDEMPFÄNGERINNEN */
CREATE TABLE IF NOT EXISTS housing_benefit (
  "id" SERIAL PRIMARY KEY,
	`district` TEXT,
  `residents` INT,
  `2011` INT,
	`2017` INT,
	`2018` INT,
	`2019` INT,
	`2020` INT,
	`2021` INT
);

INSERT INTO housing_benefit VALUES ('Altstadt',130,96, 133, 119, 92, 115),
('Neustadt',207,114, 165, 218, 172, 172),
('Nordstadt',584,413, 165, 571, 722, 523),
('Westliche Höhe',228,194, 212, 180, 189, 252),
('Friesischer Berg',274,239, 244, 204, 223, 258),
('Weiche',280,170, 295, 216, 211, 163),
('Südstadt',173,192, 242, 216, 231, 204),
('Sandberg',229,182, 191, 211, 227, 252),
('Jürgensby',353,256, 293, 266, 292, 328),
('Fruerlund',337,360, 375, 416, 455, 370),
('Mürwik',623,504, 590, 569, 601, 484),
('Engelsby',392,233, 286, 228, 285, 247),
('Tarup',91,44, 71, 56, 125, 114);



/* TABELLE 15 WOHNUNGSHILFEFÄLLE 2021 */
CREATE TABLE IF NOT EXISTS housing_assistance_cases (
  "id" SERIAL PRIMARY KEY,
  `district` TEXT,
  `general_consulting` INT,
	`notices_of_rent_arrears` INT,
	`termination_rent_arrears` INT,
	`termination_for_conduct` INT,
	`action_for_eviction` INT,
	`eviction_notice` INT,
	`eviction_carried` INT
);

INSERT INTO housing_benefit VALUES ('Altstadt', 25, 15, null, null, null, null, 5, 5), 
('Neustadt', 62, 39, null, 4, null, 5, 9, 5),
('Nordstadt', 243, 175, null, 19, 4, 15, 20, 10),
('Westliche Höhe', 83, 60, null, null, null, 11, 7, 5),
('Friesischer Berg', 38, 28, null, 4, null, 6, null, null),
('Weiche', 74, 70, null, null, null, null, 4, null),
('Südstadt', 51,40,null,5,null,6,null,null),
('Sandberg', 47, 28, null, 5, null, 6, null, null),
('Jürgensby', 95, 61, 4, 14, null, 8, 4, 4),
('Fruerlund', 54, 54, null, null, null, null, null, null),
('Mürwik', 75, 44, 5, 6, null, 10, 5, 5),
('Engelsby', 71, 40, null, 7, null, 12, 7, 5),
('Tarup', 24, 24, null, null, null, null, null, null);



/* TABELLE 16 WOHNUNGSLOSIGKEIT BEDROHTE */
CREATE TABLE IF NOT EXISTS households_at_risk_of_homelessness (
  `district` TEXT,
  `residents` INT,
	`2017` INT,
	`2018` INT,
	`2019` INT,
	`2020` INT,
	`2021` INT
);

INSERT INTO households_at_risk_of_homelessness VALUES ('Altstadt', 14, 5, 13, 11, null), 
('Neustadt', 21, 23, 21, 20, 5),
('Nordstadt', 31, 27, 27, 21, 15),
('Westliche Höhe', 8, 11,11,9,11),
('Friesischer Berg', 15, 8, 10, 15, 6),
('Weiche', 11, null, null, 6, null),
('Südstadt', 9, 7,16,16,6),
('Sandberg', 9, 13,16,14,null),
('Jürgensby', 14, 10,15,15,8),
('Fruerlund', 6, 9,15,8,null),
('Mürwik', 28, 12, null, 21, 10),
('Engelsby', 17, 9, 14, 11, 12),
('Tarup', null, null, null, 4, null)
