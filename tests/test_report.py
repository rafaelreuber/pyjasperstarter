import os
import unittest
from subprocess import Popen, PIPE
from datetime import datetime, date

from bs4 import BeautifulSoup

import jasperstarter
from jasperstarter import Jasper, Jrxml
from jasperstarter.exeptions import JrxmlNotFound
from jasperstarter.exeptions import UnsupportedFormat


class JrxmlTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = os.path.join(os.path.dirname(__file__), "invoices.jrxml")

    def tearDown(self):
        if os.path.exists("invoices.jasper"):
            os.remove("invoices.jasper")

    def test_compile(self):
        jrxml = Jrxml(self.jxml_file)
        jrxml.compile()
        self.assertTrue(os.path.exists("invoices.jasper"))

    def test_report_compile_should_raise_exeption_if_the_jrxml_not_found(self):
        with self.assertRaises(JrxmlNotFound):
            jrxml = Jrxml('imnotarobot.jrxml')
            jrxml.compile()

    def test_params(self):
        jrxml = Jrxml(self.jxml_file)
        pairs = zip(jrxml.params, [{'name': 'companyName', 'class': 'java.lang.String'},
                                   {'name': 'beginDate', 'class': 'java.lang.String'}])
        self.assertTrue(all(x == y for x, y in pairs))

    def test_query(self):
        jrxml = Jrxml(self.jxml_file)
        self.assertEqual(jrxml.query, ".")


class JasperTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = os.path.join(os.path.dirname(__file__), "sample01.jrxml")

        self.data = [
            {"name": "John", "invoiceNum": "001", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Ian", "invoiceNum": "002", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Dany", "invoiceNum": "003", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Rafael", "invoiceNum": "004", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Jose", "invoiceNum": "005", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Lana", "invoiceNum": "006", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Reuber", "invoiceNum": "007", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Sebastian", "invoiceNum": "008", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Sammy", "invoiceNum": "009", "value": 5000.32, "dueDate": datetime.now()},
            {"name": "Luna", "invoiceNum": "010", "value": 5000.32, "dueDate": datetime.now()}
        ]
        self.FORMATS = jasperstarter.FORMATS

    def tearDown(self):
        jasperstarter.FORMATS = self.FORMATS
        if os.path.exists("invoices.jasper"):
            os.remove("invoices.jasper")
        if os.path.exists("invoices.pdf"):
            os.remove("invoices.pdf")

    def test_execute_should_return_the_pdf_file(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        file = jasper.execute(self.data, "pdf", compile=True)
        popen = Popen("/usr/bin/file -b --mime -", shell=True, stdout=PIPE, stdin=PIPE)
        filetype = popen.communicate(file)[0].strip()
        self.assertEqual(filetype.decode(), 'application/pdf; charset=binary')

    def test_execute_with_empty_query(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        file = jasper.execute(self.data, "html", query=None, compile=True)

        soup = BeautifulSoup(file)

        table = soup.find('table', class_='jrPage')
        lines = table.find_all('span', attrs={
            'style': 'font-family: Times New Roman; color: #000000; font-size: 14px; line-height: 1.1499023;'})
        self.assertEqual(len(lines), 12)

    def test_name_attribute(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        self.assertEquals(jasper.name, "invoices")

    def test_raise_error_if_use_a_unsopported_file_type(self):
        with self.assertRaises(UnsupportedFormat):
            jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
            jasper.execute(self.data, "mp3")

    def test_resource_dir(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        curdir = os.path.abspath(os.path.curdir)
        self.assertEqual(jasper.resource_dir, curdir)

    def test_execute_should_return_the_error_message_raised_by_comand_line(self):
        jasperstarter.FORMATS = ['mp3']
        jasper = Jasper("invoices.jrxml")
        from jasperstarter.exeptions import JRRuntimeError
        with self.assertRaises(JRRuntimeError) as err:
            jasper.execute({}, format='mp3', compile=True)
        self.assertTrue("could  not  convert  'mp3'" in str(err.exception))

    def test_parameters_cmd(self):
        params = {'company': 'Vortex', 'beginDate': '2019-28-01', 'age': 32}
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        pcmd = jasper._parameters_cmd(params)
        self.assertEqual(['company=Vortex', 'beginDate=2019-28-01', 'age=32'], pcmd)

    def test_parameters_shold_be_rended_on_report(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        today = date.today().isoformat()
        output = jasper.execute(self.data, format="html",
            params={'companyName': 'Vortex', 'beginDate': today})

        soup = BeautifulSoup(output)
        self.assertEqual(1, len(soup.find_all('span', string='Vortex')))
        self.assertEqual(1, len(soup.find_all('span', string=today)))


class JasperStarterVersion(unittest.TestCase):

    def test_get_jasper_starter_version(self):
        from jasperstarter import get_jasper_starter_version
        self.assertIsNotNone(get_jasper_starter_version())