/* HINWEIS, WENN NULL DANN WERT UNTER 4 -> DATENSCHUTZ */



DROP TABLE districts;

CREATE TABLE IF NOT EXISTS districts (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR
);

INSERT INTO districts (name) VALUES
('Altstadt'),
('Neustadt'),
('Nordstadt'),
('Westliche Höhe'),
('Friesischer Berg'),
('Weiche'),
('Südstadt'),
('Sandberg'),
('Jürgensby'),
('Fruerlund'),
('Mürwik'),
('Engelsby'),
('Tarup');



DROP TABLE non_german_nationals_residence_status;

/* TABELLE 10, NICHT DEUTSCHE NACH AUFENTHALTSSTATUS */
CREATE TABLE IF NOT EXISTS non_german_nationals_residence_status (
  "id" SERIAL PRIMARY KEY,
	"year" INT,
	"permanent_residency" INT,
	"permanent_residency_according_eu_freedom_movement_act" INT,
	"permanent_residency_third_country_nationality" INT,
	"without_permanent_residency" INT,
	"asylum_seeker" INT,
	"suspension_of_deportation" INT
);

INSERT INTO non_german_nationals_residence_status (year, permanent_residency, permanent_residency_according_eu_freedom_movement_act, permanent_residency_third_country_nationality, without_permanent_residency, asylum_seeker, suspension_of_deportation) VALUES 
  (2016, 6527, 5029, 1498, 2138, 790, 146),
  (2017, 7995, 6466, 1529, 3234, 424, 186),
  (2018, 8363, 6865, 1498, 3987, 366, 214),
  (2019, 8117, 6569, 1548, 4585, 287, 275),
  (2020, 9510, 7842, 1668, 4747, 204, 252),
  (2021, 10178, 8314, 1864, 4868, 143, 276);



DROP TABLE unemployed_residents;

/* TABELLE 12 ANTEIL ARBEITSLOSE 18 BIS 65 IN DEN JAHREN 2017-2021 */
CREATE TABLE IF NOT EXISTS unemployed_residents (
  "id" SERIAL PRIMARY KEY,
  "year" INT,
  "district" VARCHAR NOT NULL,
  "residents" INT
);

INSERT INTO unemployed_residents (year, district, residents) VALUES
(2017, 'Altstadt', 233),
(2018, 'Altstadt', 227),
(2019, 'Altstadt', 218),
(2020, 'Altstadt', 252),
(2021, 'Altstadt', 226),

(2017, 'Neustadt', 390),
(2018, 'Neustadt', 360),
(2019, 'Neustadt', 343),
(2020, 'Neustadt', 450),
(2021, 'Neustadt', 383),

(2017, 'Nordstadt', 933),
(2018, 'Nordstadt', 856),
(2019, 'Nordstadt', 754),
(2020, 'Nordstadt', 927),
(2021, 'Nordstadt', 823),

(2017, 'Westliche Höhe', 281),
(2018, 'Westliche Höhe', 259),
(2019, 'Westliche Höhe', 270),
(2020, 'Westliche Höhe', 350),
(2021, 'Westliche Höhe', 304),

(2017, 'Friesischer Berg', 300),
(2018, 'Friesischer Berg', 276),
(2019, 'Friesischer Berg', 251),
(2020, 'Friesischer Berg', 288),
(2021, 'Friesischer Berg', 286),

(2017, 'Weiche', 229),
(2018, 'Weiche', 204),
(2019, 'Weiche', 202),
(2020, 'Weiche', 230),
(2021, 'Weiche', 205),

(2017, 'Südstadt', 241),
(2018, 'Südstadt', 239),
(2019, 'Südstadt', 213),
(2020, 'Südstadt', 238),
(2021, 'Südstadt', 226),

(2017, 'Sandberg', 292),
(2018, 'Sandberg', 304),
(2019, 'Sandberg', 296),
(2020, 'Sandberg', 359),
(2021, 'Sandberg', 327),

(2017, 'Jürgensby', 452),
(2018, 'Jürgensby', 456),
(2019, 'Jürgensby', 431),
(2020, 'Jürgensby', 567),
(2021, 'Jürgensby', 427),

(2017, 'Fruerlund', 278),
(2018, 'Fruerlund', 278),
(2019, 'Fruerlund', 241),
(2020, 'Fruerlund', 335),
(2021, 'Fruerlund', 303),

(2017, 'Mürwik', 512),
(2018, 'Mürwik', 517),
(2019, 'Mürwik', 477),
(2020, 'Mürwik', 614),
(2021, 'Mürwik', 532),

