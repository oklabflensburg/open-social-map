#!./venv/bin/python

import os
import click
import psycopg2
import json

from shapely import wkb
from shapely.geometry import shape, Polygon
from dotenv import load_dotenv
from pathlib import Path


env_path = Path('..')/'.env'
load_dotenv(dotenv_path=env_path)


try:
    conn = psycopg2.connect(
        database = os.getenv('DB_NAME'),
        password = os.getenv('DB_PASS'),
        user = os.getenv('DB_USER'),
        host = os.getenv('DB_HOST'),
        port = os.getenv('DB_PORT')
    )
    conn.autocommit = True
except Exception as e:
    print(e)


@click.command()
@click.argument('file')
def main(file):
    cur = conn.cursor()

    with open(Path(file), 'r') as f:
        features = json.loads(f.read())['features']

    retrieve_polygon(cur, features)


def retrieve_polygon(cur, features):
    for feature in features:
        label = feature['properties']['AREA_NAME']
        district_id = int(label[:2])

        update_district(cur, district_id, feature['geometry'])


def update_district(cur, district_id, geometry):
    print(geometry)

    g = Polygon(shape(geometry))
    print(g)

    wkb_geometry = wkb.dumps(g, hex=True, srid=4326)

    sql = '''UPDATE districts SET wkb_geometry = %s WHERE id = %s'''

    cur.execute(sql, (wkb_geometry, district_id))


if __name__ == '__main__':
    main()
