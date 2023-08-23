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


def create_markdown():
    header = '# SQL Documentation\n\n'
    hint = '*This file is managed by the GitHub actions and should not be edited manually*\n\n\n'

    data = f'{header}{hint}'

    with open('SQL.md', 'w') as f:
        f.write(data)


def write_markdown(data):
    with open('SQL.md', 'a') as f:
        f.write(data)


def query_table(cur, table, eof):
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
    title = table.replace('_', ' ').title()

    table_title = f'## {title}\n\n'
    table_query = f'```sql\n{sql};\n```\n\n'
    table_data = tabulate.tabulate(rows, headers=field_names, missingval='NULL', tablefmt=custom_format)
    table_result = f'```sql\n{table_data}\n({len(rows)} rows)\n```'
    table_end = ''

    if eof != True:
        table_end = f'\n\n\n'

    return f'{table_title}{table_query}{table_result}{table_end}'


def main():
    create_markdown()
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
    row_count = len(rows)
    eof = False

    for idx, row in enumerate(rows):
        if idx + 1 == row_count:
            eof = True

        query_data = query_table(cur, row[0], eof)
        write_markdown(query_data)


if __name__ == '__main__':
    main()