(2017, 'Engelsby', 266),
(2018, 'Engelsby', 265),
(2019, 'Engelsby', 248),
(2020, 'Engelsby', 310),
(2021, 'Engelsby', 276),

(2017, 'Tarup', 52),
(2018, 'Tarup', 53),
(2019, 'Tarup', 54),
(2020, 'Tarup', 98),
(2021, 'Tarup', 85);



DROP TABLE housing_benefit;

/* TABELLE 14 WOHNGELDEMPFÄNGERINNEN */
CREATE TABLE IF NOT EXISTS housing_benefit (
  "id" SERIAL PRIMARY KEY,
  "year" INT,
	"district" VARCHAR NOT NULL,
  "residents" INT
);

INSERT INTO housing_benefit (year, district, residents) VALUES 
(2011, 'Altstadt', 130),
(2017, 'Altstadt', 96),
(2018, 'Altstadt', 133),
(2019, 'Altstadt', 119),
(2020, 'Altstadt', 92),
(2021, 'Altstadt', 116),

(2011, 'Neustadt', 207),
(2017, 'Neustadt', 114),
(2018, 'Neustadt', 165),
(2019, 'Neustadt', 218),
(2020, 'Neustadt', 172),
(2021, 'Neustadt', 172),

(2011, 'Nordstadt', 584),
(2017, 'Nordstadt', 413),
(2018, 'Nordstadt', 165),
(2019, 'Nordstadt', 571),
(2020, 'Nordstadt', 722),
(2021, 'Nordstadt', 523),

(2011, 'Westliche Höhe', 228),
(2017, 'Westliche Höhe', 194),
(2018, 'Westliche Höhe', 212),
(2019, 'Westliche Höhe', 180),
(2020, 'Westliche Höhe', 189),
(2021, 'Westliche Höhe', 252),

(2011, 'Friesischer Berg', 274),
(2017, 'Friesischer Berg', 239),
(2018, 'Friesischer Berg', 244),
(2019, 'Friesischer Berg', 204),
(2020, 'Friesischer Berg', 223),
(2021, 'Friesischer Berg', 258),

(2011, 'Weiche', 280),
(2017, 'Weiche', 170),
(2018, 'Weiche', 295),
(2019, 'Weiche', 216),
(2020, 'Weiche', 211),
(2021, 'Weiche', 163),

(2011, 'Südstadt', 173),
(2017, 'Südstadt', 192),
(2018, 'Südstadt', 242),
(2019, 'Südstadt', 216),
(2020, 'Südstadt', 231),
(2021, 'Südstadt', 204),

(2011, 'Sandberg', 229),
(2017, 'Sandberg', 182),
(2018, 'Sandberg', 191),
(2019, 'Sandberg', 211),
(2020, 'Sandberg', 227),
(2021, 'Sandberg', 252),

(2011, 'Jürgensby', 353),
(2017, 'Jürgensby', 256),
(2018, 'Jürgensby', 293),
(2019, 'Jürgensby', 266),
(2020, 'Jürgensby', 292),
(2021, 'Jürgensby', 328),

(2011, 'Fruerlund', 337),
(2017, 'Fruerlund', 360),
(2018, 'Fruerlund', 375),
(2019, 'Fruerlund', 416),
(2020, 'Fruerlund', 455),
(2021, 'Fruerlund', 370),

(2011, 'Mürwik', 623),
(2017, 'Mürwik', 504),
(2018, 'Mürwik', 590),
(2019, 'Mürwik', 569),
(2020, 'Mürwik', 601),
(2021, 'Mürwik', 484),

(2011, 'Engelsby', 392),
(2017, 'Engelsby', 233),
(2018, 'Engelsby', 286),
(2019, 'Engelsby', 228),
(2020, 'Engelsby', 285),
(2021, 'Engelsby', 247),

(2011, 'Tarup', 91),
(2017, 'Tarup', 44),
(2018, 'Tarup', 71),
(2019, 'Tarup', 56),
(2020, 'Tarup', 125),
(2021, 'Tarup', 114);



DROP TABLE housing_assistance_cases;

/* TABELLE 15 WOHNUNGSHILFEFÄLLE 2021 */
CREATE TABLE IF NOT EXISTS housing_assistance_cases (
  "id" SERIAL PRIMARY KEY,
  "year" INT,
  "district" VARCHAR NOT NULL,
  "general_consulting" INT,
	"notices_of_rent_arrears" INT,
	"termination_rent_arrears" INT,
	"termination_for_conduct" INT,
	"action_for_eviction" INT,
	"eviction_notice" INT,
	"eviction_carried" INT
);

