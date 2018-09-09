import os
import unittest

from bs4 import BeautifulSoup

from jasperstarter import Jasper, Jrxml
from jasperstarter.exeptions import JrxmlNotFound
from jasperstarter.exeptions import UnsupportedFormat


class JrxmlTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = "sample01.jrxml"

    def tearDown(self):
        if os.path.exists("sample01.jasper"):
            os.remove("sample01.jasper")

    def test_compile(self):
        jrxml = Jrxml(self.jxml_file)
        jrxml.compile()
        self.assertTrue(os.path.exists("sample01.jasper"))

    def test_report_compile_should_raise_exeption_if_the_jrxml_not_found(self):
        with self.assertRaises(JrxmlNotFound):
            jrxml = Jrxml('imnotarobot.jrxml')
            jrxml.compile()


class JasperTestCase(unittest.TestCase):

    def setUp(self):
        self.jxml_file = "sample01.jrxml"
        self.data = [
            {
                "codigo_municipio": "131",
                "nome_municipio": "PARAMOTI",
                "geoibgeId": "2310407"
            },
            {
                "codigo_municipio": "132",
                "nome_municipio": "PEDRA BRANCA",
                "geoibgeId": "2310506"
            },
            {
                "codigo_municipio": "133",
                "nome_municipio": "PENAFORTE",
                "geoibgeId": "2310605"
            },
            {
                "codigo_municipio": "134",
                "nome_municipio": "PENTECOSTE",
                "geoibgeId": "2310704"
            }
        ]

    def tearDown(self):
        if os.path.exists("municipios.jasper"):
            os.remove("municipios.jasper")
        if os.path.exists("municipios.pdf"):
            os.remove("municipios.pdf")

    def test_execute_should_return_the_pdf_file(self):
        jasper = Jasper("municipios.jrxml")
        file = jasper.execute(self.data, "pdf")
        self.assertTrue(os.path.isfile(file))

    def test_execute_with_empty_query(self):
        jasper = Jasper("municipios.jrxml")
        file = jasper.execute(self.data, "html", query=None)

        with open(file) as fp:
            soup = BeautifulSoup(fp)
        table = soup.find('table', class_='jrPage')
        lines = table.find_all('span', attrs={
            'style': 'font-family: Times New Roman; color: #000000; font-size: 14px; line-height: 1.1499023;'})
        self.assertEquals(len(lines), 12)

    def test_name_attribute(self):
        jasper = Jasper("municipios.jrxml")
        self.assertEquals(jasper.name, "municipios")

    def test_raise_error_if_use_a_unsopported_file_type(self):
        with self.assertRaises(UnsupportedFormat):
            jasper = Jasper("municipios.jrxml")
            jasper.execute(self.data, "mp3")