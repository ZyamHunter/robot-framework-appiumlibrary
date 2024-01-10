import urllib3

def disable_request_warning():
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

