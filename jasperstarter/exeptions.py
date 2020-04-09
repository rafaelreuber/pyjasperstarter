

class JasperStarterNotFound(Exception):
    """The jasperstarter executable cannot be found"""
    pass


class JrxmlInvalidError(Exception):
    """The report definition file (jrxml) is invalid"""


class UnsupportedFormat(Exception):
    pass


class JRRuntimeError(Exception):
    """Error on execution"""
