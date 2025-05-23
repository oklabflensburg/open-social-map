/* HILFSTABELLE STADTTEILEILE FLENSBURG */
DROP TABLE IF EXISTS fl_district CASCADE;

CREATE TABLE IF NOT EXISTS fl_district (
  id INT,
  name VARCHAR NOT NULL,
  geom GEOMETRY(POLYGON, 4326),
  PRIMARY KEY(id)
);

CREATE UNIQUE INDEX IF NOT EXISTS fl_district_id_idx ON fl_district (id);

INSERT INTO fl_district VALUES
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
DROP TABLE IF EXISTS fl_household_type CASCADE;

CREATE TABLE IF NOT EXISTS fl_household_type (
  id INT PRIMARY KEY NOT NULL,
  label VARCHAR NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS fl_household_type_id_idx ON fl_household_type (id);

INSERT INTO fl_household_type VALUES
(1, 'male_living_alone'),
(2, 'female_living_alone'),
(3, 'single_father'),
(4, 'single_mother'),
(5, 'couples_without_children'),
(6, 'couples_with_children'),
(7, 'other_way_of_life');



/* TABELLE 1 EINWOHNER NACH STADTTEILEN 2011, 2017-2022 */
DROP TABLE IF EXISTS fl_residents_by_district;

CREATE TABLE IF NOT EXISTS fl_residents_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_residents_by_district_year_district_id_idx ON fl_residents_by_district (year, district_id);

INSERT INTO fl_residents_by_district (year, district_id, residents) VALUES
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



/* TABELLE 2 ANZAHL DER GEBURTEN NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_births_by_district;

CREATE TABLE IF NOT EXISTS fl_births_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  births INT,
  birth_rate NUMERIC,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_births_by_district_year_district_id_idx ON fl_births_by_district (year, district_id);

INSERT INTO fl_births_by_district (year, district_id, births, birth_rate) VALUES
(2011, 1, 29, 30.4),
(2012, 1, 46, 48.1),
(2017, 1, 39, 36.8),
(2018, 1, 34, 32.1),
(2019, 1, 41, 39.1),
(2020, 1, 41, 39.6),
(2021, 1, 31, 28.3),
(2022, 1, 30, 26.5),

(2011, 2, 53, 35.8),
(2012, 2, 56, 52.5),
(2017, 2, 59, 46.3),
(2018, 2, 55, 44.8),
(2019, 2, 62, 50.2),
(2020, 2, 55, 45.7),
(2021, 2, 61, 47.2),
(2022, 2, 54, 40.3),

(2011, 3, 61, 38.8),
(2012, 3, 107, 49.4),
(2017, 3, 132, 57.9),
(2018, 3, 134, 58.1),
(2019, 3, 142, 60.8),
(2020, 3, 145, 60.6),
(2021, 3, 124, 49.5),
(2022, 3, 119, 47.9),

(2011, 4, 41, 33.9),
(2012, 4, 83, 55.0),
(2017, 4, 67, 44.5),
(2018, 4, 81, 54.0),
(2019, 4, 84, 55.6),
(2020, 4, 75, 50.5),
(2021, 4, 69, 45.0),
(2022, 4, 66, 41.6),

(2011, 5, 56, 30.1),
(2012, 5, 52, 33.5),
(2017, 5, 54, 35.1),
(2018, 5, 69, 45.4),
(2019, 5, 74, 48.7),
(2020, 5, 56, 37.2),
(2021, 5, 55, 36.0),
(2022, 5, 53, 33.8),

(2011, 6, 119, 51.3),
(2012, 6, 56, 45.2),
(2017, 6, 67, 54.1),
(2018, 6, 76, 62.2),
(2019, 6, 64, 53.0),
(2020, 6, 57, 47.7),
(2021, 6, 55, 45.0),
(2022, 6, 53, 41.9),

(2011, 7, 46, 44.1),
(2012, 7, 47, 53.8),
(2017, 7, 55, 60.1),
(2018, 7, 57, 60.3),
(2019, 7, 52, 53.9),
(2020, 7, 46, 50.2),
(2021, 7, 51, 54.2),
(2022, 7, 49, 48.8),

(2011, 8, 122, 56.3),
(2012, 8, 52, 34.4),
(2017, 8, 48, 27.6),
(2018, 8, 51, 29.5),
(2019, 8, 57, 32.7),
(2020, 8, 63, 37.0),
(2021, 8, 58, 34.3),
(2022, 8, 54, 30.2),

(2011, 9, 39, 27.1),
(2012, 9, 81, 44.2),
(2017, 9, 88, 44.3),
(2018, 9, 71, 34.8),
(2019, 9, 80, 39.8),
(2020, 9, 81, 41.7),
(2021, 9, 73, 37.3),
(2022, 9, 68, 33.7),

(2011, 10, 45, 52.2),
(2012, 10, 41, 33.6),
(2017, 10, 68, 55.8),
(2018, 10, 68, 55.7),
(2019, 10, 65, 51.3),
(2020, 10, 76, 61.5),
(2021, 10, 59, 48.0),
(2022, 10, 55, 44.3),

(2011, 11, 32, 40.3),
(2012, 11, 123, 55.5),
(2017, 11, 133, 56.2),
(2018, 11, 108, 44.4),
(2019, 11, 160, 64.5),
(2020, 11, 129, 52.0),
(2021, 11, 145, 58.0),
(2022, 11, 119, 47.1),

(2011, 12, 53, 44.2),
(2012, 12, 70, 47.8),
(2017, 12, 59, 45.8),
(2018, 12, 63, 48.5),
(2019, 12, 65, 51.0),
(2020, 12, 67, 53.1),
(2021, 12, 76, 60.7),
(2022, 12, 60, 47.1),

(2011, 13, 78, 50.9),
(2012, 13, 54, 68.3),
(2017, 13, 42, 47.5),
(2018, 13, 44, 48.2),
(2019, 13, 61, 62.2),
(2020, 13, 49, 46.8),
(2021, 13, 41, 37.0),
(2022, 13, 50, 43.6);



/* TABELLE 3 ENTWICKLUNG DER ALTERSGRUPPEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_age_groups_of_residents;

CREATE TABLE IF NOT EXISTS fl_age_groups_of_residents (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  age_under_18 INT,
  age_18_to_under_30 INT,
  age_30_to_under_45 INT,
  age_45_to_under_65 INT,
  age_65_to_under_80 INT,
  age_80_and_above INT
);

CREATE INDEX IF NOT EXISTS fl_age_groups_of_residents_year_idx ON fl_age_groups_of_residents (year);

INSERT INTO fl_age_groups_of_residents (year, age_under_18, age_18_to_under_30, age_30_to_under_45, age_45_to_under_65, age_65_to_under_80, age_80_and_above) VALUES
(2011, 13401, 17944, 17376, 23067, 13144, 4581),
(2012, 13517, 18195, 17110, 23408, 13323, 4562),
(2017, 14237, 20063, 17667, 24741, 13442, 5301),
(2018, 14524, 19992, 18089, 24757, 13244, 5581),
(2019, 14737, 19846, 18547, 24744, 13124, 5922),
(2020, 14739, 19237, 18869, 24674, 12962, 6250),
(2021, 14947, 19330, 19457, 24785, 12885, 6478),
(2022, 15295, 19406, 20036, 25121, 12930, 6553);



/* TABELLE 4 ALTENQUOTIENT NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_age_ratio_by_district;

CREATE TABLE IF NOT EXISTS fl_age_ratio_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  quotient NUMERIC,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_age_ratio_by_district_year_district_id_idx ON fl_age_ratio_by_district (year, district_id);

INSERT INTO fl_age_ratio_by_district (year, district_id, quotient) VALUES
(2011, 1, 14.8),
(2012, 1, 14.7),
(2017, 1, 13.7),
(2018, 1, 14.3),
(2019, 1, 14.5),
(2020, 1, 14.6),
(2021, 1, 13.7),
(2022, 1, 13.0),

(2011, 2, 12.6),
(2012, 2, 12.2),
(2017, 2, 10.1),
(2018, 2, 10.4),
(2019, 2, 10.7),
(2020, 2, 10.9),
(2021, 2, 10.3),
(2022, 2, 9.9),

(2011, 3, 24.5),
(2012, 3, 25.2),
(2017, 3, 24.3),
(2018, 3, 24.5),
(2019, 3, 24.4),
(2020, 3, 24.4),
(2021, 3, 23.8),
(2022, 3, 23.8),

(2011, 4, 40.2),
(2012, 4, 40.8),
(2017, 4, 41.9),
(2018, 4, 41.3),
(2019, 4, 41.8),
(2020, 4, 43.0),
(2021, 4, 43.2),
(2022, 4, 41.4),

(2011, 5, 29.7),
(2012, 5, 30.1),
(2017, 5, 27.6),
(2018, 5, 28.6),
(2019, 5, 28.3),
(2020, 5, 29.6),
(2021, 5, 29.2),
(2022, 5, 28.8),

(2011, 6, 30.0),
(2012, 6, 29.9),
(2017, 6, 33.8),
(2018, 6, 33.6),
(2019, 6, 33.5),
(2020, 6, 34.4),
(2021, 6, 34.5),
(2022, 6, 35.2),

(2011, 7, 33.8),
(2012, 7, 31.4),
(2017, 7, 26.7),
(2018, 7, 25.7),
(2019, 7, 26.1),
(2020, 7, 26.4),
(2021, 7, 25.3),
(2022, 7, 25.2),

(2011, 8, 26.8),
(2012, 8, 26.8),
(2017, 8, 24.4),
(2018, 8, 24.2),
(2019, 8, 23.7),
(2020, 8, 23.0),
(2021, 8, 22.1),
(2022, 8, 21.3),

(2011, 9, 27.2),
(2012, 9, 26.9),
(2017, 9, 23.9),
(2018, 9, 23.7),
(2019, 9, 24.8),
(2020, 9, 25.0),
(2021, 9, 24.9),
(2022, 9, 25.3),

(2011, 10, 35.8),
(2012, 10, 35.4),
(2017, 10, 39.6),
(2018, 10, 39.6),
(2019, 10, 40.0),
(2020, 10, 40.5),
(2021, 10, 41.0),
(2022, 10, 40.8),

(2011, 11, 49.6),
(2012, 11, 50.3),
(2017, 11, 52.2),
(2018, 11, 52.0),
(2019, 11, 51.3),
(2020, 11, 51.8),
(2021, 11, 52.8),
(2022, 11, 52.7),

(2011, 12, 32.0),
(2012, 12, 32.5),
(2017, 12, 37.2),
(2018, 12, 36.9),
(2019, 12, 38.2),
(2020, 12, 38.5),
(2021, 12, 38.7),
(2022, 12, 38.9),

(2011, 13, 28.8),
(2012, 13, 28.3),
(2017, 13, 26.6),
(2018, 13, 26.2),
(2019, 13, 26.2),
(2020, 13, 26.6),
(2021, 13, 27.3),
(2022, 13, 26.7);



/* TABELLE 5 EINWOHNER NACH STADTTEILEN NACH ALTERSGRUPPEN 2021,2022 */
DROP TABLE IF EXISTS fl_age_groups_by_district;

CREATE TABLE IF NOT EXISTS fl_age_groups_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  age_under_18 INT,
  age_18_to_under_30 INT,
  age_30_to_under_45 INT,
  age_45_to_under_65 INT,
  age_65_to_under_80 INT,
  age_80_and_above INT,
  age_0_to_under_7 INT,
  age_60_and_above INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_age_groups_by_district_year_district_id_idx ON fl_age_groups_by_district (year, district_id);

INSERT INTO fl_age_groups_by_district (year, district_id, age_under_18, age_18_to_under_30, age_30_to_under_45, age_45_to_under_65, age_65_to_under_80, age_80_and_above, age_0_to_under_7, age_60_and_above) VALUES
(2021, 1, 360, 1338, 951, 804, 265, 148, 174, 565),
(2022, 1, 403, 1345, 941, 822, 263, 133, 176, 558),
(2021, 2, 745, 1597, 1162, 977, 277, 92, 347, 551),
(2022, 2, 793, 1605, 1235, 1049, 281, 89, 370, 576),
(2021, 3, 2164, 2349, 2722, 3348, 1494, 448, 946, 2642),
(2022, 3, 2146, 2278, 2732, 3424, 1489, 463, 898, 2695),
(2021, 4, 1241, 1387, 1485, 1912, 1276, 714, 501, 2451),
(2022, 4, 1243, 1437, 1523, 1945, 1244, 717, 508, 2432),
(2021, 5, 816, 1578, 1376, 1583, 840, 451, 337, 1681),
(2022, 5, 828, 1605, 1427, 1576, 838, 457, 344, 1700),
(2021, 6, 1533, 917, 1433, 2105, 987, 497, 549, 1958),
(2022, 6, 1589, 940, 1452, 2160, 1023, 515, 542, 2061),
(2021, 7, 591, 996, 954, 950, 485, 229, 283, 953),
(2022, 7, 621, 1013, 993, 966, 505, 226, 289, 973),
(2021, 8, 657, 2225, 1333, 1425, 627, 435, 291, 1380),
(2022, 8, 706, 2284, 1395, 1461, 632, 428, 302, 1405),
(2021, 9, 959, 2160, 1735, 2071, 997, 449, 402, 1938),
(2022, 9, 1023, 2116, 1853, 2076, 1020, 474, 421, 1981),
(2021, 10, 1017, 974, 1296, 1863, 1066, 578, 425, 2113),
(2022, 10, 1033, 979, 1301, 1894, 1064, 582, 424, 2150),
(2021, 11, 2361, 1976, 2609, 3969, 2790, 1596, 943, 5460),
(2022, 11, 2383, 1950, 2680, 3956, 2772, 1609, 947, 5453),
(2021, 12, 1256, 1025, 1293, 2250, 1164, 548, 497, 2292),
(2022, 12, 1295, 1031, 1345, 2242, 1174, 574, 505, 2351),
(2021, 13, 1244, 808, 1106, 1528, 617, 293, 453, 1214),
(2022, 13, 1232, 823, 1159, 1550, 625, 286, 447, 1253);



/* TABELLE 6 KINDER UND JUGENDLICHE BIS UNTER 18 NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_children_age_under_18_by_district;

CREATE TABLE IF NOT EXISTS fl_children_age_under_18_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_children_age_under_18_by_district_year_district_id_idx ON fl_children_age_under_18_by_district (year, district_id);

INSERT INTO fl_children_age_under_18_by_district (year, district_id, residents) VALUES
(2011, 1, 297),
(2012, 1, 283),
(2017, 1, 361),
(2018, 1, 356),
(2019, 1, 378),
(2020, 1, 368),
(2021, 1, 360),
(2022, 1, 403),

(2011, 2, 574),
(2012, 2, 571),
(2017, 2, 663),
(2018, 2, 676),
(2019, 2, 734),
(2020, 2, 735),
(2021, 2, 745),
(2022, 2, 793),

(2011, 3, 1842),
(2012, 3, 1857),
(2017, 3, 1968),
(2018, 3, 2028),
(2019, 3, 2068),
(2020, 3, 2111),
(2021, 3, 2164),
(2022, 3, 2146),

(2011, 4, 1151),
(2012, 4, 1164),
(2017, 4, 1205),
(2018, 4, 1236),
(2019, 4, 1265),
(2020, 4, 1209),
(2021, 4, 1241),
(2022, 4, 1243),

(2011, 5, 808),
(2012, 5, 776),
(2017, 5, 833),
(2018, 5, 833),
(2019, 5, 873),
(2020, 5, 843),
(2021, 5, 816),
(2022, 5, 828),

(2011, 6, 1455),
(2012, 6, 1495),
(2017, 6, 1531),
(2018, 6, 1552),
(2019, 6, 1518),
(2020, 6, 1500),
(2021, 6, 1533),
(2022, 6, 1589),

(2011, 7, 500),
(2012, 7, 501),
(2017, 7, 558),
(2018, 7, 614),
(2019, 7, 581),
(2020, 7, 573),
(2021, 7, 591),
(2022, 7, 621),

(2011, 8, 548),
(2012, 8, 563),
(2017, 8, 572),
(2018, 8, 588),
(2019, 8, 616),
(2020, 8, 649),
(2021, 8, 657),
(2022, 8, 706),

(2011, 9, 830),
(2012, 9, 850),
(2017, 9, 987),
(2018, 9, 962),
(2019, 9, 992),
(2020, 9, 962),
(2021, 9, 959),
(2022, 9, 1023),

(2011, 10, 901),
(2012, 10, 924),
(2017, 10, 1009),
(2018, 10, 1042),
(2019, 10, 1050),
(2020, 10, 1061),
(2021, 10, 1017),
(2022, 10, 1033),

(2011, 11, 2074),
(2012, 11, 2104),
(2017, 11, 2246),
(2018, 11, 2288),
(2019, 11, 2313),
(2020, 11, 2350),
(2021, 11, 2361),
(2022, 11, 2383),

(2011, 12, 1438),
(2012, 12, 1426),
(2017, 12, 1202),
(2018, 12, 1219),
(2019, 12, 1204),
(2020, 12, 1194),
(2021, 12, 1256),
(2022, 12, 1295),

(2011, 13, 969),
(2012, 13, 1002),
(2017, 13, 1101),
(2018, 13, 1127),
(2019, 13, 1142),
(2020, 13, 1181),
(2021, 13, 1244),
(2022, 13, 1232);



/* TABELLE 7 PERSONEN IM ALTER VON fl_18 BIS UNTER 65 JAHREN NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_residents_age_18_to_under_65_by_district;

CREATE TABLE IF NOT EXISTS fl_residents_age_18_to_under_65_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_residents_age_18_to_under_65_by_district_year_district_id_idx ON fl_residents_age_18_to_under_65_by_district (year, district_id);

INSERT INTO fl_residents_age_18_to_under_65_by_district (year, district_id, residents) VALUES
(2011, 1, 2644),
(2012, 1, 2621),
(2017, 1, 3039),
(2018, 1, 3032),
(2019, 1, 2986),
(2020, 1, 2939),
(2021, 1, 3093),
(2022, 1, 3108),

(2011, 2, 3091),
(2012, 2, 3136),
(2017, 2, 3680),
(2018, 2, 3686),
(2019, 2, 3660),
(2020, 2, 3610),
(2021, 2, 3736),
(2022, 2, 3889),

(2011, 3, 7282),
(2012, 3, 7287),
(2017, 3, 8117),
(2018, 3, 8127),
(2019, 3, 8173),
(2020, 3, 8234),
(2021, 3, 8419),
(2022, 3, 8434),

(2011, 4, 4848),
(2012, 4, 4776),
(2017, 4, 4871),
(2018, 4, 4898),
(2019, 4, 4818),
(2020, 4, 4717),
(2021, 4, 4784),
(2022, 4, 4905),

(2011, 5, 4519),
(2012, 5, 4554),
(2017, 5, 4735),
(2018, 5, 4581),
(2019, 5, 4572),
(2020, 5, 4519),
(2021, 5, 4537),
(2022, 5, 4608),

(2011, 6, 4004),
(2012, 6, 4135),
(2017, 6, 4400),
(2018, 6, 4449),
(2019, 6, 4481),
(2020, 6, 4397),
(2021, 6, 4455),
(2022, 6, 4552),

(2011, 7, 2603),
(2012, 7, 2659),
(2017, 7, 2797),
(2018, 7, 2843),
(2019, 7, 2865),
(2020, 7, 2778),
(2021, 7, 2900),
(2022, 7, 2972),

(2011, 8, 4289),
(2012, 8, 4358),
(2017, 8, 4821),
(2018, 8, 4874),
(2019, 8, 4984),
(2020, 8, 4980),
(2021, 8, 4983),
(2022, 8, 5140),

(2011, 9, 5484),
(2012, 9, 5453),
(2017, 9, 5999),
(2018, 9, 6081),
(2019, 9, 5993),
(2020, 9, 5922),
(2021, 9, 5966),
(2022, 9, 6045),

(2011, 10, 3966),
(2012, 10, 4020),
(2017, 10, 4145),
(2018, 10, 4144),
(2019, 10, 4221),
(2020, 10, 4172),
(2021, 10, 4133),
(2022, 10, 4174),

(2011, 11, 8257),
(2012, 11, 8337),
(2017, 11, 8303),
(2018, 11, 8403),
(2019, 11, 8627),
(2020, 11, 8617),
(2021, 11, 8554),
(2022, 11, 8586),

(2011, 12, 4892),
(2012, 12, 4856),
(2017, 12, 4674),
(2018, 12, 4691),
(2019, 12, 4589),
(2020, 12, 4575),
(2021, 12, 4568),
(2022, 12, 4618),

(2011, 13, 2464),
(2012, 13, 2508),
(2017, 13, 2887),
(2018, 13, 3027),
(2019, 13, 3166),
(2020, 13, 3318),
(2021, 13, 3442),
(2022, 13, 3532);



/* TABELLE 8 PERSONEN 65 JAHRE UND ÄLTER NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_residents_age_65_and_above_by_district;

CREATE TABLE IF NOT EXISTS fl_residents_age_65_and_above_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_residents_age_65_and_above_by_district_year_district_id_idx ON fl_residents_age_65_and_above_by_district (year, district_id);

INSERT INTO fl_residents_age_65_and_above_by_district (year, district_id, residents) VALUES
(2011, 1, 382),
(2012, 1, 382),
(2017, 1, 407),
(2018, 1, 419),
(2019, 1, 420),
(2020, 1, 419),
(2021, 1, 413),
(2022, 1, 396),

(2011, 2, 374),
(2012, 2, 366),
(2017, 2, 355),
(2018, 2, 368),
(2019, 2, 376),
(2020, 2, 380),
(2021, 2, 369),
(2022, 2, 370),

(2011, 3, 1720),
(2012, 3, 1769),
(2017, 3, 1910),
(2018, 3, 1918),
(2019, 3, 1919),
(2020, 3, 1946),
(2021, 3, 1942),
(2022, 3, 1952),

(2011, 4, 1885),
(2012, 4, 1887),
(2017, 4, 1966),
(2018, 4, 1951),
(2019, 4, 1952),
(2020, 4, 1958),
(2021, 4, 1990),
(2022, 4, 1961),

(2011, 5, 1305),
(2012, 5, 1318),
(2017, 5, 1268),
(2018, 5, 1269),
(2019, 5, 1259),
(2020, 5, 1296),
(2021, 5, 1291),
(2022, 5, 1295),

(2011, 6, 1154),
(2012, 6, 1191),
(2017, 6, 1419),
(2018, 6, 1430),
(2019, 6, 1436),
(2020, 6, 1453),
(2021, 6, 1484),
(2022, 6, 1538),

(2011, 7, 857),
(2012, 7, 809),
(2017, 7, 724),
(2018, 7, 709),
(2019, 7, 724),
(2020, 7, 714),
(2021, 7, 714),
(2022, 7, 731),

(2011, 8, 1112),
(2012, 8, 1122),
(2017, 8, 1120),
(2018, 8, 1121),
(2019, 8, 1131),
(2020, 8, 1100),
(2021, 8, 1062),
(2022, 8, 1060),

(2011, 9, 1447),
(2012, 9, 1433),
(2017, 9, 1376),
(2018, 9, 1388),
(2019, 9, 1439),
(2020, 9, 1441),
(2021, 9, 1446),
(2022, 9, 1494),

(2011, 10, 1375),
(2012, 10, 1386),
(2017, 10, 1600),
(2018, 10, 1593),
(2019, 10, 1638),
(2020, 10, 1647),
(2021, 10, 1644),
(2022, 10, 1646),

(2011, 11, 3926),
(2012, 11, 4020),
(2017, 11, 4187),
(2018, 11, 4233),
(2019, 11, 4269),
(2020, 11, 4311),
(2021, 11, 4386),
(2022, 11, 4381),

(2011, 12, 1499),
(2012, 12, 1519),
(2017, 12, 1672),
(2018, 12, 1671),
(2019, 12, 1694),
(2020, 12, 1699),
(2021, 12, 1712),
(2022, 12, 1748),

(2011, 13, 682),
(2012, 13, 681),
(2017, 13, 739),
(2018, 13, 755),
(2019, 13, 789),
(2020, 13, 848),
(2021, 13, 910),
(2022, 13, 911);



/* TABELLE 9 PERONEN MIT MIRGRATIONSHINTERGRUND 2021,2022 */
DROP TABLE IF EXISTS fl_migration_background_by_district;

CREATE TABLE IF NOT EXISTS fl_migration_background_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  foreign_citizenship INT,
  german_citizenship INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_migration_background_by_district_year_district_id_idx ON fl_migration_background_by_district (year, district_id);

INSERT INTO fl_migration_background_by_district (year, district_id, foreign_citizenship, german_citizenship) VALUES
(2021, 1, 999, 375),
(2022, 1, 1057, 382),

(2021, 2, 1748, 443),
(2022, 2, 1922, 464),

(2021, 3, 4109, 1673),
(2022, 3, 4249, 1675),

(2021, 4, 1158, 991),
(2022, 4, 1238, 980),

(2021, 5, 907, 778),
(2022, 5, 1048, 789),

(2021, 6, 933, 1222),
(2022, 6, 1138, 1206),

(2021, 7, 919, 517),
(2022, 7, 989, 528),

(2021, 8, 1117, 601),
(2022, 8, 1199, 682),

(2021, 9, 1273, 699),
(2022, 9, 1491, 714),

(2021, 10, 645, 927),
(2022, 10, 757, 921),

(2021, 11, 1623, 2082),
(2022, 11, 1785, 2101),

(2021, 12, 946, 1335),
(2022, 12, 1081, 1316),

(2021, 13, 244, 865),
(2022, 13, 268, 861);



/* TABELLE 10, NICHT DEUTSCHE NACH AUFENTHALTSSTATUS 2016-2021 */
DROP TABLE IF EXISTS fl_non_german_nationals_residence_status;

CREATE TABLE IF NOT EXISTS fl_non_german_nationals_residence_status (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  permanent_residency INT,
  permanent_residency_according_eu_freedom_movement_act INT,
  permanent_residency_third_country_nationality INT,
  without_permanent_residency INT,
  asylum_seeker INT,
  suspension_of_deportation INT
);

CREATE INDEX IF NOT EXISTS fl_non_german_nationals_residence_status_year_idx ON fl_non_german_nationals_residence_status (year);

INSERT INTO fl_non_german_nationals_residence_status (year, permanent_residency, permanent_residency_according_eu_freedom_movement_act, permanent_residency_third_country_nationality, without_permanent_residency, asylum_seeker, suspension_of_deportation) VALUES
(2016, 6527, 5029, 1498, 2128, 790, 146),
(2017, 7995, 6466, 1529, 3234, 424, 186),
(2018, 8363, 6865, 1498, 3987, 366, 214),
(2019, 8117, 6569, 1548, 4585, 287, 275),
(2020, 9510, 7842, 1668, 4747, 204, 252),
(2021, 10178, 8314, 1864, 4868, 143, 276);



/* TABELLE 11 SOZIALVERSICHERUNGSPFLICHTIG BESCHÄFTIGTE 2017-2022 */
DROP TABLE IF EXISTS fl_employed_with_pension_insurance_by_district;

CREATE TABLE IF NOT EXISTS fl_employed_with_pension_insurance_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  employment_rate NUMERIC,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_employed_with_pension_insurance_by_district_year_district_id_idx ON fl_employed_with_pension_insurance_by_district (year, district_id);

INSERT INTO fl_employed_with_pension_insurance_by_district (year, district_id, residents, employment_rate) VALUES
(2017, 1, 1336, 43.0),
(2018, 1, 1360, 44.2),
(2019, 1, 1424, 46.7),
(2020, 1, 1409, 47.0),
(2021, 1, 1593, 50.6),
(2022, 1, 1707, 54.0),

(2017, 2, 1505, 39.6),
(2018, 2, 1614, 42.5),
(2019, 2, 1618, 42.7),
(2020, 2, 1644, 43.9),
(2021, 2, 1768, 46.0),
(2022, 2, 1931, 48.2),

(2017, 3, 3599, 42.6),
(2018, 3, 3682, 43.7),
(2019, 3, 3834, 45.2),
(2020, 3, 3850, 45.1),
(2021, 3, 4164, 47.5),
(2022, 3, 4236, 48.2),

(2017, 4, 2388, 47.2),
(2018, 4, 2472, 48.6),
(2019, 4, 2452, 48.8),
(2020, 4, 2394, 48.6),
(2021, 4, 2451, 49.1),
(2022, 4, 2593, 50.7),

(2017, 5, 2393, 49.3),
(2018, 5, 2415, 51.4),
(2019, 5, 2454, 52.2),
(2020, 5, 2457, 52.8),
(2021, 5, 2517, 53.7),
(2022, 5, 2592, 54.5),

(2017, 6, 2500, 53.6),
(2018, 6, 2531, 53.8),
(2019, 6, 2551, 54.0),
(2020, 6, 2488, 53.4),
(2021, 6, 2566, 54.6),
(2022, 6, 2556, 53.0),

(2017, 7, 1507, 52.5),
(2018, 7, 1550, 53.1),
(2019, 7, 1590, 54.3),
(2020, 7, 1583, 55.7),
(2021, 7, 1681, 56.5),
(2022, 7, 1705, 55.6),

(2017, 8, 2177, 44.1),
(2018, 8, 2265, 45.5),
(2019, 8, 2418, 47.5),
(2020, 8, 2445, 48.2),
(2021, 8, 2598, 51.2),
(2022, 8, 2665, 50.7),

(2017, 9, 2993, 48.5),
(2018, 9, 3085, 49.4),
(2019, 9, 3091, 50.3),
(2020, 9, 3096, 51.0),
(2021, 9, 3222, 52.6),
(2022, 9, 3288, 52.9),

(2017, 10, 2299, 53.3),
(2018, 10, 2320, 53.8),
(2019, 10, 2410, 54.8),
(2020, 10, 2337, 53.9),
(2021, 10, 2406, 56.1),
(2022, 10, 2432, 55.9),

(2017, 11, 4381, 50.2),
(2018, 11, 4471, 50.6),
(2019, 11, 4627, 51.3),
(2020, 11, 4619, 51.4),
(2021, 11, 4740, 52.9),
(2022, 11, 4843, 53.9),

(2017, 12, 2588, 52.6),
(2018, 12, 2623, 53.4),
(2019, 12, 2614, 54.4),
(2020, 12, 2580, 54.0),
(2021, 12, 2676, 56.0),
(2022, 12, 2755, 56.9),

(2017, 13, 1627, 52.6),
(2018, 13, 1700, 53.0),
(2019, 13, 1779, 53.2),
(2020, 13, 1887, 53.6),
(2021, 13, 1972, 53.8),
(2022, 13, 1998, 53.3);



/* TABELLE 12 ANTEIL ARBEITSLOSE 18 BIS 65 IN DEN JAHREN 2017-2022 */
DROP TABLE IF EXISTS fl_unemployed_residents_by_district;

CREATE TABLE IF NOT EXISTS fl_unemployed_residents_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_unemployed_residents_by_district_year_district_id_idx ON fl_unemployed_residents_by_district (year, district_id);

INSERT INTO fl_unemployed_residents_by_district (year, district_id, residents) VALUES
(2017, 1, 233),
(2018, 1, 227),
(2019, 1, 218),
(2020, 1, 252),
(2021, 1, 226),
(2022, 1, 167),

(2017, 2, 390),
(2018, 2, 360),
(2019, 2, 343),
(2020, 2, 450),
(2021, 2, 383),
(2022, 2, 350),

(2017, 3, 933),
(2018, 3, 856),
(2019, 3, 754),
(2020, 3, 927),
(2021, 3, 823),
(2022, 3, 727),

(2017, 4, 281),
(2018, 4, 259),
(2019, 4, 270),
(2020, 4, 350),
(2021, 4, 304),
(2022, 4, 251),

(2017, 5, 300),
(2018, 5, 276),
(2019, 5, 251),
(2020, 5, 288),
(2021, 5, 286),
(2022, 5, 229),

(2017, 6, 229),
(2018, 6, 204),
(2019, 6, 202),
(2020, 6, 230),
(2021, 6, 205),
(2022, 6, 223),

(2017, 7, 241),
(2018, 7, 239),
(2019, 7, 213),
(2020, 7, 238),
(2021, 7, 226),
(2022, 7, 196),

(2017, 8, 292),
(2018, 8, 304),
(2019, 8, 296),
(2020, 8, 359),
(2021, 8, 327),
(2022, 8, 276),

(2017, 9, 452),
(2018, 9, 456),
(2019, 9, 431),
(2020, 9, 567),
(2021, 9, 427),
(2022, 9, 387),

(2017, 10, 278),
(2018, 10, 278),
(2019, 10, 241),
(2020, 10, 335),
(2021, 10, 303),
(2022, 10, 232),

(2017, 11, 512),
(2018, 11, 517),
(2019, 11, 477),
(2020, 11, 614),
(2021, 11, 532),
(2022, 11, 440),

(2017, 12, 266),
(2018, 12, 265),
(2019, 12, 248),
(2020, 12, 310),
(2021, 12, 276),
(2022, 12, 218),

(2017, 13, 52),
(2018, 13, 53),
(2019, 13, 54),
(2020, 13, 98),
(2021, 13, 85),
(2022, 13, 82);



/* TABELLE 13 ANZAHL DER ARBEITSLOSEN NACH AUSGEWÄHLTEN MERKMALEN IN DEN STADTTEILEN 2021,2022 */
DROP TABLE IF EXISTS fl_unemployed_residents_categorized_by_district;

CREATE TABLE IF NOT EXISTS fl_unemployed_residents_categorized_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  unemployed_total INT,
  percentage_of_total NUMERIC,
  percentage_sgb_iii NUMERIC,
  percentage_sgb_ii NUMERIC,
  percentage_foreign_citizenship NUMERIC,
  percentage_female NUMERIC,
  percentage_age_under_25 NUMERIC,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_unemployed_residents_categorized_by_district_year_district_id_idx ON fl_unemployed_residents_categorized_by_district (year, district_id);

INSERT INTO fl_unemployed_residents_categorized_by_district (year, district_id, unemployed_total, percentage_of_total, percentage_sgb_iii, percentage_sgb_ii, percentage_foreign_citizenship, percentage_female, percentage_age_under_25) VALUES
(2021, 1, 226, 5.1, 31.0, 69.0, 23.0, 41.2, 11.9),
(2022, 1, 167, 4.4, 25.7, 74.3, 21.0, 38.3, 13.2),

(2021, 2, 383, 8.6, 20.1, 79.9, 30.3, 34.7, 12.0),
(2022, 2, 350, 9.2, 20.9, 79.1, 33.1, 32.3, 10.6),

(2021, 3, 823, 18.5, 21.7, 78.3, 34.9, 42.5, 8.9),
(2022, 3, 727, 19.0, 20.9, 79.1, 36.0, 45.9, 6.1),

(2021, 4, 304, 6.8, 31.6, 68.4, 27.3, 36.8, 11.5),
(2022, 4, 251, 6.6, 32.7, 67.3, 23.1, 43.4, 13.1),

(2021, 5, 286, 6.4, 34.6, 65.4, 21.7, 40.2, 15.0),
(2022, 5, 229, 6.0, 27.9, 72.1, 18.8, 43.7, 13.5),

(2021, 6, 205, 4.6, 44.9, 55.1, 23.4, 42.4, 12.2),
(2022, 6, 223, 5.8, 34.5, 65.5, 42.2, 46.6, 8.5),

(2021, 7, 226, 5.1, 26.1, 73.9, 23.9, 43.8, 10.2),
(2022, 7, 196, 5.1, 31.6, 68.4, 23.5, 39.8, 7.7),

(2021, 8, 327, 7.4, 30.6, 69.4, 19.3, 33.6, 15.0),
(2022, 8, 276, 7.2, 25.7, 74.3, 17.4, 34.1, 12.7),

(2021, 9, 427, 9.6, 27.2, 72.8, 21.8, 38.6, 14.3),
(2022, 9, 387, 10.1, 28.4, 71.6, 19.9, 37.7, 10.3),

(2021, 10, 303, 6.8, 30.7, 69.3, 17.5, 45.5, 6.9),
(2022, 10, 232, 6.1, 24.1, 75.9, 15.5, 50.9, 7.3),

(2021, 11, 532, 12.0, 37.0, 63.0, 20.9, 48.7, 10.9),
(2022, 11, 440, 11.5, 35.0, 65.0, 22.7, 48.4, 9.1),

(2021, 12, 276, 6.2, 33.0, 67.0, 25.0, 46.4, 10.5),
(2022, 12, 218, 5.7, 32.6, 67.4, 24.3, 46.3, 9.2),

(2021, 13, 85, 1.9, 48.2, 51.8, 17.6, 54.1, 12.9),
(2022, 13, 82, 3.1, 39.0, 61.0, 23.2, 50.0, 0.0),

(2021, NULL, 37, 0.8, NULL, NULL, NULL, NULL, NULL),
(2022, NULL, 46, 1.2, NULL, NULL, NULL, NULL, NULL);



/* TABELLE 14 WOHNGELDEMPFÄNGERINNEN NACH STADTTEILEN 2011,2012 2017-2022 */
DROP TABLE IF EXISTS fl_housing_benefit_by_district;

CREATE TABLE IF NOT EXISTS fl_housing_benefit_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_housing_benefit_by_district_year_district_id_idx ON fl_housing_benefit_by_district (year, district_id);

INSERT INTO fl_housing_benefit_by_district (year, district_id, residents) VALUES
(2011, 1, 130),
(2012, 1, 127),
(2017, 1, 96),
(2018, 1, 133),
(2019, 1, 119),
(2020, 1, 92),
(2021, 1, 116),
(2022, 1, 121),

(2011, 2, 207),
(2012, 2, 178),
(2017, 2, 114),
(2018, 2, 165),
(2019, 2, 218),
(2020, 2, 172),
(2021, 2, 172),
(2022, 2, 272),

(2011, 3, 584),
(2012, 3, 567),
(2017, 3, 413),
(2018, 3, 165),
(2019, 3, 571),
(2020, 3, 722),
(2021, 3, 523),
(2022, 3, 717),

(2011, 4, 228),
(2012, 4, 240),
(2017, 4, 194),
(2018, 4, 212),
(2019, 4, 180),
(2020, 4, 189),
(2021, 4, 252),
(2022, 4, 327),

(2011, 5, 274),
(2012, 5, 277),
(2017, 5, 239),
(2018, 5, 244),
(2019, 5, 204),
(2020, 5, 223),
(2021, 5, 258),
(2022, 5, 322),

(2011, 6, 280),
(2012, 6, 355),
(2017, 6, 170),
(2018, 6, 295),
(2019, 6, 216),
(2020, 6, 211),
(2021, 6, 163),
(2022, 6, 305),

(2011, 7, 173),
(2012, 7, 204),
(2017, 7, 192),
(2018, 7, 242),
(2019, 7, 216),
(2020, 7, 231),
(2021, 7, 204),
(2022, 7, 257),

(2011, 8, 229),
(2012, 8, 415),
(2017, 8, 182),
(2018, 8, 191),
(2019, 8, 211),
(2020, 8, 227),
(2021, 8, 252),
(2022, 8, 261),

(2011, 9, 353),
(2012, 9, 350),
(2017, 9, 256),
(2018, 9, 293),
(2019, 9, 266),
(2020, 9, 292),
(2021, 9, 328),
(2022, 9, 359),

(2011, 10, 337),
(2012, 10, 360),
(2017, 10, 360),
(2018, 10, 375),
(2019, 10, 416),
(2020, 10, 455),
(2021, 10, 370),
(2022, 10, 492),

(2011, 11, 623),
(2012, 11, 627),
(2017, 11, 504),
(2018, 11, 590),
(2019, 11, 569),
(2020, 11, 601),
(2021, 11, 484),
(2022, 11, 759),

(2011, 12, 392),
(2012, 12, 357),
(2017, 12, 233),
(2018, 12, 286),
(2019, 12, 228),
(2020, 12, 285),
(2021, 12, 247),
(2022, 12, 377),

(2011, 13, 91),
(2012, 13, 124),
(2017, 13, 44),
(2018, 13, 71),
(2019, 13, 56),
(2020, 13, 125),
(2021, 13, 114),
(2022, 13, 154);



/* TABELLE 15 WOHNUNGSHILFEFÄLLE NACH STADTTEILEN 2021,2022 */
DROP TABLE IF EXISTS fl_housing_assistance_cases_by_district;

CREATE TABLE IF NOT EXISTS fl_housing_assistance_cases_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  general_consulting INT,
  notices_of_rent_arrears INT,
  termination_rent_arrears INT,
  termination_for_conduct INT,
  action_for_eviction INT,
  eviction_notice INT,
  eviction_carried INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_housing_assistance_cases_by_district_year_district_id_idx ON fl_housing_assistance_cases_by_district (year, district_id);

INSERT INTO fl_housing_assistance_cases_by_district (year, district_id, general_consulting, notices_of_rent_arrears, termination_rent_arrears, termination_for_conduct, action_for_eviction, eviction_notice, eviction_carried) VALUES
(2021, 1, 15, NULL, NULL, NULL, NULL, 5, 5),
(2022, 1, 29, NULL, NULL, NULL, 10, 5, NULL),

(2021, 2, 39, NULL, 4, NULL, 5, 9, 5),
(2022, 2, 116, NULL, 6, NULL, 11, 4, 4),

(2021, 3, 175, NULL, 19, 4, 15, 20, 10),
(2022, 3, 108, 9, 8, NULL, 27, 8, NULL),

(2021, 4, 60, NULL, NULL, NULL, 11, 7, 5),
(2022, 4, 31, NULL, 4, NULL, 6, 6, 6),

(2021, 5, 28, NULL, 4, NULL, 6, NULL, NULL),
(2022, 5, 24, NULL, NULL, NULL, 6, NULL, NULL),

(2021, 6, 70, NULL, NULL, NULL, NULL, 4, NULL),
(2022, 6, 93, NULL, 6, NULL, 11, 4, 4),

(2021, 7, 40, NULL, 5, NULL, 6, NULL, NULL),
(2022, 7, 71, NULL, NULL, NULL, 13, 10, 8),

(2021, 8, 28, NULL, 5, NULL, NULL, 8, 6),
(2022, 8, 47, NULL, 10, NULL, 9, 8, 6),

(2021, 9, 61, 4, 14, NULL, 8, 4, 4),
(2022, 9, 86, NULL, 9, NULL, 25, 9, 7),

(2021, 10, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(2022, 10, 18, NULL, 6, NULL, 7, NULL, NULL),

(2021, 11, 44, 5, 6, NULL, 10, 5, 5),
(2022, 11, 75, NULL, 15, NULL, 19, 9, 6),

(2021, 12, 40, NULL, 7, NULL, 12, 7, 5),
(2022, 12, 13, NULL, NULL, NULL, 6, 4, NULL),

(2021, 13, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(2022, 13, NULL, NULL, NULL, NULL, NULL, 4, NULL);



/* TABELLE 16 WOHNUNGSLOSIGKEIT BEDROHTE HAUSHALTE NACH STADTTEILEN 2017-2022 */
DROP TABLE IF EXISTS fl_risk_homelessness_by_district;

CREATE TABLE IF NOT EXISTS fl_risk_homelessness_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_risk_homelessness_by_district_year_district_id_idx ON fl_risk_homelessness_by_district (year, district_id);

INSERT INTO fl_risk_homelessness_by_district (year, district_id, residents) VALUES
(2017, 1, 14),
(2018, 1, 5),
(2019, 1, 13),
(2020, 1, 11),
(2021, 1, NULL),
(2022, 1, 10),

(2017, 2, 21),
(2018, 2, 23),
(2019, 2, 21),
(2020, 2, 20),
(2021, 2, 5),
(2022, 2, 11),

(2017, 3, 31),
(2018, 3, 27),
(2019, 3, 27),
(2020, 3, 21),
(2021, 3, 15),
(2022, 3, 27),

(2017, 4, 8),
(2018, 4, 11),
(2019, 4, 11),
(2020, 4, 9),
(2021, 4, 11),
(2022, 4, 6),

(2017, 5, 15),
(2018, 5, 8),
(2019, 5, 10),
(2020, 5, 15),
(2021, 5, 6),
(2022, 5, 6),

(2017, 6, 11),
(2018, 6, NULL),
(2019, 6, NULL),
(2020, 6, 6),
(2021, 6, NULL),
(2022, 6, 11),

(2017, 7, 9),
(2018, 7, 7),
(2019, 7, 16),
(2020, 7, 16),
(2021, 7, 6),
(2022, 7, 13),

(2017, 8, 9),
(2018, 8, 13),
(2019, 8, 16),
(2020, 8, 14),
(2021, 8, NULL),
(2022, 8, 9),

(2017, 9, 14),
(2018, 9, 10),
(2019, 9, 15),
(2020, 9, 15),
(2021, 9, 8),
(2022, 9, 25),

(2017, 10, 6),
(2018, 10, 9),
(2019, 10, 15),
(2020, 10, 8),
(2021, 10, NULL),
(2022, 10, 7),

(2017, 11, 28),
(2018, 11, 12),
(2019, 11, NULL),
(2020, 11, 21),
(2021, 11, 10),
(2022, 11, 19),

(2017, 12, 17),
(2018, 12, 9),
(2019, 12, 14),
(2020, 12, 11),
(2021, 12, 12),
(2022, 12, 6),

(2017, 13, NULL),
(2018, 13, NULL),
(2019, 13, NULL),
(2020, 13, 4),
(2021, 13, NULL),
(2022, 13, NULL);



/* TABELLE 17 BEZUG VON fl_LEISTUNGEN NACH SGB II, III UND XIL NACH STADTTEILEN 2021,2022 */
DROP TABLE IF EXISTS fl_beneficiaries_age_15_to_under_65_by_district;

CREATE TABLE IF NOT EXISTS fl_beneficiaries_age_15_to_under_65_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  total INT,
  percentage_of_total_residents NUMERIC,
  employable_with_benefits INT,
  unemployment_benefits INT,
  basic_income INT,
  assisting_benefits INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_beneficiaries_age_15_to_under_65_by_district_year_district_id_idx ON fl_beneficiaries_age_15_to_under_65_by_district (year, district_id);

INSERT INTO fl_beneficiaries_age_15_to_under_65_by_district (year,district_id,total,percentage_of_total_residents,employable_with_benefits,unemployment_benefits,basic_income,assisting_benefits) VALUES
(2021, 1, 517, 16.5, 377, 70, 55, 15),
(2022, 1, 441, 14.0, 326, 43, 57, 15),

(2021, 2, 1034, 27.0, 809, 77, 122, 26),
(2022, 2, 951, 23.8, 735, 73, 117, 26),

(2021, 3, 2109, 24.1, 1585, 179, 283, 62),
(2022, 3, 1904, 21.7, 1402, 152, 295, 55),

(2021, 4, 715, 14.4, 518, 96, 74, 27),
(2022, 4, 631, 12.5, 453, 82, 81, 15),

(2021, 5, 741, 15.8, 514, 99, 88, 40),
(2022, 5, 602, 12.7, 416, 64, 93, 29),

(2021, 6, 462, 9.8, 324, 92, 37, 9),
(2022, 6, 466, 9.7, 337, 77, 38, 14),

(2021, 7, 600, 20.4, 444, 59, 80, 17),
(2022, 7, 565, 18.6, 395, 62, 91, 17),

(2021, 8, 776, 15.3, 567, 100, 81, 28),
(2022, 8, 639, 12.2, 460, 71, 81, 27),

(2021, 9, 1115, 18.4, 837, 116, 126, 36),
(2022, 9, 997, 16.2, 714, 110, 142, 31),

(2021, 10, 828, 19.3, 569, 93, 138, 28),
(2022, 10, 722, 16.6, 508, 56, 132, 26),

(2021, 11, 1350, 15.2, 988, 197, 137, 28),
(2022, 11, 1153, 13.0, 834, 154, 141, 24),

(2021, 12, 693, 14.5, 518, 91, 69, 15),
(2022, 12, 616, 12.8, 456, 71, 73, 16),

(2021, 13, 188, 5.2, 120, 41, 23, 4),
(2022, 13, 207, 5.6, 140, 32, 31, 4),

(2021, NULL, 451, NULL, 53, 9, 337, 52),
(2022, NULL, 482, NULL, 64, 12, 353, 53);



/* TABELLE 18 REGELLEISTUNGSBERECHTIGTE NACH SGB II 2018-2022 */
DROP TABLE IF EXISTS fl_beneficiaries_by_district;

CREATE TABLE IF NOT EXISTS fl_beneficiaries_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_beneficiaries_by_district_year_district_id_idx ON fl_beneficiaries_by_district (year, district_id);

INSERT INTO fl_beneficiaries_by_district (year, district_id, residents) VALUES
(2018, 1, 554),
(2019, 1, 532),
(2020, 1, 502),
(2021, 1, 475),
(2022, 1, 408),

(2018, 2, 1097),
(2019, 2, 1094),
(2020, 2, 1063),
(2021, 2, 1116),
(2022, 2, 1014),

(2018, 3, 2481),
(2019, 3, 2352),
(2020, 3, 2241),
(2021, 3, 2170),
(2022, 3, 1921),

(2018, 4, 729),
(2019, 4, 734),
(2020, 4, 736),
(2021, 4, 733),
(2022, 4, 675),

(2018, 5, 753),
(2019, 5, 703),
(2020, 5, 647),
(2021, 5, 670),
(2022, 5, 570),

(2018, 6, 512),
(2019, 6, 483),
(2020, 6, 505),
(2021, 6, 494),
(2022, 6, 530),

(2018, 7, 669),
(2019, 7, 665),
(2020, 7, 622),
(2021, 7, 615),
(2022, 7, 556),

(2018, 8, 672),
(2019, 8, 665),
(2020, 8, 645),
(2021, 8, 706),
(2022, 8, 586),

(2018, 9, 1102),
(2019, 9, 1082),
(2020, 9, 1072),
(2021, 9, 1048),
(2022, 9, 897),

(2018, 10, 766),
(2019, 10, 769),
(2020, 10, 780),
(2021, 10, 792),
(2022, 10, 732),

(2018, 11, 1474),
(2019, 11, 1466),
(2020, 11, 1484),
(2021, 11, 1429),
(2022, 11, 1174),

(2018, 12, 773),
(2019, 12, 763),
(2020, 12, 707),
(2021, 12, 754),
(2022, 12, 680),

(2018, 13, 74),
(2019, 13, 81),
(2020, 13, 105),
(2021, 13, 150),
(2022, 13, 188);



/* TABELLE 19 REGELLEISTUNGSBERECHTIGTE NACH SGB II 2021,2022 */
DROP TABLE IF EXISTS fl_beneficiaries_characteristics_by_district;

CREATE TABLE IF NOT EXISTS fl_beneficiaries_characteristics_by_district (
  id SERIAL PRIMARY KEY,
  year INT,
  district_id INT,
  unemployability INT,
  employability INT,
  percentage_females NUMERIC,
  percentage_single_parents NUMERIC,
  percentage_foreign_citizenship NUMERIC,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_beneficiaries_characteristics_by_district_year_district_id_idx ON fl_beneficiaries_characteristics_by_district (year, district_id);

INSERT INTO fl_beneficiaries_characteristics_by_district (year, district_id, unemployability, employability, percentage_females, percentage_single_parents, percentage_foreign_citizenship) VALUES
(2021, 1, 98, 377, 40.3, 7.2, 31.3),
(2022, 1, 82, 326, 39.6, 7.4, 29.8),

(2021, 2, 307, 809, 41.9, 7.5, 40.5),
(2022, 2, 279, 735, 43.5, 9.9, 40.7),

(2021, 3, 585, 1585, 48.0, 14.5, 37.5),
(2022, 3, 519, 1402, 49.6, 16.2, 35.8),

(2021, 4, 215, 518, 49.4, 12.9, 31.9),
(2022, 4, 222, 453, 51.7, 15.0, 32.7),

(2021, 5, 156, 514, 52.3, 17.9, 23.7),
(2022, 5, 154, 416, 52.6, 19.7, 20.9),

(2021, 6, 170, 324, 47.5, 16.0, 38.9),
(2022, 6, 193, 337, 51.3, 15.4, 46.6),

(2021, 7, 171, 444, 50.5, 16.2, 29.3),
(2022, 7, 161, 395, 50.6, 19.0, 26.6),

(2021, 8, 139, 567, 39.2, 10.1, 25.4),
(2022, 8, 126, 460, 40.7, 12.6, 25.9),

(2021, 9, 211, 837, 43.8, 9.3, 26.8),
(2022, 9, 183, 714, 45.9, 10.8, 25.4),

(2021, 10, 223, 569, 56.1, 20.7, 19.0),
(2022, 10, 224, 508, 56.9, 22.8, 21.1),

(2021, 11, 441, 988, 53.8, 18.8, 29.9),
(2022, 11, 340, 834, 53.5, 17.6, 29.7),

(2021, 12, 236, 518, 56.0, 14.3, 24.5),
(2022, 12, 224, 456, 57.2, 15.8, 29.4),

(2021, 13, 30, 120, 50.8, 9.2, 23.3),
(2022, 13, 48, 140, 55.0, 10.7, 20.0),

(2021, NULL, 4, 53, NULL, NULL, NULL),
(2022, NULL, 11, 69, 31.9, 2.9, 14.5);



/* TABELLE 20 NICHTERWERBSFÄHIGE LEISTUNGSBERECHTIGTE
 * IN BEDARFSGEMEINSCHAFTEN NACH STADTTEILEN 2018-2022 */
DROP TABLE IF EXISTS fl_inactive_beneficiaries_households_by_district;

CREATE TABLE IF NOT EXISTS fl_inactive_beneficiaries_households_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  residents INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_inactive_beneficiaries_households_by_district_year_district_id_idx ON fl_inactive_beneficiaries_households_by_district (year, district_id);

INSERT INTO fl_inactive_beneficiaries_households_by_district (year, district_id, residents) VALUES
(2018, 1, 115),
(2019, 1, 124),
(2020, 1, 118),
(2021, 1, 98),
(2022, 1, 82),

(2018, 2, 262),
(2019, 2, 297),
(2020, 2, 299),
(2021, 2, 307),
(2022, 2, 279),

(2018, 3, 675),
(2019, 3, 659),
(2020, 3, 626),
(2021, 3, 585),
(2022, 3, 519),

(2018, 4, 212),
(2019, 4, 228),
(2020, 4, 214),
(2021, 4, 215),
(2022, 4, 222),

(2018, 5, 192),
(2019, 5, 188),
(2020, 5, 161),
(2021, 5, 156),
(2022, 5, 154),

(2018, 6, 166),
(2019, 6, 155),
(2020, 6, 176),
(2021, 6, 170),
(2022, 6, 193),

(2018, 7, 192),
(2019, 7, 202),
(2020, 7, 187),
(2021, 7, 171),
(2022, 7, 161),

(2018, 8, 107),
(2019, 8, 124),
(2020, 8, 120),
(2021, 8, 139),
(2022, 8, 126),

(2018, 9, 207),
(2019, 9, 218),
(2020, 9, 231),
(2021, 9, 211),
(2022, 9, 183),

(2018, 10, 215),
(2019, 10, 232),
(2020, 10, 231),
(2021, 10, 223),
(2022, 10, 224),

(2018, 11, 447),
(2019, 11, 487),
(2020, 11, 470),
(2021, 11, 441),
(2022, 11, 340),

(2018, 12, 252),
(2019, 12, 271),
(2020, 12, 243),
(2021, 12, 236),
(2022, 12, 224),

(2018, 13, 23),
(2019, 13, 24),
(2020, 13, 31),
(2021, 13, 30),
(2022, 13, 48);



/* TABELLE 21 GRUNDSICHERUNG AUF STADTTEILEBENE 2021,2022 */
DROP TABLE IF EXISTS fl_basic_benefits_income_by_district;

CREATE TABLE IF NOT EXISTS fl_basic_benefits_income_by_district (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  district_id INT,
  male INT,
  female INT,
  age_18_to_under_65 INT,
  age_65_and_above INT,
  FOREIGN KEY(district_id) REFERENCES fl_district(id)
);

CREATE INDEX IF NOT EXISTS fl_basic_benefits_income_by_district_year_district_id_idx ON fl_basic_benefits_income_by_district (year, district_id);

-- VERMUTLICH SIND DIE REIHEN IN 2022 UM EINE REIHE NACH UNTEN VERSCHOBEN
-- ANGABEN JEDOCH NACH DEM SOZIALATLAS FLENSBURG 2023, 14. MAI 2024
INSERT INTO fl_basic_benefits_income_by_district (year, district_id, male, female, age_18_to_under_65, age_65_and_above) VALUES
(2021, 1, 245, 158, 55, 55),
(2022, 1, 62, 52, 57, 57),

(2021, 2, 61, 49, 122, 76),
(2022, 2, 111, 84, 117, 78),

(2021, 3, 112, 86, 283, 248),
(2022, 3, 306, 255, 295, 266),

(2021, 4, 287, 244, 74, 79),
(2022, 4, 77, 90, 81, 86),

(2021, 5, 74, 79, 88, 78),
(2022, 5, 82, 98, 93, 87),

(2021, 6, 76, 90, 37, 45),
(2022, 6, 44, 53, 38, 59),

(2021, 7, 37, 45, 80, 65),
(2022, 7, 91, 79, 91, 79),

(2021, 8, 75, 70, 81, 74),
(2022, 8, 80, 83, 81, 82),

(2021, 9, 77, 78, 126, 104),
(2022, 9, 130, 140, 142, 128),

(2021, 10, 111, 119, 138, 110),
(2022, 10, 122, 136, 132, 126),

(2021, 11, 116, 132, 137, 164),
(2022, 11, 144, 174, 141, 177),

(2021, 12, 140, 161, 69, 99),
(2022, 12, 86, 104, 73, 117),

(2021, 13, 77, 91, 23, 28),
(2022, 13, 23, 30, 31, 22),

(2021, NULL, 24, 27, 337, 66),
(2022, NULL, 248, 167, 353, 62);



/* TABELLE 22 IN SCHULDNERBERATUNG BERATENE PERSONEN 2021,2022 */
DROP TABLE IF EXISTS fl_debt_counseling_residents;

CREATE TABLE IF NOT EXISTS fl_debt_counseling_residents (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  household_type_id INT,
  residents INT,
  FOREIGN KEY(household_type_id) REFERENCES fl_household_type(id)
);

CREATE INDEX IF NOT EXISTS fl_debt_counseling_residents_year_household_type_id_idx ON fl_debt_counseling_residents (year, household_type_id);

INSERT INTO fl_debt_counseling_residents (year, household_type_id, residents) VALUES
(2021, 1, 767),
(2022, 1, 386),

(2021, 2, 403),
(2022, 2, 238),

(2021, 3, NULL),
(2022, 3, 4),

(2021, 4, 381),
(2022, 4, 210),

(2021, 5, 350),
(2022, 5, 138),

(2021, 6, 528),
(2022, 6, 198),

(2021, 7, 60),
(2022, 7, 61);



/* TABELLE 23 HILFEN ZUR ERZIEHUNG 2017-2022 */
DROP TABLE IF EXISTS fl_child_education_support CASCADE;

CREATE TABLE IF NOT EXISTS fl_child_education_support (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  educational_assistance INT,
  parenting_counselor INT,
  pedagogical_family_assistance INT,
  child_day_care_facility INT,
  full_time_care INT,
  residential_education INT,
  integration_assistance INT,
  additional_support INT
);

CREATE INDEX IF NOT EXISTS fl_child_education_support_year_idx ON fl_child_education_support (year);

INSERT INTO fl_child_education_support (year, educational_assistance, parenting_counselor, pedagogical_family_assistance, child_day_care_facility, full_time_care, residential_education, integration_assistance, additional_support) VALUES
(2017, 23, 39, 142, 19, 137, 134, 126, 10),
(2018, 13, 45, 151, 22, 116, 123, 151, 7),
(2019, 7, 39, 154, 27, 106, 120, 141, 6),
(2020, 9, 31, 144, 25, 99, 145, 152, 3),
(2021, NULL, 44, 148, 19, 95, 168, 149, 4),
(2022, NULL, 61, 155, 16, 103, 142, 184, 11);
