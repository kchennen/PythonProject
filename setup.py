import os
from setuptools import setup


def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()


def requirements():
    return [f for f in read('requirements.txt').splitlines() if not f.startswith('#')]


setup(
    name='PythonProject',                                       # name of the package
    version='0.1.0',                                            # version of this release
    author='kchennen',                                          # package author’s name
    author_email='kchennen@unistra.fr',                         # email address of the package author
    url='https://github.com/kchennen/PythonProject',            # home page for the package
    description='Python project template',                      # short, summary description of the package
    license='MIT',                                              # license for the package
    download_url='https://github.com/kchennen/PythonProject',   # location where the release version of this package may be downloaded
    install_requires=requirements(),                            # install external packages as dependencies
    packages=['pythonproject'],
    scripts=['bin/pythonproject']
)
