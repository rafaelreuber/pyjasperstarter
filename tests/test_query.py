
import unittest
from jasperstarter.query import SQL


class TestSQL(unittest.TestCase):

    def test_parameter_as_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{org_id}")
        self.assertEquals(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :org_id")

    def test_parameter_repetition_as_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{invoice_id}")
        self.assertEquals(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :invoice_id")

    def test_parameter_repetition_as_lower_case_dbapi(self):
        sql = SQL("select * from invoices where invoice_id = $P{invoice_id} and $P{INVOICE_ID}")
        self.assertEquals(sql.to_dbapi(), "select * from invoices where invoice_id = :invoice_id and :invoice_id")