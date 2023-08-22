#!./venv/bin/python

import os
import psycopg2

from tabulate import tabulate


conn = psycopg2.connect(
    database = os.environ.get('DB_NAME'),
    password = os.environ.get('DB_PASS'),
    user = os.environ.get('DB_USER'),
    host = os.environ.get('DB_HOST'),
    port = os.environ.get('DB_PORT')
)


def query_table(cur, table):
    cur.execute(f'SELECT * FROM {table}')

    rows = cur.fetchall()

    field_names = [i[0] for i in cur.description]
    print(tabulate(rows, headers=field_names, tablefmt='psql'))


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
        query_table(cur, row[0])


if __name__ == '__main__':
    main()
