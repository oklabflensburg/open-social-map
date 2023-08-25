SELECT *
FROM (
    SELECT 
        id AS district_id,
        name AS district_name,
        ROUND(CAST(ST_Area(geometry) / 1000000 AS numeric), 2) AS district_area
    FROM districts
) AS a
ORDER BY a.district_area DESC;
