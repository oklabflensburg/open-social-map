/* POSTGIS ERWEITERUNG LADEN */
CREATE EXTENSION IF NOT EXISTS postgis;


/* HILFSTABELLE STADTTEILEILE MIT NAMEN */
DROP TABLE IF EXISTS districts CASCADE;

CREATE TABLE IF NOT EXISTS districts (
  "id" INT,
  "name" VARCHAR,
  "geometry" geography(POLYGON, 4326),
  PRIMARY KEY(id)
);

CREATE UNIQUE INDEX IF NOT EXISTS districts_id_idx ON districts (id);

INSERT INTO districts VALUES
(1, 'Altstadt', NULL),
(2, 'Neustadt', NULL),
(3, 'Nordstadt', NULL),
(4, 'Westliche Höhe', NULL),
(5, 'Friesischer Berg', NULL),
(6, 'Weiche', NULL),
(7, 'Südstadt', NULL),
(8, 'Sandberg', NULL),
(9, 'Jürgensby', NULL),
(10, 'Fruerlund', NULL),
(11, 'Mürwik', NULL),
(12, 'Engelsby', NULL),
(13, 'Tarup', NULL);



/* HILFSTABELLE DER STATISTISCHEN HAUSHALTSFORMEN */
DROP TABLE IF EXISTS household_type CASCADE;

CREATE TABLE household_type (
  "id" INT,
  "label" VARCHAR,
  PRIMARY KEY(id)
);

CREATE UNIQUE INDEX IF NOT EXISTS household_type_id_idx ON household_type (id);

INSERT INTO household_type VALUES
(1, 'male_living_alone'),
(2, 'female_living_alone'),
(3, 'single_father'),
(4, 'single_mother'),
(5, 'couples_without_children'),
(6, 'couples_with_children'),
(7, 'other_way_of_life');



/* TABELLE 1 EINWOHNER IN STADTTEILEN 2011, 2017-2022 */
DROP TABLE IF EXISTS residents_by_districts;

CREATE TABLE IF NOT EXISTS residents_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS residents_by_districts_year_district_id_idx ON residents_by_districts (year, district_id);

INSERT INTO residents_by_districts (year, district_id, residents) VALUES
(2011, 1, 3323),
(2017, 1, 3807),
(2018, 1, 3815),
(2019, 1, 3793),
(2020, 1, 3739),
(2021, 1, 3866),
(2022, 1, 3907),

(2011, 2, 4039),
(2017, 2, 4698),
(2018, 2, 4730),
(2019, 2, 4770),
(2020, 2, 4725),
(2021, 2, 4850),
(2022, 2, 5052),

(2011, 3, 10844),
(2017, 3, 11995),
(2018, 3, 12073),
(2019, 3, 12160),
(2020, 3, 12291),
(2021, 3, 12525),
(2022, 3, 12532),

(2011, 4, 7884),
(2017, 4, 8042),
(2018, 4, 8083),
(2019, 4, 8034),
(2020, 4, 7884),
(2021, 4, 8015),
(2022, 4, 8109),

(2011, 5, 6632),
(2017, 5, 6836),
(2018, 5, 6676),
(2019, 5, 6696),
(2020, 5, 6645),
(2021, 5, 6644),
(2022, 5, 6731),

(2011, 6, 6613),
(2017, 6, 7350),
(2018, 6, 7431),
(2019, 6, 7435),
(2020, 6, 7350),
(2021, 6, 7472),
(2022, 6, 7679),

(2011, 7, 3960),
(2017, 7, 4079),
(2018, 7, 4166),
(2019, 7, 4170),
(2020, 7, 4065),
(2021, 7, 4205),
(2022, 7, 4324),

(2011, 8, 5949),
(2017, 8, 6513),
(2018, 8, 6583),
(2019, 8, 6731),
(2020, 8, 6729),
(2021, 8, 6702),
(2022, 8, 6906),

(2011, 9, 7761),
(2017, 9, 8362),
(2018, 9, 8431),
(2019, 9, 8424),
(2020, 9, 8325),
(2021, 9, 8371),
(2022, 9, 8562),

(2011, 10, 6242),
(2017, 10, 6754),
(2018, 10, 6779),
(2019, 10, 6909),
(2020, 10, 6880),
(2021, 10, 6794),
(2022, 10, 6853),

(2011, 11, 14257),
(2017, 11, 14740),
(2018, 11, 14930),
(2019, 11, 15214),
(2020, 11, 15283),
(2021, 11, 15301),
(2022, 11, 15350),

(2011, 12, 7829),
(2017, 12, 7548),
(2018, 12, 7581),
(2019, 12, 7487),
(2020, 12, 7468),
(2021, 12, 7536),
(2022, 12, 7661),

(2011, 13, 4115),
(2017, 13, 4727),
(2018, 13, 4909),
(2019, 13, 5097),
(2020, 13, 5347),
(2021, 13, 5596),
(2022, 13, 5675);



/* TABELLE 2 ANZAHL DER GEBURTEN IN STADTTEILEN 2011, 2017-2021 */
DROP TABLE IF EXISTS births_by_districts;

CREATE TABLE IF NOT EXISTS births_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "births" INT,
  "birth_rate" NUMERIC,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS births_by_districts_year_district_id_idx ON births_by_districts (year, district_id);

INSERT INTO births_by_districts (year, district_id, births, birth_rate) VALUES
(2011, 1, 29, 30.4),
(2017, 1, 39, 36.8),
(2018, 1, 34, 32.1),
(2019, 1, 41, 39.1),
(2020, 1, 41, 39.6),
(2021, 1, 31, 28.3),

(2011, 2, 53, 35.8),
(2017, 2, 59, 46.3),
(2018, 2, 55, 44.8),
(2019, 2, 62, 50.2),
(2020, 2, 55, 45.7),
(2021, 2, 61, 47.2),

(2011, 3, 61, 38.8),
(2017, 3, 132, 57.9),
(2018, 3, 134, 58.1),
(2019, 3, 142, 60.8),
(2020, 3, 145, 60.6),
(2021, 3, 124, 49.5),

(2011, 4, 41, 33.9),
(2017, 4, 67, 44.5),
(2018, 4, 81, 54.0),
(2019, 4, 84, 55.6),
(2020, 4, 75, 50.5),
(2021, 4, 69, 45.0),

