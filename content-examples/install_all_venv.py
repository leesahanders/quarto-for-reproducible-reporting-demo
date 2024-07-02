# https://docs.python.org/3/library/venv.html
# https://stackoverflow.com/questions/57921255/how-to-create-python-virtual-environment-within-a-python-script 
# https://stackoverflow.com/questions/69319991/how-to-install-a-python-package-into-an-virtual-environment-without-activating-i

# This script will walk through each sub project and install packages to the active library and also to the project library

from venv import create
from os.path import join, expanduser, abspath
from subprocess import run
import glob

requirements_path = glob.glob('requirements.txt')

for i in requirements_path:
    print(i)

#/some/path/to/venv/bin/python -m pip install -U package_name

#dir = join(expanduser("~"), "my-venv")
#create(dir, with_pip=True)

# where requirements.txt is in same dir as this script
#run(["bin/pip", "install", "-r", abspath("requirements.txt")], cwd=dir)



