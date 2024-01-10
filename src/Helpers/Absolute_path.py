import os
import platform


def get_absolute_path(path):
    if platform.system() == 'Linux':
        new_path = path.replace("\\", "/")
        absolute_path = os.path.abspath(new_path)
    elif platform.system() == 'Windows':
        absolute_path = os.path.abspath(path)
    return absolute_path
