# EXAMPLE SQL Queries


## Show all districts with square kilometers in 2021

```sql
WITH cte AS (
    SELECT
        d.id AS district_id,
        d.name AS district_name,
        rd.residents,
        ROUND(CAST(ST_Area(geometry) / 1000000 AS numeric), 2) AS district_area
    FROM districts AS d
    JOIN residents_by_districts AS rd ON d.id = rd.district_id
    WHERE rd.year = 2021
)
SELECT *
FROM cte
ORDER BY cte.district_area DESC;
```

```sql
 district_id |  district_name   | residents | district_area
-------------+------------------+-----------+---------------
           6 | Weiche           |      7472 |          8.04
          11 | Mürwik           |     15301 |          6.54
          13 | Tarup            |      5596 |          5.27
           7 | Südstadt         |      4205 |          5.17
           4 | Westliche Höhe   |      8015 |          4.68
           5 | Friesischer Berg |      6644 |          4.23
           3 | Nordstadt        |     12525 |          4.07
          12 | Engelsby         |      7536 |          3.75
          10 | Fruerlund        |      6794 |          2.51
           8 | Sandberg         |      6702 |          2.33
           9 | Jürgensby        |      8371 |          1.41
           1 | Altstadt         |      3866 |          0.57
           2 | Neustadt         |      4850 |          0.47
(13 rows)
```



## Compare number of residents by districts from 2011 to 2022

This SQL query retrieves the number of residents by district for the years 2011 and 2022. Calculate the percentage change in residents from 2011 to 2022 for each district. Present the total number of residents as the last row and include the average of the percentage change across all districts.

```sql
WITH residents AS (
    SELECT
        year,
        SUM(residents) AS total_residents
    FROM
        residents_by_districts
    WHERE
        year IN (2011, 2022)
    GROUP BY
        year
)
SELECT *
FROM (
    SELECT
        (SELECT 'Gesamt' AS district_name),
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
        (SELECT residents FROM residents_by_districts WHERE year = 2011 AND district_id = r3.district_id) AS residents_2011,
        r3.residents AS residents_2022,
        ROUND(r3.residents * 100.0 / (SELECT residents FROM residents_by_districts WHERE year = 2011 AND district_id = r3.district_id) - 100, 2) AS percentage_change
    FROM
        residents_by_districts AS r3
    JOIN
        districts as d ON d.id = r3.district_id
    WHERE
        year = 2022
) AS q2
ORDER BY
    CASE WHEN q2.district_name = 'Gesamt' THEN 1 ELSE 0 END,
    q2.percentage_change DESC;
```

```sql
  district_name   | total_residents_2012 | total_residents_2022 | percentage_change
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



## Show residents with migration background in 2021

```sql
SELECT
    m.year,
    m.foreign_citizenship,
    m.german_citizenship,
    d.name AS district_name
FROM
    migration_background_by_districts AS m
JOIN
    districts AS d ON d.id = m.district_id
ORDER BY
    m.foreign_citizenship DESC;
```

```sql
 year | foreign_citizenship | german_citizenship |  district_name
------+---------------------+--------------------+------------------
 2021 |                4109 |               1673 | Nordstadt
 2021 |                1748 |                443 | Neustadt
 2021 |                1623 |               2082 | Mürwik
 2021 |                1273 |                699 | Jürgensby
 2021 |                1158 |                991 | Westliche Höhe
 2021 |                1117 |                601 | Sandberg
 2021 |                 999 |                375 | Altstadt
 2021 |                 946 |               1335 | Engelsby
 2021 |                 933 |               1222 | Weiche
 2021 |                 919 |                517 | Südstadt
 2021 |                 907 |                778 | Friesischer Berg
 2021 |                 645 |                927 | Fruerlund
 2021 |                 244 |                865 | Tarup
(13 rows)
```



## Show all districts ordered by residents in 2022

```sql
SELECT
    district_name,
    residents
FROM (
    SELECT
        d.name AS district_name,
        r.year,
        r.residents,
        1 AS sort_order
    FROM
        residents_by_districts AS r
    JOIN
        districts AS d ON d.id = r.district_id
    WHERE
        r.year = 2022
    UNION ALL
    SELECT
        'Gesamt' AS district_name,
        2022 AS year,
        SUM(r.residents) AS residents,
        2 AS sort_order
    FROM
        residents_by_districts AS r
    WHERE
        r.year = 2022
) AS combined_data
ORDER BY
    sort_order,
    district_name;
