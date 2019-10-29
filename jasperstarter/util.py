
import re


def get_error(stderr):
    if isinstance(stderr, bytes):
        stderr = stderr.decode()
    msg = re.search('error:.*(\n.*)*', stderr).group()
    return msg
