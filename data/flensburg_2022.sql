CREATE TABLE IF NOT EXISTS age_group (
    `description` TEXT,
    `residents` INT,
    `year` INT
);

INSERT INTO age_group VALUES ('18 bis unter 65',64563,2022),
	('65 und älter',19483,2022),
	('0 bis unter 18',15295,2022);


CREATE TABLE IF NOT EXISTS marital_status (
    `status` TEXT,
    `male` INT,
    `female` INT,
    `year` INT
);

INSERT INTO marital_status VALUES ('aufgehobene Lebenspartnerschaft',11,12,2022),
	('aufgelöste Lebenspartnerschaft',6,2,2022),
	('eing. Lebenspartnerschaft',32,42,2022),
	('geschieden',3507,5172,2022),
	('ledig',26412,22585,2022),
	('nicht bekannt',1572,1420,2022),
	('verheiratet',16443,16374,2022),
	('verwitwet',1244,4507,2022);



CREATE TABLE IF NOT EXISTS gender (
    `male` INT,
    `female` INT,
    `year` INT
);

INSERT INTO gender VALUES (49227,50114,2022);


CREATE TABLE IF NOT EXISTS migration_background (
    `description` TEXT,
    `residents` INT,
    `year` INT
);

INSERT INTO migration_background VALUES ('Nicht Deutsch',18222,2022),
	('Deutsch Einbürgerung',8628,2022),
	('Deutsch Aussiedler',3991,2022),
	('Deutsch Sonstiger Nachweis',68500,2022);


CREATE TABLE IF NOT EXISTS religious_affiliation (
    `description` TEXT,
    `residents` INT,
    `year` INT
);

INSERT INTO religious_affiliation VALUES ('evangelisch',34916,2022),
	('keine Zugehörigkeit zu einer öffentlich-rechtlichen Religionsgesellschaft',53978,2022),
	('römisch-katholisch',5317,2022),
	('sonstige öffentlich-rechtliche Religionsgesellschaften',5130,2022);


CREATE TABLE IF NOT EXISTS nationalities (
    `description` TEXT,
    `residents` INT,
    `year` INT
);

INSERT INTO nationalities VALUES ('deutsch',81119,2022),
	('rumänisch',3211,2022),
	('syrisch',2541,2022),
	('dänisch',2168,2022),
	('ukrainisch',1080,2022),
	('polnisch',860,2022),
	('afghanisch',747,2022),
	('türkisch',746,2022),
	('irakisch',673,2022),
	('bulgarisch',671,2022);


CREATE TABLE IF NOT EXISTS residence_variant (
  "description" TEXT,
  "residents" INT,
  "year" INT
);

INSERT INTO residence_variant VALUES ('Hauptwohnung',99341,2022),
  ('Nebenwohnung',1892,2022);
