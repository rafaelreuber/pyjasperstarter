
import re

ptrn = re.compile('error:.*(\n.*)*')


def get_error(stderr):
    if isinstance(stderr, bytes):
        stderr = stderr.decode()
    if re.match(ptrn, stderr):
        msg = re.search('error:.*(\n.*)*', stderr).group()
        return msg
    else:
        return stderr
