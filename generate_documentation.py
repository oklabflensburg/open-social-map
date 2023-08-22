#!./venv/bin/python

import os
import psycopg2
import tabulate

from tabulate import Line, DataRow, TableFormat


conn = psycopg2.connect(
    database = os.environ.get('DB_NAME'),
    password = os.environ.get('DB_PASS'),
    user = os.environ.get('DB_USER'),
    host = os.environ.get('DB_HOST'),
    port = os.environ.get('DB_PORT')
)


def query_table(cur, table):
    sql = f'SELECT * FROM {table}'
    cur.execute(sql)

    rows = cur.fetchall()

    field_names = [i[0] for i in cur.description]

    custom_format = TableFormat(
        lineabove=Line('', '-', '+', ''),
        linebelowheader=Line('', '-', '+', ''),
        linebetweenrows=None,
        linebelow=None,
        headerrow=DataRow('', '|', ''),
        datarow=DataRow('', '|', ''),
        padding=1,
        with_header_hide=['lineabove']
    )

    tabulate.MIN_PADDING = 0

    print('```sql')
    print(sql)
    print('```\n')

    print('```sql')
    print(tabulate.tabulate(rows, headers=field_names, missingval='NULL', tablefmt=custom_format))
    print(f'({len(rows)} rows)')
    print('```\n\n')


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
