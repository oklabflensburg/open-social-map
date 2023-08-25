# SQL Documentation

*This file is managed by the GitHub actions and should not be edited manually*



## Age Groups Of Residents

Entwicklung der Altersgruppen 2011 bis 2021


```sql
SELECT * FROM age_groups_of_residents;
```

```sql
 id | year | age_under_18 | age_18_to_under_30 | age_30_to_under_45 | age_45_to_under_65 | age_65_to_under_80 | age_80_and_above
----+------+--------------+--------------------+--------------------+--------------------+--------------------+------------------
  1 | 2011 |        13401 |              17944 |              17376 |              23067 |              13144 |             4581
  2 | 2017 |        14237 |              20063 |              17667 |              24741 |              13442 |             5301
  3 | 2018 |        14524 |              19992 |              18089 |              24757 |              13244 |             5581
  4 | 2019 |        14737 |              19846 |              18547 |              24744 |              13124 |             5922
  5 | 2020 |        14739 |              19237 |              18869 |              24674 |              12962 |              625
  6 | 2021 |        14947 |              19330 |              19457 |              24785 |              12885 |             6478
(6 rows)
```



## Non German Nationals Residence Status

Nicht-deutsche Staatsangehörige nach Aufenthaltsstatus (Fallzahlen 2016 bis 2021, jeweils zum 31.12.)

*Nach Angaben vom Einwanderungsbüro zum Stichtag 31.12.2021. Ein direkter Abgleich mit Daten nach Auswertung des Einwohnermelderegisters ist nicht möglich. Bei den Personen ohne langfristiges Aufenthaltsrecht handelt es sich ausschließlich um Menschen aus sog. Drittstaaten. Ihr Aufenthalt begründet sich nach dem Aufenthaltsgesetz für Drittstaatsangehörige. Die Zeile „Gesamt“ umfasst weitere Personen, die in den anderen Spalten nicht geführt werden, da sie andere Rechtsstatus haben.*


```sql
SELECT * FROM non_german_nationals_residence_status;
```

```sql
 id | year | permanent_residency | permanent_residency_according_eu_freedom_movement_act | permanent_residency_third_country_nationality | without_permanent_residency | asylum_seeker | suspension_of_deportation
----+------+---------------------+-------------------------------------------------------+-----------------------------------------------+-----------------------------+---------------+---------------------------
  1 | 2016 |                6527 |                                                  5029 |                                          1498 |                        2138 |           790 |                       146
  2 | 2017 |                7995 |                                                  6466 |                                          1529 |                        3234 |           424 |                       186
  3 | 2018 |                8363 |                                                  6865 |                                          1498 |                        3987 |           366 |                       214
  4 | 2019 |                8117 |                                                  6569 |                                          1548 |                        4585 |           287 |                       275
  5 | 2020 |                9510 |                                                  7842 |                                          1668 |                        4747 |           204 |                       252
  6 | 2021 |               10178 |                                                  8314 |                                          1864 |                        4868 |           143 |                       276
(6 rows)
```



## Household Type


```sql
SELECT * FROM household_type;
```

```sql
 id | label
----+--------------------------
  1 | male_living_alone
  2 | female_living_alone
  3 | single_father
  4 | single_mother
  5 | couples_without_children
  6 | couples_with_children
  7 | other_way_of_life
(7 rows)
```



## Debt Counseling Residents

In der Schuldnerberatung beratene Personen 2021


```sql
SELECT * FROM debt_counseling_residents;
```

```sql
 id | year | household_type_id | residents
----+------+-------------------+-----------
  1 | 2021 |                 1 |       767
  2 | 2021 |                 2 |       403
  3 | 2021 |                 3 |      NULL
  4 | 2021 |                 4 |       381
  5 | 2021 |                 5 |       350
  6 | 2021 |                 6 |       528
  7 | 2021 |                 7 |        60
(7 rows)
```



## Child Education Support

Anzahl der Hilfen zur Erziehung (Durchschnittszahlen) und ihre Verteilung auf die Hilfearten 2017 bis 2021


```sql
SELECT * FROM child_education_support;
```

```sql
 id | year | educational_assistance | parenting_counselor | pedagogical_family_assistance | child_day_care_facility | full_time_care | residential_education | integration_assistance | additional_support
----+------+------------------------+---------------------+-------------------------------+-------------------------+----------------+-----------------------+------------------------+--------------------
  1 | 2017 |                     23 |                  39 |                           142 |                      19 |            137 |                   134 |                    126 |                 10
  2 | 2018 |                     13 |                  45 |                           151 |                      22 |            116 |                   123 |                    151 |                  7
  3 | 2019 |                      7 |                  39 |                           154 |                      27 |            106 |                   120 |                    141 |                  6
  4 | 2020 |                      9 |                  31 |                           144 |                      25 |             99 |                   145 |                    152 |                  3
  5 | 2021 |                      3 |                  44 |                           148 |                      19 |             95 |                   168 |                    149 |                  4
(5 rows)
```