```

```sql
  district_name   | residents
------------------+-----------
 Altstadt         |      3907
 Engelsby         |      7661
 Friesischer Berg |      6731
 Fruerlund        |      6853
 Jürgensby        |      8562
 Mürwik           |     15350
 Neustadt         |      5052
 Nordstadt        |     12532
 Sandberg         |      6906
 Südstadt         |      4324
 Tarup            |      5675
 Weiche           |      7679
 Westliche Höhe   |      8109
 Gesamt           |     99341
(14 rows)
```


## Compare residents from 2011 to 2022 by each district

```sql
SELECT
    d.name AS district_name,
    MAX(CASE WHEN r.year = 2011 THEN r.residents END) AS residents_2011,
    MAX(CASE WHEN r.year = 2022 THEN r.residents END) AS residents_2022
FROM
    residents_by_districts AS r
JOIN
    districts AS d ON d.id = r.district_id
WHERE
    r.year IN (2011, 2022)
GROUP BY
    d.name
ORDER BY
    residents_2022 DESC,
    district_name;
```

```sql
  district_name   | residents_2011 | residents_2022
------------------+----------------+----------------
 Mürwik           |          14257 |          15350
 Nordstadt        |          10844 |          12532
 Jürgensby        |           7761 |           8562
 Westliche Höhe   |           7884 |           8109
 Weiche           |           6613 |           7679
 Engelsby         |           7829 |           7661
 Sandberg         |           5949 |           6906
 Fruerlund        |           6242 |           6853
 Friesischer Berg |           6632 |           6731
 Tarup            |           4115 |           5675
 Neustadt         |           4039 |           5052
 Südstadt         |           3960 |           4324
 Altstadt         |           3323 |           3907
(13 rows)
```



## Compare births in 2011 and 2021 by each district

```sql
SELECT
    district_name,
    year_2011,
    year_2021,
    births_2011,
    births_2021,
    birth_rate_2011,
    birth_rate_2021
FROM (
    SELECT
        d.id AS district_id,
        d.name AS district_name,
        MAX(CASE WHEN b.year = 2011 THEN b.year END) AS year_2011,
        MAX(CASE WHEN b.year = 2021 THEN b.year END) AS year_2021,
        MAX(CASE WHEN b.year = 2011 THEN b.births END) AS births_2011,
        MAX(CASE WHEN b.year = 2021 THEN b.births END) AS births_2021,
        MAX(CASE WHEN b.year = 2011 THEN b.birth_rate END) AS birth_rate_2011,
        MAX(CASE WHEN b.year = 2021 THEN b.birth_rate END) AS birth_rate_2021
    FROM
        births_by_districts AS b
    JOIN
        districts AS d ON d.id = b.district_id
    WHERE
        b.year IN (2011, 2021)
    GROUP BY
        d.id, d.name
) AS subquery
ORDER BY
    GREATEST(births_2011, births_2021) DESC,
    district_id,
    births_2021 DESC;
```

```sql
  district_name   | year_2011 | year_2021 | births_2011 | births_2021 | birth_rate_2011 | birth_rate_2021
------------------+-----------+-----------+-------------+-------------+-----------------+-----------------
 Mürwik           |      2011 |      2021 |          32 |         145 |            40.3 |            58.0
 Nordstadt        |      2011 |      2021 |          61 |         124 |            38.8 |            49.5
 Sandberg         |      2011 |      2021 |         122 |          58 |            56.3 |            34.3
 Weiche           |      2011 |      2021 |         119 |          55 |            51.3 |            45.0
 Tarup            |      2011 |      2021 |          78 |          41 |            50.9 |            37.0
 Engelsby         |      2011 |      2021 |          53 |          76 |            44.2 |            60.7
 Jürgensby        |      2011 |      2021 |          39 |          73 |            27.1 |            37.3
 Westliche Höhe   |      2011 |      2021 |          41 |          69 |            33.9 |            45.0
 Neustadt         |      2011 |      2021 |          53 |          61 |            35.8 |            47.2
 Fruerlund        |      2011 |      2021 |          45 |          59 |            52.2 |            48.0
 Friesischer Berg |      2011 |      2021 |          56 |          55 |            30.1 |            36.0
 Südstadt         |      2011 |      2021 |          46 |          51 |            44.1 |            54.2
 Altstadt         |      2011 |      2021 |          29 |          31 |            30.4 |            28.3
