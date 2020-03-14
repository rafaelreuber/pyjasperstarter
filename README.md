Create amazing reports using JasperReports. 

[JasperStarter](http://jasperstarter.cenote.de) is an opensource command line launcher for JasperReports.


### Usage

```python
from jasperstarter import Jasper
from jasperstarter.query import DbapiAdapter

jasper = Jasper('Emproyees.jrxml')
adapter = DbapiAdapter(jasper)
data = adapter.run(self.conn)

file = employees.execute(data=data, format='pdf', compile=True)

```