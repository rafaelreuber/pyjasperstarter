
import os
import unittest
import sqlite3

from jasperstarter.query import SQL
from jasperstarter import Jasper


DATA_DIR = os.path.join(os.path.dirname(__file__), "data")
REPOSITORY = os.path.join(os.path.dirname(__file__), "repository")


class TestSQL(unittest.TestCase):

    def test_parameter_as_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{org_id}")
        self.assertEqual(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :org_id")

    def test_parameter_repetition_as_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{invoice_id}")
        self.assertEqual(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :invoice_id")

    def test_parameter_repetition_as_lower_case_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{INVOICE_ID}")
        self.assertEqual(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :invoice_id")


class QueryAdapter(unittest.TestCase):

    def setUp(self):
        self.conn = sqlite3.connect('jasperstarter.db')
        cursor = self.conn.cursor()
        try:
            self.conn.execute('drop table EMPLOYEES')
        except sqlite3.OperationalError:
            pass
        with open(os.path.join(DATA_DIR, "EMPLOYEES.ddl")) as f:
            statements = f.read().split(";")
            for stmt in statements:
                cursor.execute(stmt)
        self.conn.commit()

    def tearDown(self):
        self.conn.execute('drop table EMPLOYEES')

    def test_should_execute_a_jasper_report_as_dbapi_query(self):
        employees = Jasper(os.path.join(REPOSITORY, 'Emproyees.jrxml'))
        from jasperstarter.query import DbapiAdapter

        adapter = DbapiAdapter(employees)
        data = adapter.run(self.conn)

        file = employees.execute(data=data, format='pdf', compile=True)
        self.assertIsInstance(file, bytes)

        file = employees.execute(data=data, format='xlsx', compile=True)
        self.assertIsInstance(file, bytes)