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


def query_table_meta(cur, table):
    sql = f'SELECT * FROM table_meta_information WHERE name = \'{table}\''
    cur.execute(sql)

    row = cur.fetchone()

    return row


def query_table(cur, table, eof):
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
    title = table.replace('_', ' ').title()
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
                meta_hint = f'*{meta[3]}*\n\n'
        except IndexError:
            pass
    
    table_title = f'\n## {title}\n\n'
    table_query = f'\n```sql\n{sql};\n```\n\n'
    table_data = tabulate.tabulate(rows, headers=field_names, missingval='NULL', tablefmt=custom_format)
    table_result = f'```sql\n{table_data}\n({len(rows)} rows)\n```'
    table_end = ''

    if eof != True:
        table_end = f'\n\n\n'

    return f'{table_title}{meta_title}{meta_hint}{table_query}{table_result}{table_end}'


def main():
    create_markdown()
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

        query_data = query_table(cur, row[0], eof)
        write_markdown(query_data)


if __name__ == '__main__':
    main()
