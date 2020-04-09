import os
import unittest
import logging
from subprocess import Popen, PIPE
from datetime import datetime, date

from bs4 import BeautifulSoup

import jasperstarter
from jasperstarter import Jasper, Jrxml
from jasperstarter.exeptions import JrxmlInvalidError
from jasperstarter.exeptions import UnsupportedFormat

logging.getLogger().setLevel(logging.DEBUG)


class JrxmlTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = os.path.join(os.path.dirname(__file__), "invoices.jrxml")
        self.base_path = os.path.dirname(__file__)

    def tearDown(self):
        if os.path.exists("invoices.jasper"):
            os.remove("invoices.jasper")

    def test_compile(self):
        jrxml = Jrxml(self.jxml_file)
        jrxml.compile()
        self.assertTrue(os.path.exists(
            os.path.join(os.path.dirname(__file__), "invoices.jasper")))

    def test_report_compile_should_raise_exeption_if_the_jrxml_not_found(self):
        with self.assertRaises(JrxmlInvalidError):
            jrxml = Jrxml('imnotarobot.jrxml')
            jrxml.compile()

    def test_report_compile_should_raise_exeption_if_the_jrxml_not_found(self):
        with self.assertRaises(JrxmlInvalidError):
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

    def test_should_consider_subdatset_query_if_the_main_query_is_empty(self):
        jrxml = Jrxml(os.path.join(self.base_path, 'fornecedor.jrxml'))
        self.assertEqual("select vendor_name, creation_date from apps.ap_suppliers", jrxml.query)

    def test_get_metadata_from_sources(self):
        with open(self.jxml_file, 'r') as f:
            xml = f.read()
        self.assertIsNotNone(Jrxml.get_meta_from_source(xml))


class JasperTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = os.path.join(os.path.dirname(__file__), "sample01.jrxml")
        self.base_path = os.path.dirname(__file__)

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
        if os.path.exists(os.path.join(self.base_path, "invoices.jasper")):
            os.remove(os.path.join(self.base_path, "invoices.jasper"))

        pdf_file = os.path.join(self.base_path, "invoices.pdf")
        html_file = os.path.join(self.base_path, "invoices.html")

        if os.path.exists(pdf_file):
            os.remove(pdf_file)
        if os.path.exists(html_file):
            os.remove(html_file)

    def test_execute_should_return_the_pdf_file(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        file = jasper.execute(self.data, "pdf", compile=True)
        popen = Popen("/usr/bin/file -b --mime -", shell=True, stdout=PIPE, stdin=PIPE)
        filetype = popen.communicate(file)[0].strip()
        self.assertEqual(filetype.decode(), 'application/pdf; charset=binary')

    def test_execute_with_empty_query(self):
        jasper = Jasper(os.path.join(self.base_path, "invoices.jrxml"))
        file = jasper.execute(self.data, "html", query=None, compile=True)

        soup = BeautifulSoup(file, features="html.parser")

        table = soup.find('table', class_='jrPage')
        lines = table.find_all('tr', attrs={'style': 'height:18px'})
        self.assertEqual(len(lines), 11)

    def test_name_attribute(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        self.assertEqual(jasper.name, "invoices")

    def test_raise_error_if_use_a_unsopported_file_type(self):
        with self.assertRaises(UnsupportedFormat):
            jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
            jasper.execute(self.data, "mp3")

    def test_resource_dir(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        self.assertEqual(jasper.resource_dir, self.base_path)

    def test_execute_should_return_the_error_message_raised_by_comand_line(self):
        jasperstarter.FORMATS = ['mp3']
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        from jasperstarter.exeptions import JRRuntimeError
        with self.assertRaises(JRRuntimeError) as err:
            jasper.execute({}, format='mp3')
        self.assertTrue("could  not  convert  'mp3'" in str(err.exception))

    def test_parameters_cmd(self):
        params = {'company': 'Vortex', 'beginDate': '2019-28-01', 'age': 32}
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        pcmd = jasper._parameters_cmd(params)
        self.assertEqual(['company=Vortex', 'beginDate=2019-28-01', 'age=32'], pcmd)

    def test_report_parameters(self):
        jasper = Jasper(os.path.join(os.path.dirname(__file__), "invoices.jrxml"))
        today = date.today().isoformat()
        output = jasper.execute(
            self.data, format="html", params={'companyName': 'Vortex', 'beginDate': today}, compile=True)

        soup = BeautifulSoup(output, features="html.parser")
        self.assertEqual(1, len(soup.find_all('span', string='Vortex')))
        self.assertEqual(1, len(soup.find_all('span', string=today)))


class JasperStarterVersion(unittest.TestCase):

    def test_get_jasper_starter_version(self):
        from jasperstarter import get_jasper_starter_version
        self.assertIsNotNone(get_jasper_starter_version())