INSERT INTO housing_assistance_cases (year, district, general_consulting, notices_of_rent_arrears, termination_rent_arrears, termination_for_conduct, action_for_eviction, eviction_notice, eviction_carried) VALUES
(2021, 'Altstadt', 15, NULL, NULL, NULL, NULL, 5, 5), 
(2021, 'Neustadt', 39, NULL, 4, NULL, 5, 9, 5),
(2021, 'Nordstadt', 175, NULL, 19, 4, 15, 20, 10),
(2021, 'Westliche Höhe', 60, NULL, NULL, NULL, 11, 7, 5),
(2021, 'Friesischer Berg', 28, NULL, 4, NULL, 6, NULL, NULL),
(2021, 'Weiche', 70, NULL, NULL, NULL, NULL, 4, NULL),
(2021, 'Südstadt', 40, NULL, 5, NULL, 6, NULL, NULL),
(2021, 'Sandberg', 28, NULL, 5, NULL, NULL, 8, 6),
(2021, 'Jürgensby', 61, 4, 14, NULL, 8, 4, 4),
(2021, 'Fruerlund', 54, NULL, NULL, NULL, NULL, NULL, NULL),
(2021, 'Mürwik', 44, 5, 6, NULL, 10, 5, 5),
(2021, 'Engelsby', 40, NULL, 7, NULL, 12, 7, 5),
(2021, 'Tarup', 24, NULL, NULL, NULL, NULL, NULL, NULL);



DROP TABLE households_at_risk_of_homelessness;

/* TABELLE 16 WOHNUNGSLOSIGKEIT BEDROHTE */
CREATE TABLE IF NOT EXISTS households_at_risk_of_homelessness (
  "id" SERIAL PRIMARY KEY,
  "year" INT,
  "district" VARCHAR NOT NULL,
  "residents" INT
--  "2017" INT,
--	"2018" INT,
--	"2019" INT,
--	"2020" INT,
--	"2021" INT
);

INSERT INTO households_at_risk_of_homelessness (year, district, residents) VALUES
(2017, 'Altstadt', 14),
(2018, 'Altstadt', 5),
(2019, 'Altstadt', 13),
(2020, 'Altstadt', 11),
(2021, 'Altstadt', NULL), 

(2017, 'Neustadt', 21),
(2018, 'Neustadt', 23),
(2019, 'Neustadt', 21),
(2020, 'Neustadt', 20),
(2021, 'Neustadt', 5),

(2017, 'Nordstadt', 31),
(2018, 'Nordstadt', 27),
(2019, 'Nordstadt', 27),
(2020, 'Nordstadt', 21),
(2021, 'Nordstadt', 15),

(2017, 'Westliche Höhe', 8),
(2018, 'Westliche Höhe', 11),
(2019, 'Westliche Höhe', 11),
(2020, 'Westliche Höhe', 9),
(2021, 'Westliche Höhe', 11),

(2017, 'Friesischer Berg', 15),
(2018, 'Friesischer Berg', 8),
(2019, 'Friesischer Berg', 10),
(2020, 'Friesischer Berg', 15),
(2021, 'Friesischer Berg', 6),

(2017, 'Weiche', 11),
(2018, 'Weiche', NULL),
(2019, 'Weiche', NULL),
(2020, 'Weiche', 6),
(2021, 'Weiche', NULL),

(2017, 'Südstadt', 9),
(2018, 'Südstadt', 7),
(2019, 'Südstadt', 16),
(2020, 'Südstadt', 16),
(2021, 'Südstadt', 6),

(2017, 'Sandberg', 9),
(2018, 'Sandberg', 13),
(2019, 'Sandberg', 16),
(2020, 'Sandberg', 14),
(2021, 'Sandberg', NULL),

(2017, 'Jürgensby', 14),
(2018, 'Jürgensby', 10),
(2019, 'Jürgensby', 15),
(2020, 'Jürgensby', 15),
(2021, 'Jürgensby', 8),

(2017, 'Fruerlund', 6),
(2018, 'Fruerlund', 9),
(2019, 'Fruerlund', 15),
(2020, 'Fruerlund', 8),
(2021, 'Fruerlund', NULL),

(2017, 'Mürwik', 28),
(2018, 'Mürwik', 12),
(2019, 'Mürwik', NULL),
(2020, 'Mürwik', 21),
(2021, 'Mürwik', 10),

(2017, 'Engelsby', 17),
(2018, 'Engelsby', 9),
(2019, 'Engelsby', 14),
(2020, 'Engelsby', 11),
(2021, 'Engelsby', 12),

(2017, 'Tarup', NULL),
(2018, 'Tarup', NULL),
(2019, 'Tarup', NULL),
(2020, 'Tarup', 4),
(2021, 'Tarup', NULL);
