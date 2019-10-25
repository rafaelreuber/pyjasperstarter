

class JasperStarterNotFound(Exception):
    """The jasperstarter executable cannot be found"""
    pass


class JrxmlNotFound(Exception):
    """The report definition file (jrxml) cannot be found"""


class UnsupportedFormat(Exception):
    pass


class JRRuntimeError(Exception):
    """Error on execution"""