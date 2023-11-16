"""Скрипт для заполнения данными таблиц в БД Postgres."""
import csv
import psycopg2


conn = psycopg2.connect(
    host="localhost",
    database="north",
    user="postgres",
    password="rocknroll96"
)


with open('north_data/customers_data.csv', encoding="UTF-8") as file:
    reader = csv.DictReader(file)
    with conn:
        with conn.cursor() as cur:
            for string in reader:
                cur.execute("INSERT INTO customers VALUES (%s, %s, %s)", (
                    string['customer_id'],
                    string['company_name'],
                    string['contact_name']
                ))


with open('north_data/employees_data.csv', encoding="UTF-8") as file:
    reader = csv.DictReader(file)
    with conn:
        with conn.cursor() as cur:
            for string in reader:
                cur.execute("INSERT INTO employees VALUES (%s, %s, %s, %s, %s, %s)", (
                    string['employee_id'],
                    string['first_name'],
                    string['last_name'],
                    string['title'],
                    string['birth_date'],
                    string['notes']
                ))


with open('north_data/orders_data.csv', encoding="UTF-8") as file:
    reader = csv.DictReader(file)
    with conn:
        with conn.cursor() as cur:
            for string in reader:
                cur.execute("INSERT INTO orders VALUES (%s, %s, %s, %s, %s)", (
                    string['order_id'],
                    string['customer_id'],
                    string['employee_id'],
                    string['order_date'],
                    string['ship_city']
                ))

