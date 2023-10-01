#!./venv/bin/python

import os
import tabulate
import psycopg2
import click

from dotenv import load_dotenv
from tabulate import Line, DataRow, TableFormat
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
except Exception as e:
    print(e)


def create_markdown(path):
    header = '# SQL Documentation\n\n'
    hint = 'This file is managed by the GitHub actions and should not be edited manually\n\n\n'

    data = f'{header}{hint}'

    with open(path, 'w') as f:
        f.write(data)


def write_markdown(path, data):
    with open(path, 'a') as f:
        f.write(data)


def query_table_meta(cur, table):
    sql = f'SELECT * FROM table_meta_information WHERE name = \'{table}\''
    cur.execute(sql)

    row = cur.fetchone()

    return row


def query_table(cur, table, idx, eof):
    meta = query_table_meta(cur, table)

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

    meta_title = ''
    meta_hint = ''

    if meta is not None:
        try:
            if meta[2] is not None:
                meta_title = f'{meta[2]}\n\n'
        except IndexError:
            pass

        try:
            if meta[3] is not None:
                meta_hint = f'> {meta[3]}\n\n'
        except IndexError:
            pass
    
    table_title = f'\n## Tabelle {idx + 1}\n\n'
    table_query = f'\n```sql\n{sql};\n```\n\n'
    table_data = tabulate.tabulate(rows, headers=field_names, missingval='NULL', tablefmt=custom_format)
    table_result = f'```sql\n{table_data}\n({len(rows)} rows)\n```'
    table_end = ''

    if eof != True:
        table_end = f'\n\n\n'

    return f'{table_title}{meta_title}{meta_hint}{table_query}{table_result}{table_end}'


@click.command()
@click.argument('filepath')
def main(filepath):
    tables_path = Path(filepath)

    create_markdown(tables_path)
    cur = conn.cursor()
    tables = []

    cur.execute('''
        SELECT name
        FROM table_meta_information
    ''')

    rows = cur.fetchall()
    row_count = len(rows)
    eof = False

    for idx, row in enumerate(rows):
        if idx + 1 == row_count:
            eof = True

        query_data = query_table(cur, row[0], idx, eof)
        write_markdown(tables_path, query_data)


if __name__ == '__main__':
    main()
