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



## Compare births in 2021 and 2011 by each district

```sql
SELECT name as district_name, year, births, birth_rate FROM number_of_births_by_districts AS n JOIN districts as d ON d.id = district_id WHERE year = 2011 OR year = 2021 ORDER BY MAX(births) OVER (PARTITION BY district_id) DESC, district_id, births DESC;
```

```sql
  district_name   | year | births | birth_rate 
------------------+------+--------+------------
 Mürwik           | 2021 |    145 |       58.0
 Mürwik           | 2011 |     32 |       40.3
 Nordstadt        | 2021 |    124 |       49.5
 Nordstadt        | 2011 |     61 |       38.8
 Sandberg         | 2011 |    122 |       56.3
 Sandberg         | 2021 |     58 |       34.3
 Weiche           | 2011 |    119 |       51.3
 Weiche           | 2021 |     55 |       45.0
 Tarup            | 2011 |     78 |       50.9
 Tarup            | 2021 |     41 |       37.0
 Engelsby         | 2021 |     76 |       60.7
 Engelsby         | 2011 |     53 |       44.2
 Jürgensby        | 2021 |     73 |       37.3
 Jürgensby        | 2011 |     39 |       27.1
 Westliche Höhe   | 2021 |     69 |       45.0
 Westliche Höhe   | 2011 |     41 |       33.9
 Neustadt         | 2021 |     61 |       47.2
 Neustadt         | 2011 |     53 |       35.8
 Fruerlund        | 2021 |     59 |       48.0
 Fruerlund        | 2011 |     45 |       52.2
 Friesischer Berg | 2011 |     56 |       30.1
 Friesischer Berg | 2021 |     55 |       36.0
 Südstadt         | 2021 |     51 |       54.2
 Südstadt         | 2011 |     46 |       44.1
 Altstadt         | 2021 |     31 |       28.3
 Altstadt         | 2011 |     29 |       30.4
(26 rows)
```
