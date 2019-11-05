import re

param_patter = re.compile(r"\$P{\w+}", re.IGNORECASE)


class SQL:
    """Transform a Jasperreports SQL query on a DBAPI query"""

    def __init__(self, text):
        self.text = text
        self.param_map = self._get_param_map()

    def _get_param_map(self):
        """Returns a dictionary were keys are jasper paramenter and
           the value are the paramenter on the dbapi format"""
        params = set(param_patter.findall(self.text))
        rpl_param = lambda x: x.replace("$P{", "").replace("}", "").lower()
        param_map = {x: ":" + rpl_param(x) for x in params}
        return param_map

    def to_dbapi(self):
        _query = self.text
        for k, v in self.param_map.items():
            _query = _query.replace(k, v)
        return _query


class DbapiAdapter:

    def __init__(self, jasper):
        self.jasper = jasper
        self.sql = SQL(self.jasper.jrxml.query).to_dbapi()

    def run(self, conn):
        cursor = conn.cursor()
        try:
            result = cursor.execute(self.sql)
            data = self._dictfetchall(result)
        finally:
            cursor.close()
        return data

    @staticmethod
    def _dictfetchall(cursor):
        """
        Return all rows from a cursor as a dict
        """
        columns = [col[0].lower() for col in cursor.description]
        data = [
            dict(zip(columns, row))
            for row in cursor.fetchall()]
        return data
