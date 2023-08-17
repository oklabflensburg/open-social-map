# EXAMPLE SQL Queries


## Show residents with migration background in 2021 ordered descending by district

```sql
SELECT year, foreign_citizenship, german_citizenship, name AS district_name FROM migration_background AS m JOIN districts as d ON d.id = m.district_id ORDER BY foreign_citizenship DESC;
```
