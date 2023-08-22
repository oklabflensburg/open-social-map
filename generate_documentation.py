#!./venv/bin/python

import os
import psycopg2


conn = psycopg2.connect(
    database = os.environ.get('DB_NAME'),
    password = os.environ.get('DB_PASS'),
    user = os.environ.get('DB_USER'),
    host = os.environ.get('DB_HOST'),
    port = os.environ.get('DB_PORT')
)


def main():
    cur = conn.cursor()
    tables = []

    cur.execute('''
        SELECT tablename
        FROM pg_catalog.pg_tables
        WHERE schemaname != 'pg_catalog'
        AND schemaname != 'information_schema'
        AND tablename != 'spatial_ref_sys'
    ''')

    rows = cur.fetchall()

    for row in rows:
        tables.append(row[0])

    print(tables)


if __name__ == '__main__':
    main()