(2011, 5, 56, 30.1),
(2017, 5, 54, 35.1),
(2018, 5, 69, 45.4),
(2019, 5, 74, 48.7),
(2020, 5, 56, 37.2),
(2021, 5, 55, 36.0),

(2011, 6, 119, 51.3),
(2017, 6, 67, 54.1),
(2018, 6, 76, 62.2),
(2019, 6, 64, 53.0),
(2020, 6, 57, 47.7),
(2021, 6, 55, 45.0),

(2011, 7, 46, 44.1),
(2017, 7, 55, 60.1),
(2018, 7, 57, 60.3),
(2019, 7, 52, 53.9),
(2020, 7, 46, 50.2),
(2021, 7, 51, 54.2),

(2011, 8, 122, 56.3),
(2017, 8, 48, 27.6),
(2018, 8, 51, 29.5),
(2019, 8, 57, 32.7),
(2020, 8, 63, 37.0),
(2021, 8, 58, 34.3),

(2011, 9, 39, 27.1),
(2017, 9, 88, 44.3),
(2018, 9, 71, 34.8),
(2019, 9, 80, 39.8),
(2020, 9, 81, 41.7),
(2021, 9, 73, 37.3),

(2011, 10, 45, 52.2),
(2017, 10, 68, 55.8),
(2018, 10, 68, 55.7),
(2019, 10, 65, 51.3),
(2020, 10, 76, 61.5),
(2021, 10, 59, 48.0),

(2011, 11, 32, 40.3),
(2017, 11, 133, 56.2),
(2018, 11, 108, 44.4),
(2019, 11, 160, 64.5),
(2020, 11, 129, 52.0),
(2021, 11, 145, 58.0),

(2011, 12, 53, 44.2),
(2017, 12, 59, 45.8),
(2018, 12, 63, 48.5),
(2019, 12, 65, 51.0),
(2020, 12, 67, 53.1),
(2021, 12, 76, 60.7),

(2011, 13, 78, 50.9),
(2017, 13, 42, 47.5),
(2018, 13, 44, 48.2),
(2019, 13, 61, 62.2),
(2020, 13, 49, 46.8),
(2021, 13, 41, 37.0);



/* TABELLE 3 ENTWICKLUNG DER ALTERSGRUPPEN */
DROP TABLE IF EXISTS age_groups_of_residents;

