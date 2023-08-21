# EXAMPLE SQL Queries


## Number of residents by districts from years 2011 and 2022 

This SQL query retrieves the number of residents by district for the years 2011 and 2022. Calculate the percentage change in residents from 2011 to 2022 for each district. Present the total number of residents as the last row and include the average of the percentage change across all districts.

```sql
WITH residents AS (
    SELECT
        year,
        SUM(residents) AS total_residents
    FROM
        residents_of_districts
    WHERE
        year IN (2011, 2022)
    GROUP BY
        year
)
SELECT *
FROM (
    SELECT
        (SELECT 'Gesamt' AS district_id),
        r1.total_residents AS total_residents_2011,
        r2.total_residents AS total_residents_2022,
        ROUND((r2.total_residents * 100.0 / r1.total_residents) - 100, 2) AS percentage_change
    FROM
        residents r1
    JOIN
        residents r2 ON r1.year = 2011 AND r2.year = 2022
    UNION ALL
    SELECT
        d.name as district_name,
        (SELECT residents FROM residents_of_districts WHERE year = 2011 AND district_id = r3.district_id) AS residents_2011,
        r3.residents AS residents_2022,
        ROUND(r3.residents * 100.0 / (SELECT residents FROM residents_of_districts WHERE year = 2011 AND district_id = r3.district_id) - 100, 2) AS percentage_change
    FROM
        residents_of_districts AS r3
    JOIN
        districts as d ON d.id = r3.district_id
    WHERE
        year = 2022
) AS q2
ORDER BY
    CASE WHEN q2.district_id = 'Gesamt' THEN 1 ELSE 0 END,
    q2.percentage_change DESC;
```

```sql
   district_id    | total_residents_2011 | total_residents_2022 | percentage_change 
------------------+----------------------+----------------------+-------------------
 Tarup            |                 4115 |                 5675 |             37.91
 Neustadt         |                 4039 |                 5052 |             25.08
 Altstadt         |                 3323 |                 3907 |             17.57
 Weiche           |                 6613 |                 7679 |             16.12
 Sandberg         |                 5949 |                 6906 |             16.09
 Nordstadt        |                10844 |                12532 |             15.57
 Jürgensby        |                 7761 |                 8562 |             10.32
 Fruerlund        |                 6242 |                 6853 |              9.79
 Südstadt         |                 3960 |                 4324 |              9.19
 Mürwik           |                14257 |                15350 |              7.67
 Westliche Höhe   |                 7884 |                 8109 |              2.85
 Friesischer Berg |                 6632 |                 6731 |              1.49
 Engelsby         |                 7829 |                 7661 |             -2.15
 Gesamt           |                89448 |                99341 |             11.06
(14 rows)
```


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

## Percentage of age_group up_to_18 in Districts

```sql
SELECT name as district_name, r.year, r.residents AS anteil_altersgruppe_stadtteil, rd.residents AS gesamt_einwohner_stadtteil, ROUND(r.residents * 100.0 / rd.residents) AS prozent_anteil FROM children_to_under_18_of_districts AS r JOIN districts as d ON d.id = district_id JOIN residents_of_districts AS rd ON d.id = rd.district_id AND r.year = rd.year WHERE r.year = 2011 ORDER BY prozent_anteil DESC, MAX(r.residents) OVER (PARTITION BY r.district_id) DESC, r.district_id, r.residents DESC;
  district_name   | year | anteil_altersgruppe_stadtteil | gesamt_einwohner_stadtteil | prozent_anteil 
```

```sql
  district_name   | year | anteil_altersgruppe_stadtteil | gesamt_einwohner_stadtteil | prozent_anteil 
------------------+------+-------------------------------+----------------------------+----------------
 Tarup            | 2011 |                           969 |                       4115 |             24
 Weiche           | 2011 |                          1455 |                       6613 |             22
 Engelsby         | 2011 |                          1438 |                       7829 |             18
 Nordstadt        | 2011 |                          1842 |                      10844 |             17
 Mürwik           | 2011 |                          2074 |                      14257 |             15
 Westliche Höhe   | 2011 |                          1151 |                       7884 |             15
 Fruerlund        | 2011 |                           901 |                       6242 |             14
 Neustadt         | 2011 |                           574 |                       4039 |             14
 Südstadt         | 2011 |                           500 |                       3960 |             13
 Friesischer Berg | 2011 |                           808 |                       6632 |             12
 Jürgensby        | 2011 |                           830 |                       7761 |             11
 Sandberg         | 2011 |                           548 |                       5949 |              9
 Altstadt         | 2011 |                           297 |                       3323 |              9
(13 rows)
```

## Percentage of age_group 18_to_65 in districts

```sql
SELECT name as district_name, r.year, r.residents AS anteil_altersgruppe_stadtteil, rd.residents AS gesamt_einwohner_stadtteil, ROUND(r.residents * 100.0 / rd.residents) AS prozent_anteil FROM residents_of_districts_age_group_18_to_65 AS r JOIN districts as d ON d.id = district_id JOIN residents_of_districts AS rd ON d.id = rd.district_id AND r.year = rd.year WHERE r.year = 2021 ORDER BY prozent_anteil DESC, MAX(r.residents) OVER (PARTITION BY r.district_id) DESC, r.district_id, r.residents DESC;

```

```sql
  district_name   | year | anteil_altersgruppe_stadtteil | gesamt_einwohner_stadtteil | prozent_anteil 
------------------+------+-------------------------------+----------------------------+----------------
 Altstadt         | 2021 |                          3093 |                       3866 |             80
 Neustadt         | 2021 |                          3736 |                       4850 |             77
 Sandberg         | 2021 |                          4983 |                       6702 |             74
 Jürgensby        | 2021 |                          5966 |                       8371 |             71
 Südstadt         | 2021 |                          2900 |                       4205 |             69
 Friesischer Berg | 2021 |                          4537 |                       6644 |             68
 Nordstadt        | 2021 |                          8419 |                      12525 |             67
 Tarup            | 2021 |                          3442 |                       5596 |             62
 Engelsby         | 2021 |                          4568 |                       7536 |             61
 Fruerlund        | 2021 |                          4133 |                       6794 |             61
 Westliche Höhe   | 2021 |                          4784 |                       8015 |             60
 Weiche           | 2021 |                          4455 |                       7472 |             60
 Mürwik           | 2021 |                          8554 |                      15301 |             56
(13 rows)
```
