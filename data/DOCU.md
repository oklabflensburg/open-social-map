# EXAMPLE SQL Queries


## Show residents with migration background in 2021 ordered descending by district

```sql
SELECT year, foreign_citizenship, german_citizenship, name AS district_name FROM migration_background AS m JOIN districts as d ON d.id = m.district_id ORDER BY foreign_citizenship DESC;
```


## Show all districts ordered by residents in 2022

```sql
SELECT name as district_name, year, residents FROM residents_of_districts AS r JOIN districts as d ON d.id = district_id WHERE year = 2022 ORDER BY MAX(residents) OVER (PARTITION BY district_id) DESC, district_id, residents DESC;
```

```sql
  district_name   | year | residents 
------------------+------+-----------
 Mürwik           | 2022 |     15350
 Nordstadt        | 2022 |     12532
 Jürgensby        | 2022 |      8562
 Westliche Höhe   | 2022 |      8109
 Weiche           | 2022 |      7679
 Engelsby         | 2022 |      7661
 Sandberg         | 2022 |      6906
 Fruerlund        | 2022 |      6853
 Friesischer Berg | 2022 |      6731
 Tarup            | 2022 |      5675
 Neustadt         | 2022 |      5052
 Südstadt         | 2022 |      4324
 Altstadt         | 2022 |      3907
(13 rows)
```


## Show all districts ordered by residents and districts in 2022 and 2011

```sql
SELECT name as district_name, year, residents FROM residents_of_districts AS r JOIN districts as d ON d.id = district_id WHERE year = 2022 OR year = 2011 ORDER BY MAX(residents) OVER (PARTITION BY district_id) DESC, district_id, residents DESC;
```

```sql
  district_name   | year | residents 
------------------+------+-----------
 Mürwik           | 2022 |     15350
 Mürwik           | 2011 |     14257
 Nordstadt        | 2022 |     12532
 Nordstadt        | 2011 |     10844
 Jürgensby        | 2022 |      8562
 Jürgensby        | 2011 |      7761
 Westliche Höhe   | 2022 |      8109
 Westliche Höhe   | 2011 |      7884
 Engelsby         | 2011 |      7829
 Engelsby         | 2022 |      7661
 Weiche           | 2022 |      7679
 Weiche           | 2011 |      6613
 Sandberg         | 2022 |      6906
 Sandberg         | 2011 |      5949
 Fruerlund        | 2022 |      6853
 Fruerlund        | 2011 |      6242
 Friesischer Berg | 2022 |      6731
 Friesischer Berg | 2011 |      6632
 Tarup            | 2022 |      5675
 Tarup            | 2011 |      4115
 Neustadt         | 2022 |      5052
 Neustadt         | 2011 |      4039
 Südstadt         | 2022 |      4324
 Südstadt         | 2011 |      3960
 Altstadt         | 2022 |      3907
 Altstadt         | 2011 |      3323
(26 rows)
```

