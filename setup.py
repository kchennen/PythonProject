from setuptools import setup

setup(
    name='PythonProject',                                       # name of the package
    version='0.1.0',                                            # version of this release
    author='kchennen',                                          # package author’s name
    author_email='kchennen@unistra.fr',                         # email address of the package author
    url='https://github.com/kchennen/PythonProject',            # home page for the package
    description='Python project template',                      # short, summary description of the package
    license='MIT',                                              # license for the package
    download_url='https://github.com/kchennen/PythonProject',   # location where the release version of this package may be downloaded
    packages=['pythonproject'],
    scripts=['bin/pythonproject']
)
