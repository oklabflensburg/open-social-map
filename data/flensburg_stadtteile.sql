/* HILFSTABELLE STADTTEILEILE MIT NAMEN */
DROP TABLE IF EXISTS districts CASCADE;

CREATE TABLE IF NOT EXISTS districts (
  "id" INT, 
  "name" VARCHAR,
  "wkb_geometry" geometry,
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