CREATE TABLE IF NOT EXISTS age_groups_of_residents (
  "id" SERIAL,
  "year" INT NOT NULL,
  "age_under_18" INT,
  "age_18_to_under_30" INT,
  "age_30_to_under_45" INT,
  "age_45_to_under_65" INT,
  "age_65_to_under_80" INT,
  "age_80_and_above" INT,
  PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS age_groups_of_residents_year_idx ON age_groups_of_residents (year);

INSERT INTO age_groups_of_residents (year, age_under_18, age_18_to_under_30, age_30_to_under_45, age_45_to_under_65, age_65_to_under_80, age_80_and_above) VALUES
(2011, 13401, 17944, 17376, 23067, 13144, 4581),
(2017, 14237, 20063, 17667, 24741, 13442, 5301),
(2018, 14524, 19992, 18089, 24757, 13244, 5581),
(2019, 14737, 19846, 18547, 24744, 13124, 5922),
(2020, 14739, 19237, 18869, 24674, 12962, 625),
(2021, 14947, 19330, 19457, 24785, 12885, 6478);



/* TABELLE 4 ALTENQUOTIENT IN STADTTEILEN 2011,2017-2021 */
DROP TABLE IF EXISTS age_ratio_by_districts;

CREATE TABLE IF NOT EXISTS age_ratio_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "quotient" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS age_ratio_by_districts_year_district_id_idx ON age_ratio_by_districts (year, district_id);

INSERT INTO age_ratio_by_districts (year, district_id, quotient) VALUES
(2011, 1, 14.8),
(2017, 1, 13.7),
(2018, 1, 14.3),
(2019, 1, 14.5),
(2020, 1, 14.6),
(2021, 1, 13.7),

(2011, 2, 12.6),
(2017, 2, 10.1),
(2018, 2, 10.4),
(2019, 2, 10.7),
(2020, 2, 10.9),
(2021, 2, 10.3),

(2011, 3, 24.5),
(2017, 3, 24.3),
(2018, 3, 24.5),
(2019, 3, 24.4),
(2020, 3, 24.4),
(2021, 3, 23.8),

(2011, 4, 40.2),
(2017, 4, 41.9),
(2018, 4, 41.3),
(2019, 4, 41.8),
(2020, 4, 43.0),
(2021, 4, 43.2),

(2011, 5, 29.7),
(2017, 5, 27.6),
(2018, 5, 28.6),
(2019, 5, 28.3),
(2020, 5, 29.6),
(2021, 5, 29.2),

(2011, 6, 30.0),
(2017, 6, 33.8),
(2018, 6, 33.6),
(2019, 6, 33.5),
(2020, 6, 34.4),
(2021, 6, 34.5),

(2011, 7, 33.8),
(2017, 7, 26.7),
(2018, 7, 25.7),
(2019, 7, 26.1),
(2020, 7, 26.4),
(2021, 7, 25.3),

(2011, 8, 26.8),
(2017, 8, 24.4),
(2018, 8, 24.2),
(2019, 8, 23.7),
(2020, 8, 23.0),
(2021, 8, 22.1),

(2011, 9, 27.2),
(2017, 9, 23.9),
(2018, 9, 23.7),
(2019, 9, 24.8),
(2020, 9, 25.0),
(2021, 9, 24.9),

(2011, 10, 35.8),
(2017, 10, 39.6),
(2018, 10, 39.6),
(2019, 10, 40.0),
(2020, 10, 40.5),
(2021, 10, 22.1),

(2011, 11, 49.6),
(2017, 11, 52.2),
(2018, 11, 52.0),
(2019, 11, 51.3),
(2020, 11, 51.8),
(2021, 11, 52.8),

(2011, 12, 32.0),
(2017, 12, 37.2),
(2018, 12, 36.9),
(2019, 12, 38.2),
(2020, 12, 38.5),
(2021, 12, 38.7),

(2011, 13, 28.8),
(2017, 13, 26.6),
(2018, 13, 26.2),
(2019, 13, 26.2),
(2020, 13, 26.6),
(2021, 13, 27.3);



/* TABELLE 5 EINWOHNER IN STADTTEILEN 2021 NACH ALTERGRUPPEN*/
DROP TABLE IF EXISTS age_groups_of_residents_by_districts;

CREATE TABLE IF NOT EXISTS age_groups_of_residents_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "age_under_18" INT,
  "age_18_to_under_30" INT,
  "age_30_to_under_45" INT,
  "age_45_to_under_65" INT,
  "age_65_to_under_80" INT,
  "age_80_and_older" INT,
  "age_0_to_under_7" INT,
  "age_60_and_older" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS age_groups_of_residents_by_districts_year_district_id_idx ON age_groups_of_residents_by_districts (year, district_id);

INSERT INTO age_groups_of_residents_by_districts (year, district_id, age_under_18, age_18_to_under_30, age_30_to_under_45, age_45_to_under_65, age_65_to_under_80, age_80_and_older, age_0_to_under_7, age_60_and_older) VALUES
(2021, 1, 360, 1338, 951, 804, 265, 148, 174, 565),
(2021, 2, 745, 1597, 1162, 977, 277, 92, 347, 551),
(2021, 3, 2164, 2349, 2722, 3348, 1494, 448, 946, 2642),
(2021, 4, 1241, 1387, 1485, 1912, 1276, 714, 501, 2451),
(2021, 5, 816, 1578, 1376, 1583, 840, 451, 337, 1681),
(2021, 6, 1533, 917, 1433, 2105, 987, 497, 549, 1958),
(2021, 7, 591, 996, 954, 950, 485, 229, 283, 953),
(2021, 8, 657, 2225, 1333, 1425, 627, 435, 291, 1380),
(2021, 9, 959, 2160, 1735, 2071, 997, 449, 402, 1938),
(2021, 10, 1017, 974, 1296, 1863, 1066, 578, 425, 2113),
(2021, 11, 2361, 1976, 2609, 3969, 2790, 1596, 943, 5460),
(2021, 12, 1256, 1025, 1293, 2250, 1164, 548, 497, 2292),
(2021, 13, 1244, 808, 1106, 1528, 617, 293, 453, 1214);



/* TABELLE 6 KINDER UND JUGENDLICHE BIS UNTER 18 IN STADTTEILEN 2011,2017-2021 */
DROP TABLE IF EXISTS children_age_under_18_by_districts;

CREATE TABLE IF NOT EXISTS children_age_under_18_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS children_age_under_18_by_districts_year_district_id_idx ON children_age_under_18_by_districts (year, district_id);

INSERT INTO children_age_under_18_by_districts (year, district_id, residents) VALUES
(2011, 1, 297),
(2017, 1, 361),
(2018, 1, 357),
(2019, 1, 385),
(2020, 1, 371),
(2021, 1, 360),

(2011, 2, 574),
(2017, 2, 663),
(2018, 2, 676),
(2019, 2, 734),
(2020, 2, 735),
(2021, 2, 745),

(2011, 3, 1842),
(2017, 3, 1968),
(2018, 3, 2028),
(2019, 3, 2068),
(2020, 3, 2111),
(2021, 3, 2164),

(2011, 4, 1151),
(2017, 4, 1205),
(2018, 4, 1236),
(2019, 4, 1265),
(2020, 4, 1209),
(2021, 4, 1241),

(2011, 5, 808),
(2017, 5, 833),
(2018, 5, 832),
(2019, 5, 866),
(2020, 5, 840),
(2021, 5, 816),

(2011, 6, 1455),
(2017, 6, 1531),
(2018, 6, 1552),
(2019, 6, 1518),
(2020, 6, 1500),
(2021, 6, 1533),

(2011, 7, 500),
(2017, 7, 558),
(2018, 7, 614),
(2019, 7, 581),
(2020, 7, 573),
(2021, 7, 591),

(2011, 8, 548),
(2017, 8, 572),
(2018, 8, 588),
(2019, 8, 616),
(2020, 8, 649),
(2021, 8, 657),

(2011, 9, 830),
(2017, 9, 987),
(2018, 9, 962),
(2019, 9, 992),
(2020, 9, 962),
(2021, 9, 959),

(2011, 10, 901),
(2017, 10, 1009),
(2018, 10, 1042),
(2019, 10, 1050),
(2020, 10, 1061),
(2021, 10, 1017),

(2011, 11, 2074),
(2017, 11, 2246),
(2018, 11, 2288),
(2019, 11, 2313),
(2020, 11, 2350),
(2021, 11, 2361),

(2011, 12, 1438),
(2017, 12, 1202),
(2018, 12, 1219),
(2019, 12, 1204),
(2020, 12, 1194),
(2021, 12, 1256),

(2011, 13, 969),
(2017, 13, 1101),
(2018, 13, 1127),
(2019, 13, 1142),
(2020, 13, 1181),
(2021, 13, 1244);



/* TABELLE 7 PERSONEN IM ALTER VON 18 BIS UNTER 65 JAHREN UND ANTEIL AN DER GESAMTBEVÖLKERUNG IN DEN STADTTEILEN 2011 UND 2017 BIS 2021 */
DROP TABLE IF EXISTS residents_age_18_to_under_65_by_districts;

CREATE TABLE IF NOT EXISTS residents_age_18_to_under_65_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS residents_age_18_to_under_65_by_districts_year_district_id_idx ON residents_age_18_to_under_65_by_districts (year, district_id);

INSERT INTO residents_age_18_to_under_65_by_districts (year, district_id, residents) VALUES
(2011, 1, 2644),
(2017, 1, 3039),
(2018, 1, 3037),
(2019, 1, 2988),
(2020, 1, 2949),
(2021, 1, 3093),

(2011, 2, 3091),
(2017, 2, 3680),
(2018, 2, 3686),
(2019, 2, 3660),
(2020, 2, 3610),
(2021, 2, 3736),

(2011, 3, 7282),
(2017, 3, 8117),
(2018, 3, 8127),
(2019, 3, 8173),
(2020, 3, 8234),
(2021, 3, 8419),

(2011, 4, 4848),
(2017, 4, 4871),
(2018, 4, 4896),
(2019, 4, 4817),
(2020, 4, 4717),
(2021, 4, 4784),

(2011, 5, 4519),
(2017, 5, 4735),
(2018, 5, 4577),
(2019, 5, 4571),
(2020, 5, 4509),
(2021, 5, 4537),

(2011, 6, 4004),
(2017, 6, 4400),
(2018, 6, 4449),
(2019, 6, 4481),
(2020, 6, 4397),
(2021, 6, 4455),

(2011, 7, 2603),
(2017, 7, 2797),
(2018, 7, 2843),
(2019, 7, 2865),
(2020, 7, 2778),
(2021, 7, 2900),

(2011, 8, 4289),
(2017, 8, 4821),
(2018, 8, 4874),
(2019, 8, 4984),
(2020, 8, 4980),
(2021, 8, 4983),

(2011, 9, 5484),
(2017, 9, 5999),
(2018, 9, 6081),
(2019, 9, 5993),
(2020, 9, 5922),
(2021, 9, 5966),

(2011, 10, 3966),
(2017, 10, 4145),
(2018, 10, 4144),
(2019, 10, 4221),
(2020, 10, 4172),
(2021, 10, 4133),

(2011, 11, 8257),
(2017, 11, 8303),
(2018, 11, 8404),
(2019, 11, 8627),
(2020, 11, 8617),
(2021, 11, 8554),

(2011, 12, 4892),
(2017, 12, 4674),
(2018, 12, 4691),
(2019, 12, 4589),
(2020, 12, 4575),
(2021, 12, 4568),

(2011, 13, 2464),
(2017, 13, 2887),
(2018, 13, 3027),
(2019, 13, 3166),
(2020, 13, 3318),
(2021, 13, 3442);



/* TABELLE 8 PERSONEN 65 JAHRE UND ÄLTER IN STADTTEILEN 2011,2017-2021 */
DROP TABLE IF EXISTS residents_age_65_and_above_by_districts;

CREATE TABLE IF NOT EXISTS residents_age_65_and_above_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS residents_age_65_and_above_by_districts_year_district_id_idx ON residents_age_65_and_above_by_districts (year, district_id);

INSERT INTO residents_age_65_and_above_by_districts (year, district_id, residents) VALUES
(2011, 1, 382),
(2017, 1, 407),
(2018, 1, 421),
(2019, 1, 420),
(2020, 1, 419),
(2021, 1, 413),

(2011, 2, 374),
(2017, 2, 355),
(2018, 2, 368),
(2019, 2, 376),
(2020, 2, 380),
(2021, 2, 369),

(2011, 3, 1720),
(2017, 3, 1910),
(2018, 3, 1918),
(2019, 3, 1919),
(2020, 3, 1946),
(2021, 3, 1942),

(2011, 4, 1885),
(2017, 4, 1966),
(2018, 4, 1951),
(2019, 4, 1952),
(2020, 4, 1958),
(2021, 4, 1990),

(2011, 5, 1305),
(2017, 5, 1268),
(2018, 5, 1267),
(2019, 5, 1259),
(2020, 5, 1296),
(2021, 5, 1291),

(2011, 6, 1154),
(2017, 6, 1419),
(2018, 6, 1430),
(2019, 6, 1436),
(2020, 6, 1453),
(2021, 6, 1484),

(2011, 7, 857),
(2017, 7, 724),
(2018, 7, 709),
(2019, 7, 724),
(2020, 7, 714),
(2021, 7, 714),

(2011, 8, 1112),
(2017, 8, 1120),
(2018, 8, 1121),
(2019, 8, 1131),
(2020, 8, 1100),
(2021, 8, 1062),

(2011, 9, 1447),
(2017, 9, 1376),
(2018, 9, 1388),
(2019, 9, 1439),
(2020, 9, 1441),
(2021, 9, 1446),

(2011, 10, 1375),
(2017, 10, 1600),
(2018, 10, 1593),
(2019, 10, 1638),
(2020, 10, 1647),
(2021, 10, 1644),

(2011, 11, 3926),
(2017, 11, 4187),
(2018, 11, 4233),
(2019, 11, 4269),
(2020, 11, 4311),
(2021, 11, 4386),

(2011, 12, 1499),
(2017, 12, 1672),
(2018, 12, 1671),
(2019, 12, 1694),
(2020, 12, 1699),
(2021, 12, 1712),

(2011, 13, 682),
(2017, 13, 739),
(2018, 13, 755),
(2019, 13, 789),
(2020, 13, 848),
(2021, 13, 910);



/* TABELLE 9 PERONEN MIT MIRGRATIONSHINTERGRUND 2021 */
DROP TABLE IF EXISTS migration_background_by_districts;

CREATE TABLE IF NOT EXISTS migration_background_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "foreign_citizenship" INT,
  "german_citizenship" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS migration_background_by_districts_year_district_id_idx ON migration_background_by_districts (year, district_id);

INSERT INTO migration_background_by_districts (year, district_id, foreign_citizenship, german_citizenship) VALUES
(2021, 1, 999, 375),
(2021, 2, 1748, 443),
(2021, 3, 4109, 1673),
(2021, 4, 1158, 991),
(2021, 5, 907, 778),
(2021, 6, 933, 1222),
(2021, 7, 919, 517),
(2021, 8, 1117, 601),
(2021, 9, 1273, 699),
(2021, 10, 645, 927),
(2021, 11, 1623, 2082),
(2021, 12, 946, 1335),
(2021, 13, 244, 865);



/* TABELLE 10, NICHT DEUTSCHE NACH AUFENTHALTSSTATUS */
DROP TABLE IF EXISTS non_german_nationals_residence_status;

CREATE TABLE IF NOT EXISTS non_german_nationals_residence_status (
  "id" SERIAL,
	"year" INT,
	"permanent_residency" INT,
	"permanent_residency_according_eu_freedom_movement_act" INT,
	"permanent_residency_third_country_nationality" INT,
	"without_permanent_residency" INT,
	"asylum_seeker" INT,
	"suspension_of_deportation" INT,
  PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS non_german_nationals_residence_status_year_idx ON non_german_nationals_residence_status (year);

INSERT INTO non_german_nationals_residence_status (year, permanent_residency, permanent_residency_according_eu_freedom_movement_act, permanent_residency_third_country_nationality, without_permanent_residency, asylum_seeker, suspension_of_deportation) VALUES 
(2016, 6527, 5029, 1498, 2138, 790, 146),
(2017, 7995, 6466, 1529, 3234, 424, 186),
(2018, 8363, 6865, 1498, 3987, 366, 214),
(2019, 8117, 6569, 1548, 4585, 287, 275),
(2020, 9510, 7842, 1668, 4747, 204, 252),
(2021, 10178, 8314, 1864, 4868, 143, 276);



/* TABELLE 11 SOZIALVERSICHERUNGSPFLICHTIG BESCHÄFTIGTE 2017-2021 */
DROP TABLE IF EXISTS employed_with_pension_insurance_by_districts;

CREATE TABLE IF NOT EXISTS employed_with_pension_insurance_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  "employment_rate" NUMERIC,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS employed_with_pension_insurance_by_districts_year_district_id_idx ON employed_with_pension_insurance_by_districts (year, district_id);

INSERT INTO employed_with_pension_insurance_by_districts (year, district_id, residents, employment_rate) VALUES
(2017, 1, 1336, 43.0),
(2018, 1, 1360, 44.2),
(2019, 1, 1424, 46.7),
(2020, 1, 1409, 47.0),
(2021, 1, 1593, 50.6),

(2017, 2, 1505, 39.6),
(2018, 2, 1614, 42.5),
(2019, 2, 1618, 42.7),
(2020, 2, 1644, 43.9),
(2021, 2, 1768, 46.0),

(2017, 3, 3599, 42.6),
(2018, 3, 3682, 43.7),
(2019, 3, 3834, 45.2),
(2020, 3, 3850, 45.1),
(2021, 3, 4164, 47.5),

(2017, 4, 2388, 47.2),
(2018, 4, 2472, 48.6),
(2019, 4, 2452, 48.8),
(2020, 4, 2394, 48.6),
(2021, 4, 2451, 49.1),

(2017, 5, 2393, 49.3),
(2018, 5, 2415, 51.4),
(2019, 5, 2454, 52.2),
(2020, 5, 2457, 52.8),
(2021, 5, 2517, 53.7),

(2017, 6, 2500, 53.6),
(2018, 6, 2531, 53.8),
(2019, 6, 2551, 54.0),
(2020, 6, 2488, 53.4),
(2021, 6, 2566, 54.6),

(2017, 7, 1507, 52.5),
(2018, 7, 1550, 53.1),
(2019, 7, 1590, 54.3),
(2020, 7, 1583, 55.7),
(2021, 7, 1681, 56.5),

(2017, 8, 2177, 44.1),
(2018, 8, 2265, 45.5),
(2019, 8, 2418, 47.5),
(2020, 8, 2445, 48.2),
(2021, 8, 2598, 51.2),

(2017, 9, 2993, 48.5),
(2018, 9, 3085, 49.4),
(2019, 9, 3091, 50.3),
(2020, 9, 3096, 51.0),
(2021, 9, 3222, 52.6),

(2017, 10, 2299, 53.3),
(2018, 10, 2320, 53.8),
(2019, 10, 2410, 54.8),
(2020, 10, 2337, 53.9),
(2021, 10, 2406, 56.1),

(2017, 11, 4381, 50.2),
(2018, 11, 4471, 50.6),
(2019, 11, 4627, 51.3),
(2020, 11, 4619, 51.4),
(2021, 11, 4740, 52.9),

(2017, 12, 2588, 52.6),
(2018, 12, 2623, 53.4),
(2019, 12, 2614, 54.4),
(2020, 12, 2580, 54.0),
(2021, 12, 2676, 56.0),

(2017, 13, 1627, 52.6),
(2018, 13, 1700, 53.0),
(2019, 13, 1779, 53.2),
(2020, 13, 1887, 53.6),
(2021, 13, 1972, 53.8);



/* TABELLE 12 ANTEIL ARBEITSLOSE 18 BIS 65 IN DEN JAHREN 2017-2021 */
DROP TABLE IF EXISTS unemployed_residents_by_districts;

CREATE TABLE IF NOT EXISTS unemployed_residents_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS unemployed_residents_by_districts_year_district_id_idx ON unemployed_residents_by_districts (year, district_id);

INSERT INTO unemployed_residents_by_districts (year, district_id, residents) VALUES
(2017, 1, 233),
(2018, 1, 227),
(2019, 1, 218),
(2020, 1, 252),
(2021, 1, 226),

(2017, 2, 390),
(2018, 2, 360),
(2019, 2, 343),
(2020, 2, 450),
(2021, 2, 383),

(2017, 3, 933),
(2018, 3, 856),
(2019, 3, 754),
(2020, 3, 927),
(2021, 3, 823),

(2017, 4, 281),
(2018, 4, 259),
(2019, 4, 270),
(2020, 4, 350),
(2021, 4, 304),

(2017, 5, 300),
(2018, 5, 276),
(2019, 5, 251),
(2020, 5, 288),
(2021, 5, 286),

(2017, 6, 229),
(2018, 6, 204),
(2019, 6, 202),
(2020, 6, 230),
(2021, 6, 205),

(2017, 7, 241),
(2018, 7, 239),
(2019, 7, 213),
(2020, 7, 238),
(2021, 7, 226),

(2017, 8, 292),
(2018, 8, 304),
(2019, 8, 296),
(2020, 8, 359),
(2021, 8, 327),

(2017, 9, 452),
(2018, 9, 456),
(2019, 9, 431),
(2020, 9, 567),
(2021, 9, 427),

(2017, 10, 278),
(2018, 10, 278),
(2019, 10, 241),
(2020, 10, 335),
(2021, 10, 303),

(2017, 11, 512),
(2018, 11, 517),
(2019, 11, 477),
(2020, 11, 614),
(2021, 11, 532),

(2017, 12, 266),
(2018, 12, 265),
(2019, 12, 248),
(2020, 12, 310),
(2021, 12, 276),

(2017, 13, 52),
(2018, 13, 53),
(2019, 13, 54),
(2020, 13, 98),
(2021, 13, 85);



/* TABELLE 13 ANZAHL DER ARBEITSLOSEN NACH AUSGEWÄHLTEN MERKMALEN IN DEN STADTTEILEN */
DROP TABLE IF EXISTS unemployed_residents_by_districts_categorized;

CREATE TABLE IF NOT EXISTS unemployed_residents_by_districts_categorized (
  "id" SERIAL,
  "year" INT,
	"district_id" INT,
  "total" INT,
  "unemployed_total" INT,
  "percentage_of_total" NUMERIC,
  "percentage_sgb_iii" NUMERIC,
  "percentage_sgb_ii" NUMERIC,
  "percentage_foreign_citizenship" NUMERIC,
  "percentage_female" NUMERIC,
  "percentage_age_under_25" NUMERIC,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS unemployed_residents_by_districts_categorized_year_district_id_idx ON unemployed_residents_by_districts_categorized (year, district_id);

INSERT INTO unemployed_residents_by_districts_categorized (year,district_id,unemployed_total,percentage_of_total,percentage_sgb_iii,percentage_sgb_ii,percentage_foreign_citizenship,percentage_female,percentage_age_under_25) VALUES
(2021,1,226,5.1,31.0,69.0,23.0,41.2,11.9),
(2021,2,383,8.6,20.1,79.9,30.3,34.7,12.0),
(2021,3,823,18.5,21.7,78.3,34.9,42.5,8.9),
(2021,4,304,6.8,31.6,68.4,27.3,36.8,11.5),
(2021,5,286,6.4,34.6,65.4,21.7,40.2,15.0),
(2021,6,205,4.6,44.9,55.1,23.4,42.4,12.2),
(2021,7,226,5.1,26.1,73.9,23.9,43.8,10.2),
(2021,8,327,7.4,30.6,69.4,19.3,33.6,15.0),
(2021,9,427,9.6,27.2,72.8,21.8,38.6,14.3),
(2021,10,303,6.8,30.7,69.3,17.5,45.5,6.9),
(2021,11,532,12.0,37.0,63.0,20.9,48.7,10.9),
(2021,12,276,6.2,33.0,67.0,25.0,46.4,10.5),
(2021,13,85,1.9,48.2,51.8,17.6,54.1,12.9),
(2021,NULL,37,0.8,NULL,NULL,NULL,NULL,NULL);



/* TABELLE 14 WOHNGELDEMPFÄNGERINNEN IN STADTTEILEN 2011,2017-2021 */
DROP TABLE IF EXISTS housing_benefit_by_districts;

CREATE TABLE IF NOT EXISTS housing_benefit_by_districts (
  "id" SERIAL,
  "year" INT,
	"district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS housing_benefit_by_districts_year_district_id_idx ON housing_benefit_by_districts (year, district_id);

INSERT INTO housing_benefit_by_districts (year, district_id, residents) VALUES 
(2011, 1, 130),
(2017, 1, 96),
(2018, 1, 133),
(2019, 1, 119),
(2020, 1, 92),
(2021, 1, 116),

(2011, 2, 207),
(2017, 2, 114),
(2018, 2, 165),
(2019, 2, 218),
(2020, 2, 172),
(2021, 2, 172),

(2011, 3, 584),
(2017, 3, 413),
(2018, 3, 165),
(2019, 3, 571),
(2020, 3, 722),
(2021, 3, 523),

(2011, 4, 228),
(2017, 4, 194),
(2018, 4, 212),
(2019, 4, 180),
(2020, 4, 189),
(2021, 4, 252),

(2011, 5, 274),
(2017, 5, 239),
(2018, 5, 244),
(2019, 5, 204),
(2020, 5, 223),
(2021, 5, 258),

(2011, 6, 280),
(2017, 6, 170),
(2018, 6, 295),
(2019, 6, 216),
(2020, 6, 211),
(2021, 6, 163),

(2011, 7, 173),
(2017, 7, 192),
(2018, 7, 242),
(2019, 7, 216),
(2020, 7, 231),
(2021, 7, 204),

(2011, 8, 229),
(2017, 8, 182),
(2018, 8, 191),
(2019, 8, 211),
(2020, 8, 227),
(2021, 8, 252),

(2011, 9, 353),
(2017, 9, 256),
(2018, 9, 293),
(2019, 9, 266),
(2020, 9, 292),
(2021, 9, 328),

(2011, 10, 337),
(2017, 10, 360),
(2018, 10, 375),
(2019, 10, 416),
(2020, 10, 455),
(2021, 10, 370),

(2011, 11, 623),
(2017, 11, 504),
(2018, 11, 590),
(2019, 11, 569),
(2020, 11, 601),
(2021, 11, 484),

(2011, 12, 392),
(2017, 12, 233),
(2018, 12, 286),
(2019, 12, 228),
(2020, 12, 285),
(2021, 12, 247),

(2011, 13, 91),
(2017, 13, 44),
(2018, 13, 71),
(2019, 13, 56),
(2020, 13, 125),
(2021, 13, 114);



/* TABELLE 15 WOHNUNGSHILFEFÄLLE IN STADTTEILEN 2021 */
DROP TABLE IF EXISTS housing_assistance_cases_by_districts;

CREATE TABLE IF NOT EXISTS housing_assistance_cases_by_districts (
  "id" SERIAL,
  "year" INT,
  "district_id" INT,
  "general_consulting" INT,
	"notices_of_rent_arrears" INT,
	"termination_rent_arrears" INT,
	"termination_for_conduct" INT,
	"action_for_eviction" INT,
	"eviction_notice" INT,
	"eviction_carried" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS housing_assistance_cases_by_districts_year_district_id_idx ON housing_assistance_cases_by_districts (year, district_id);

INSERT INTO housing_assistance_cases_by_districts (year, district_id, general_consulting, notices_of_rent_arrears, termination_rent_arrears, termination_for_conduct, action_for_eviction, eviction_notice, eviction_carried) VALUES
(2021, 1, 15, NULL, NULL, NULL, NULL, 5, 5),
(2021, 2, 39, NULL, 4, NULL, 5, 9, 5),
(2021, 3, 175, NULL, 19, 4, 15, 20, 10),
(2021, 4, 60, NULL, NULL, NULL, 11, 7, 5),
(2021, 5, 28, NULL, 4, NULL, 6, NULL, NULL),
(2021, 6, 70, NULL, NULL, NULL, NULL, 4, NULL),
(2021, 7, 40, NULL, 5, NULL, 6, NULL, NULL),
(2021, 8, 28, NULL, 5, NULL, NULL, 8, 6),
(2021, 9, 61, 4, 14, NULL, 8, 4, 4),
(2021, 10, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(2021, 11, 44, 5, 6, NULL, 10, 5, 5),
(2021, 12, 40, NULL, 7, NULL, 12, 7, 5),
(2021, 13, 24, NULL, NULL, NULL, NULL, NULL, NULL);



/* TABELLE 16 WOHNUNGSLOSIGKEIT BEDROHTE */
DROP TABLE IF EXISTS households_at_risk_of_homelessness_by_districts;

CREATE TABLE IF NOT EXISTS households_at_risk_of_homelessness_by_districts (
  "id" SERIAL,
  "year" INT,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS households_at_risk_of_homelessness_by_districts_year_district_id_idx ON households_at_risk_of_homelessness_by_districts (year, district_id);

INSERT INTO households_at_risk_of_homelessness_by_districts (year, district_id, residents) VALUES
(2017, 1, 14),
(2018, 1, 5),
(2019, 1, 13),
(2020, 1, 11),
(2021, 1, NULL),

(2017, 2, 21),
(2018, 2, 23),
(2019, 2, 21),
(2020, 2, 20),
(2021, 2, 5),

(2017, 3, 31),
(2018, 3, 27),
(2019, 3, 27),
(2020, 3, 21),
(2021, 3, 15),

(2017, 4, 8),
(2018, 4, 11),
(2019, 4, 11),
(2020, 4, 9),
(2021, 4, 11),

(2017, 5, 15),
(2018, 5, 8),
(2019, 5, 10),
(2020, 5, 15),
(2021, 5, 6),

(2017, 6, 11),
(2018, 6, NULL),
(2019, 6, NULL),
(2020, 6, 6),
(2021, 6, NULL),

(2017, 7, 9),
(2018, 7, 7),
(2019, 7, 16),
(2020, 7, 16),
(2021, 7, 6),

(2017, 8, 9),
(2018, 8, 13),
(2019, 8, 16),
(2020, 8, 14),
(2021, 8, NULL),

(2017, 9, 14),
(2018, 9, 10),
(2019, 9, 15),
(2020, 9, 15),
(2021, 9, 8),

(2017, 10, 6),
(2018, 10, 9),
(2019, 10, 15),
(2020, 10, 8),
(2021, 10, NULL),

(2017, 11, 28),
(2018, 11, 12),
(2019, 11, NULL),
(2020, 11, 21),
(2021, 11, 10),

(2017, 12, 17),
(2018, 12, 9),
(2019, 12, 14),
(2020, 12, 11),
(2021, 12, 12),

(2017, 13, NULL),
(2018, 13, NULL),
(2019, 13, NULL),
(2020, 13, 4),
(2021, 13, NULL);



/* TABELLE 17 BEZUG VON LEISTUNGEN NACH SGB II, III UND XIL IN STADTTEILEN 2021 */
DROP TABLE IF EXISTS beneficiaries_age_15_to_under_65_by_districts;

CREATE TABLE IF NOT EXISTS beneficiaries_age_15_to_under_65_by_districts (
  "id" SERIAL,
  "year" INT,
  "district_id" INT,
  "total" INT,
  "percentage_of_total_residents" NUMERIC,
  "employable_with_benefits" INT,
  "unemployment_benefits" INT,
  "basic_income" INT,
  "assisting_benefits" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS beneficiaries_age_15_to_under_65_by_districts_year_district_id_idx ON beneficiaries_age_15_to_under_65_by_districts (year, district_id);

INSERT INTO beneficiaries_age_15_to_under_65_by_districts (year,district_id,total,percentage_of_total_residents,employable_with_benefits,unemployment_benefits,basic_income,assisting_benefits) VALUES
(2021,1,517,16.5,377,70,55,15),
(2021,2,1.034,27.0,809,77,122,26),
(2021,3,2.109,24.1,1.585,179,283,62),
(2021,4,715,14.4,518,96,74,27),
(2021,5,741,15.8,514,99,88,40),
(2021,6,462,9.8,324,92,37,9),
(2021,7,600,20.4,444,59,80,17),
(2021,8,776,15.3,567,100,81,28),
(2021,9,1.115,18.4,837,116,126,36),
(2021,10,828,19.3,569,93,138,28),
(2021,11,1.350,15.2,988,197,137,28),
(2021,12,693,14.5,518,91,69,15),
(2021,13,188,5.2,120,41,23,4),
(2021,NULL,451,NULL,53,9,337,52);



/* TABELLE 18 REGELLEISTUNGSBERECHTIGTE NACH SGB II 2018-2021 */
DROP TABLE IF EXISTS beneficiaries_by_districts;

CREATE TABLE IF NOT EXISTS beneficiaries_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS beneficiaries_by_districts_year_district_id_idx ON beneficiaries_by_districts (year, district_id);

INSERT INTO beneficiaries_by_districts (year, district_id, residents) VALUES
(2018, 1, 554),
(2019, 1, 532),
(2020, 1, 502),
(2021, 1, 475),

(2018, 2, 1097),
(2019, 2, 1094),
(2020, 2, 1063),
(2021, 2, 1116),

(2018, 3, 2481),
(2019, 3, 2352),
(2020, 3, 2241),
(2021, 3, 2170),

(2018, 4, 729),
(2019, 4, 734),
(2020, 4, 736),
(2021, 4, 733),

(2018, 5, 753),
(2019, 5, 703),
(2020, 5, 647),
(2021, 5, 670),

(2018, 6, 512),
(2019, 6, 483),
(2020, 6, 505),
(2021, 6, 494),

(2018, 7, 669),
(2019, 7, 665),
(2020, 7, 622),
(2021, 7, 615),

(2018, 8, 672),
(2019, 8, 665),
(2020, 8, 645),
(2021, 8, 706),

(2018, 9, 1102),
(2019, 9, 1082),
(2020, 9, 1072),
(2021, 9, 1048),

(2018, 10, 766),
(2019, 10, 769),
(2020, 10, 780),
(2021, 10, 792),

(2018, 11, 1474),
(2019, 11, 1466),
(2020, 11, 1484),
(2021, 11, 1429),

(2018, 12, 773),
(2019, 12, 763),
(2020, 12, 707),
(2021, 12, 754),

(2018, 13, 74),
(2019, 13, 81),
(2020, 13, 105),
(2021, 13, 150);



/* TABELLE 19 REGELLEISTUNGSBERECHTIGTE NACH SGB II 2021 */
DROP TABLE IF EXISTS beneficiaries_characteristics_by_districts;

CREATE TABLE IF NOT EXISTS beneficiaries_characteristics_by_districts (
  "id" SERIAL,
  "district_id" INT,
  "year" INT,
  "unemployability" INT,
  "employability" INT,
  "percentage_females" NUMERIC,
  "percenatage_single_parents" NUMERIC,
  "percentage_foreign_citizenship" NUMERIC,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS beneficiaries_characteristics_by_districts_year_district_id_idx ON beneficiaries_characteristics_by_districts (year, district_id);

INSERT INTO beneficiaries_characteristics_by_districts (district_id, year, unemployability, employability, percentage_females, percenatage_single_parents, percentage_foreign_citizenship) VALUES
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



/* TABELLE 20 NICHTERWERBSFÄHIGE LEISTUNGSBERECHTIGTE
 * IN BEDARFSGEMEINSCHAFTEN IN STADTTEILEN 2018-2021 */
DROP TABLE IF EXISTS inactive_beneficiaries_in_households_by_districts;

CREATE TABLE IF NOT EXISTS inactive_beneficiaries_in_households_by_districts (
  "id" SERIAL,
  "year" INT NOT NULL,
  "district_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS inactive_beneficiaries_in_households_by_districts_year_district_id_idx ON inactive_beneficiaries_in_households_by_districts (year, district_id);

INSERT INTO inactive_beneficiaries_in_households_by_districts (year, district_id, residents) VALUES
(2018, 1, 115),
(2019, 1, 124),
(2020, 1, 118),
(2021, 1, 98),

(2018, 2, 262),
(2019, 2, 297),
(2020, 2, 299),
(2021, 2, 307),

(2018, 3, 675),
(2019, 3, 659),
(2020, 3, 626),
(2021, 3, 585),

(2018, 4, 212),
(2019, 4, 228),
(2020, 4, 214),
(2021, 4, 215),

(2018, 5, 192),
(2019, 5, 188),
(2020, 5, 161),
(2021, 5, 156),

(2018, 6, 166),
(2019, 6, 155),
(2020, 6, 176),
(2021, 6, 170),

(2018, 7, 192),
(2019, 7, 202),
(2020, 7, 187),
(2021, 7, 171),

(2018, 8, 107),
(2019, 8, 124),
(2020, 8, 120),
(2021, 8, 139),

(2018, 9, 207),
(2019, 9, 218),
(2020, 9, 231),
(2021, 9, 211),

(2018, 10, 215),
(2019, 10, 232),
(2020, 10, 231),
(2021, 10, 223),

(2018, 11, 447),
(2019, 11, 487),
(2020, 11, 470),
(2021, 11, 441),

(2018, 12, 252),
(2019, 12, 271),
(2020, 12, 243),
(2021, 12, 236),

(2018, 13, 23),
(2019, 13, 24),
(2020, 13, 31),
(2021, 13, 30);



/* TABELLE 21 GRUNDSICHERUNG AUF STADTTEILEBENE 2021 */
DROP TABLE IF EXISTS basic_benefits_income_by_districts;

CREATE TABLE IF NOT EXISTS basic_benefits_income_by_districts (
  "id" SERIAL,
  "year" INT,
  "district_id" INT,
  "male" INT,
  "female" INT,
  "age_18_to_under_65" INT,
  "age_65_and_above" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

CREATE INDEX IF NOT EXISTS basic_benefits_income_by_districts_year_district_id_idx ON basic_benefits_income_by_districts (year, district_id);

INSERT INTO basic_benefits_income_by_districts (year, district_id, male, female, age_18_to_under_65, age_65_and_above) VALUES
(2021, 1, 245, 158, 55, 55),
(2021, 2, 61, 49, 122, 76),
(2021, 3, 112, 86, 283, 248),
(2021, 4, 287, 244, 74, 79),
(2021, 5, 74, 79, 88, 78),
(2021, 6, 76, 90, 37, 45),
(2021, 7, 37, 45, 80, 65),
(2021, 8, 75, 70, 81, 74),
(2021, 9, 77, 78, 126, 104),
(2021, 10, 111, 119, 138, 110),
(2021, 11, 116, 132, 137, 164),
(2021, 12, 140, 161, 69, 99),
(2021, 13, 77, 91, 23, 28);



/* TABELLE 22 IN SCHULDNERBERATUNG BERATENE PERSONEN */
DROP TABLE IF EXISTS debt_counseling_residents;

CREATE TABLE IF NOT EXISTS debt_counseling_residents (
  "id" SERIAL,
  "year" INT,
  "household_type_id" INT,
  "residents" INT,
  PRIMARY KEY(id),
  FOREIGN KEY(household_type_id) REFERENCES household_type(id)
);

CREATE INDEX IF NOT EXISTS debt_counseling_residents_year_household_type_id_idx ON debt_counseling_residents (year, household_type_id);

INSERT INTO debt_counseling_residents (year, household_type_id, residents) VALUES
(2021, 1, 767),
(2021, 2, 403),
(2021, 3, NULL),
(2021, 4, 381),
(2021, 5, 350),
(2021, 6, 528),
(2021, 7, 60);



/* TABELLE 23 HILFEN ZUR ERZIEHUNG */
DROP TABLE IF EXISTS child_education_support CASCADE;

CREATE TABLE IF NOT EXISTS child_education_support (
  "id" SERIAL,
  "year" INT,
  "educational_assistance" INT,
  "parenting_counselor" INT,
  "pedagogical_family_assistance" INT,
  "child_day_care_facility" INT,
  "full_time_care" INT,
  "residential_education" INT,
  "integration_assistance" INT,
  "additional_support" INT,
  PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS child_education_support_year_idx ON child_education_support (year);

INSERT INTO child_education_support (year, educational_assistance, parenting_counselor, pedagogical_family_assistance, child_day_care_facility, full_time_care, residential_education, integration_assistance, additional_support) VALUES
(2017, 23, 39, 142, 19, 137, 134, 126, 10),
(2018, 13, 45, 151, 22, 116, 123, 151, 7),
(2019, 7, 39, 154, 27, 106, 120, 141, 6),
(2020, 9, 31, 144, 25, 99, 145, 152, 3),
(2021, 3, 44, 148, 19, 95, 168, 149, 4);
