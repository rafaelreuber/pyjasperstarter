
import re

param_patter = re.compile(r"\$P{\w+}", re.IGNORECASE)


class SQL:
    """Transform a Jasperreports SQL query on a DBAPI query"""

    def __init__(self, text):
        self.text = text
        self.param_map = self._get_param_map()

    def _get_param_map(self):
        params = set(param_patter.findall(self.text))
        rpl_pchar = lambda x: x.replace("$P{", "").replace("}", "")
        param_map = {x: ":" + rpl_pchar(x) for x in params}
        return param_map

    def to_dbapi(self):
        _query = self.text
        for k,v in self.param_map.items():
            _query = _query.replace(k, v)
        return _query