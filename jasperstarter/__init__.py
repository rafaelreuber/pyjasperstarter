
import os
import json
import logging
import datetime
import subprocess
from subprocess import PIPE
from functools import lru_cache
import time
from shutil import which
from tempfile import TemporaryDirectory
from xml.etree import ElementTree as ET

from .exeptions import JasperStarterNotFound, \
    JrxmlNotFound, UnsupportedFormat

from .util import get_error
from .exeptions import JRRuntimeError

logger = logging.getLogger('jasperstarter')


if not which('jasperstarter'):
    raise JasperStarterNotFound("Cannot found jasperstarter executable")


FORMATS = ['pdf', 'rtf', 'xls', 'xlsMeta', 'xlsx', 'docx',
           'odt', 'ods', 'pptx', 'csv', 'csvMeta', 'html',
           'xhtml', 'xml', 'jrprint']


@lru_cache(maxsize=32)
def compile_jrxml(xml, modtime):
    logger.debug("Compiling " + xml)
    start = time.perf_counter()

    cp = subprocess.run(["jasperstarter", "cp", xml])
    if cp.returncode != 0:
        raise Exception("Error when try to compile " + xml)

    end = time.perf_counter()
    logger.debug("Compilation time: {:3.2f}s".format(end - start))


class Jrxml:
    """
    JasperReport definition file
    """
    namespace = {"jspr": "http://jasperreports.sourceforge.net/jasperreports"}

    def __init__(self, jrxml):
        """
        :param jrxml: jrxml file.
        """
        if not os.path.exists(jrxml):
            raise JrxmlNotFound()
        self.xml = jrxml
        with open(jrxml, 'r', newline='\n') as f:
            self.xml_data = f.read()

    def compile(self):
        modtime = os.path.getmtime(self.xml)
        compile_jrxml(self.xml, modtime)

    @lru_cache()
    def _compile(self, modtime):
        logger.debug("Compiling " + self.xml)
        start = time.perf_counter()

        cp = subprocess.run(["jasperstarter", "cp", self.xml])
        if cp.returncode != 0:
            raise Exception("Error when try to compile " + self.xml)

        end = time.perf_counter()
        logger.debug("Compilation time: {:3.2f}s".format(end - start))

    @property
    def params(self):
        xml = ET.fromstring(self.xml_data)
        parameters = xml.findall('jspr:parameter', self.namespace)
        parameters = [x.attrib for x in parameters]
        return parameters

    @property
    def query(self):
        xml = ET.fromstring(self.xml_data)
        xml.find('jspr:queryString', self.namespace)


class Jasper:

    def __init__(self, xml, locale='en_US'):
        self.jrxml = Jrxml(xml)
        self.jasper_file = xml.replace("jrxml", "jasper")
        self.name = os.path.splitext(os.path.basename(self.jasper_file))[0]
        self.locale = locale

        self.resource_dir = os.path.dirname(os.path.abspath(self.jasper_file))

    def compile(self):
        self.jrxml.compile()

    @property
    def params(self):
        return self.jrxml.params

    def execute(self, data, format='pdf', params=None, output=None, query=None, compile=False):
        start = time.perf_counter()
        if compile:
            self.compile()
        if format not in FORMATS:
            raise UnsupportedFormat()

        if not query:
            query = ""

        with TemporaryDirectory(prefix='jasperstarter_') as dirname:
            tmp_data = os.path.join(dirname, "data.json")
            with open(tmp_data, "w") as f:
                json.dump(data, f, default=myconverter)

            file_name = self.name + "." + format
            file = os.path.join(dirname, file_name)

            cmd = ['jasperstarter', '--locale', self.locale, 'pr', self.jasper_file,
                   '-t', 'json', '--data-file', f.name, '--json-query', query,
                   '-f', format, '-o', dirname, '-r', self.resource_dir]

            if params:
                _params = self._parameters_cmd(params)
                cmd = cmd + ['-P'] + _params

            if logger.level == logging.DEBUG:
                logger.debug("Processing: " + " ".join(cmd))
            else:
                logger.info("Processing :" + self.name)

            cp = subprocess.run(cmd, stderr=PIPE, stdout=PIPE)

            end = time.perf_counter()
            logger.debug("Processing  time: {:3.2f}s".format(end - start))

            if cp.returncode != 0:
                err = get_error(cp.stderr)
                raise JRRuntimeError(err)

            with open(file, 'rb') as fb:
                fbytes = fb.read()
            return fbytes

    def _parameters_cmd(self, params):
        _params = []
        for k, v in params.items():
            _params.append(k+"="+str(v))
        return _params


def get_jasper_starter_version():
    cp = subprocess.run(['jasperstarter', '--version'], stderr=PIPE, stdout=PIPE)
    version = cp.stdout.decode().replace('\n', '')
    return version


def myconverter(o):
    if isinstance(o, datetime.datetime):
        return o.__str__()