(13 rows)
```



## Percentage of residents in age under 18 by districts in 2011

```sql
WITH AgeGroupPercentage AS (
    SELECT
        r.district_id,
        r.residents AS anteil_altersgruppe,
        rd.residents AS gesamt_einwohner,
        ROUND(r.residents * 100.0 / rd.residents, 2) AS prozent_anteil
    FROM
        children_age_under_18_by_districts AS r
    JOIN
        residents_by_districts AS rd ON r.district_id = rd.district_id AND r.year = rd.year
    WHERE
        r.year = 2011
)
SELECT
    d.name AS district_name,
    agp.anteil_altersgruppe,
    agp.gesamt_einwohner,
    agp.prozent_anteil
FROM
    AgeGroupPercentage AS agp
JOIN
    districts AS d ON d.id = agp.district_id
ORDER BY
    agp.prozent_anteil DESC,
    MAX(agp.anteil_altersgruppe) OVER (PARTITION BY agp.district_id) DESC,
    agp.district_id,
    agp.anteil_altersgruppe DESC;
```

```sql
  district_name   | anteil_altersgruppe | gesamt_einwohner | prozent_anteil
------------------+---------------------+------------------+----------------
 Tarup            |                 969 |             4115 |          23.55
 Weiche           |                1455 |             6613 |          22.00
 Engelsby         |                1438 |             7829 |          18.37
 Nordstadt        |                1842 |            10844 |          16.99
 Westliche Höhe   |                1151 |             7884 |          14.60
 Mürwik           |                2074 |            14257 |          14.55
 Fruerlund        |                 901 |             6242 |          14.43
 Neustadt         |                 574 |             4039 |          14.21
 Südstadt         |                 500 |             3960 |          12.63
 Friesischer Berg |                 808 |             6632 |          12.18
 Jürgensby        |                 830 |             7761 |          10.69
 Sandberg         |                 548 |             5949 |           9.21
 Altstadt         |                 297 |             3323 |           8.94
(13 rows)
```



## Percentage of residents in age 18 to 65 by districts in 2011

```sql
WITH AgeGroupPercentage AS (
    SELECT
        r.district_id,
        r.residents AS anteil_altersgruppe,
        rd.residents AS gesamt_einwohner,
        ROUND(r.residents * 100.0 / rd.residents, 2) AS prozent_anteil
    FROM
        residents_age_18_to_under_65_by_districts AS r
    JOIN
        residents_by_districts AS rd ON r.district_id = rd.district_id AND r.year = rd.year
    WHERE
        r.year = 2021
)
SELECT
    d.name AS district_name,
    agp.anteil_altersgruppe,
    agp.gesamt_einwohner,
    agp.prozent_anteil
FROM
    AgeGroupPercentage AS agp
JOIN
    districts AS d ON d.id = agp.district_id
ORDER BY
    agp.prozent_anteil DESC,
    MAX(agp.anteil_altersgruppe) OVER (PARTITION BY agp.district_id) DESC,
    agp.district_id,
    agp.anteil_altersgruppe DESC;
```

```sql
  district_name   | anteil_altersgruppe | gesamt_einwohner | prozent_anteil
------------------+---------------------+------------------+----------------
 Altstadt         |                3093 |             3866 |          80.01
 Neustadt         |                3736 |             4850 |          77.03
 Sandberg         |                4983 |             6702 |          74.35
 Jürgensby        |                5966 |             8371 |          71.27
 Südstadt         |                2900 |             4205 |          68.97
 Friesischer Berg |                4537 |             6644 |          68.29
 Nordstadt        |                8419 |            12525 |          67.22
 Tarup            |                3442 |             5596 |          61.51
 Fruerlund        |                4133 |             6794 |          60.83
 Engelsby         |                4568 |             7536 |          60.62
 Westliche Höhe   |                4784 |             8015 |          59.69
 Weiche           |                4455 |             7472 |          59.62
 Mürwik           |                8554 |            15301 |          55.90
(13 rows)
```
