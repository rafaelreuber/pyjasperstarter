
import re
import os
import json
import logging
import datetime
import subprocess
from shutil import which
from tempfile import TemporaryDirectory

import xmltodict

from .exeptions import JasperStarterNotFound, \
    JrxmlNotFound, UnsupportedFormat

logger = logging.getLogger(__file__)


if not which('jasperstarter'):
    raise JasperStarterNotFound("Cannot found jasperstarter executable")


FORMATS = ['pdf', 'rtf', 'xls', 'xlsMeta', 'xlsx', 'docx',
           'odt', 'ods', 'pptx', 'csv', 'csvMeta', 'html',
           'xhtml', 'xml', 'jrprint']


class Jrxml:
    """
    JasperReport definition file
    """

    def __init__(self, jrxml):
        """
        :param jrxml: jrxml file.
        """
        if not os.path.exists(jrxml):
            raise JrxmlNotFound()
        self.xml = jrxml
        with open(jrxml) as f:
            self.json = xmltodict.parse(f.read())['jasperReport']

    def compile(self):
        cp = subprocess.run(["jasperstarter", "cp", self.xml])
        if cp.returncode != 0:
            raise Exception("Error when try to compile " + self.xml)

    @property
    def parameters(self):
        f = open(self.xml, 'r')
        f_content = f.read()
        f.close()
        xmlstring = re.sub(' xmlns="[^"]+"', '', f_content, count=1)

        param_dic = {}
        tree = ET.fromstring(xmlstring)
        for item in tree.findall(
                'parameter'):
            if item.get('name'):
                param_dic.update({item.get('name'): [item.get('class')]})
            if list(item):
                param_dic[item.get('name')].append(list(item)[0].text)
            else:
                param_dic[item.get('name')].append('')
        return param_dic


class Jasper:

    def __init__(self, xml):
        self.jrxml = Jrxml(xml)
        self.jasper_file = xml.replace("jrxml", "jasper")
        self.name = os.path.splitext(self.jasper_file)[0]

        self.resource_dir = os.path.dirname(os.path.abspath(self.jasper_file))

    def compile(self):
        self.jrxml.compile()

    def execute(self, data, format='pdf', output=None, query=None):
        self.compile()
        if format not in FORMATS:
            raise UnsupportedFormat()

        if not query:
            query = ""

        with TemporaryDirectory() as dirname:
            tmp_data = os.path.join(dirname, "data.json")
            with open(tmp_data, "w") as f:
                json.dump(data, f, default=myconverter)

            file_name = self.name + "." + format
            if not output:
                output = os.path.abspath(os.path.curdir)
            file = os.path.join(output, file_name)

            if os.path.exists(file):
                os.remove(file)

            cmd = ['jasperstarter', 'pr', self.jasper_file, '-t', 'json',
                   '--data-file', f.name, '--json-query', query, '-f', format,
                   '-o', output, '-r', self.resource_dir]
            logging.debug(" ".join(cmd))
            cp = subprocess.run(cmd)
            if cp.returncode != 0:
                raise Exception("Error when try to process the report")
            return file


def myconverter(o):
    if isinstance(o, datetime.datetime):
        return o.__str__()