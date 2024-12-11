# Sozialatlas 2022 der Stadt Flensburg

[![Lint javascript](https://github.com/oklabflensburg/open-social-map/actions/workflows/lint-js.yml/badge.svg)](https://github.com/oklabflensburg/open-social-map/actions/workflows/lint-js.yml)


![Screenshot Dashboard Sozialatlas](https://raw.githubusercontent.com/oklabflensburg/open-social-map/main/wiki/screenshot_dashboard.jpg)

[Aktueller Entwicklungstand](https://dev.sozialatlas.oklabflensburg.de)

_Haftungsausschluss: Dieses Repository und die zugehörige Datenbank befinden sich derzeit in einer Beta-Version. Einige Aspekte des Codes und der Daten können noch Fehler enthalten. Bitte kontaktieren Sie uns per E-Mail oder erstellen Sie ein Issue auf GitHub, wenn Sie einen Fehler entdecken._


## Datenquelle

Der Sozialatlas der Stadt Flensburg wird bereits seit 2010 jährlich veröfentlicht. Dieser beinhaltet unter anderem Auswertungen zu folgenden Bereichen: Bevölkerung, Arbeitsmarkt und Beschäftigung, Wohnen, sozialen Sicherung sowie zu Hilfen zur Erziehung. Der Sozialatlas der Stadt Flensburg wird unter folgendem Link zum [Download](https://www.flensburg.de/Leben-Soziales/Familie-Soziales/Sozialatlas) angeboten. Mit dem Sozialatlas 2022 liegt erstmals die Fortschreibung von Sozialstrukturdaten für die Stadt Flensburg und ihre 13 Stadtteile vor. Die Geodaten der einzelnen Stadtteile wurden freundlicherweise von der Stabsstelle Statistik der Stadt Flensburg zur Verfügung gestellt.


## Nutzung

Der digitale Sozialatlas soll eine Grundlage für verschiedene Planungsaktivitäten der Stadt Flensburg und deren Einwohner:innen anbieten. Ziel ist die differenzierte Beobachtung von relevanten Indikatoren, die Aufschluss über die soziale Lage der Stadt und ihrer 13 Stadtteile geben. Bitte dazu auf den Umriss eines Stadtteils klicken, um die jeweiligen Details angezeigt zu bekommen. Dies ist ein erster Prototyp. Wir möchten diesen mit Filtermöglichkeiten ausbauen.


## Prerequisites

To setup the app, make sure to follow the steps to prepare the setup.

```
sudo apt install wget
sudo apt install git git-lfs
sudo apt install python3 python3-pip python3-venv
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null
sudo apt update
sudo apt install postgresql-16 postgis gdal-bin
```


## Create system user

Make sure to add your user to the `oklab`-group.

```
sudo adduser oklab
sudo usermod -a -G www-data oklab
sudo mkdir -p /opt/oklab
sudo chown -R oklab:oklab /opt/oklab
sudo chmod 770 -R /opt/oklab
cd /opt/oklab/
```


## Prepare database

Open and edit `/etc/postgresql/16/main/pg_hba.conf` add following two entries into your config.

```
local   oklab           oklab                                   trust
host    oklab           oklab           127.0.0.1/32            trust
```

After these edits run `sudo systemctl restart postgresql.service`. To verify everything works run..

```
sudo systemctl status postgresql.service
```


Now change user `sudo -i -u postgres` and run these commands.

```
createuser -d oklab
createdb -O oklab oklab
psql -U oklab
exit
```

Note since the `oklab`-user does not have superuser permissions you must login with `psql`

```
\c oklab
CREATE EXTENSION IF NOT EXISTS postgis;
exit
```


Make sure to create a dot `.env` file and add the following enviroment variables. 

Hint: You may want to change the values accordingly to your setup policy.

```sh
DB_PASS=postgres
DB_HOST=localhost
DB_USER=oklab
DB_NAME=oklab
DB_PORT=5432
```


## Setup app

To use the all open data API endpoints you may import following data

```sh
cd ..
git clone https://github.com/oklabflensburg/open-social-map.git
cd open-social-map
psql -U oklab -h localhost -d oklab -p 5432 < data/flensburg_stadtteile.sql
cd tools
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
python3 insert_districts.py ../static/flensburg_stadtteile.geojson
deactivate
psql -U oklab -h localhost -d oklab -p 5432 < data/flensburg_sozialatlas.sql
psql -U oklab -h localhost -d oklab -p 5432 < data/flensburg_sozialatlas_metadaten.sql
```

In case you messed up anything, you can run this line but be aware it will delete all tables

```
psql -U oklab -h localhost -d oklab -p 5432 < data/cleanup_database_schema.sql
```

After running this line you must repeat all steps above to import all data


Done!


## Test query
Jetzt könnt ihr in der `PSQL` Umgebung folgende Abfrage ausführen


```sql
SELECT jsonb_build_object(
    'type', 'FeatureCollection',
    'crs', json_build_object(
        'type', 'name',
        'properties', json_build_object(
            'name', 'urn:ogc:def:crs:OGC:1.3:CRS84'
        )
    ),
    'features', jsonb_agg(fc.feature)
) AS geojson
FROM (
    SELECT jsonb_build_object(
        'type', 'Feature',
        'geometry', ST_AsGeoJSON(d.geometry)::jsonb,
        'properties', jsonb_build_object('district_id', d.id, 'district_name', d.name)
    ) AS feature
    FROM districts AS d

    -- WHERE d.id = 2
) AS fc;
```


---


## How to Contribute

Contributions are welcome! Please refer to the [CONTRIBUTING.md](CONTRIBUTING.md) guide for details on how to get involved.


---


## License

This repository is licensed under [CC0-1.0](LICENSE).
