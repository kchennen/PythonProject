| | |
| --- | --- |
| Test Status | [![Tests Status](https://github.com/kchennen/PythonProject/workflows/tests/badge.svg)](https://github.com/kchennen/PythonProject/actions) [![pipeline status](https://git.unistra.fr/kchennen/PythonProject/badges/master/pipeline.svg)](https://git.unistra.fr/kchennen/PythonProject/-/commits/master) [![Build Status](https://travis-ci.com/kchennen/PythonProject.svg?branch=master)](https://travis-ci.com/kchennen/PythonProject) |
| Coverage | [![Coverage Status](https://coveralls.io/repos/github/kchennen/PythonProject/badge.svg?branch=master)](https://coveralls.io/github/kchennen/PythonProject?branch=master) [![coverage report](https://git.unistra.fr/kchennen/PythonProject/badges/master/coverage.svg)](https://git.unistra.fr/kchennen/PythonProject/-/commits/master) [![codecov.io](https://codecov.io/github/kchennen/PythonProject/coverage.svg?branch=master)](https://codecov.io/github/kchennen/PythonProject) |
| License | [![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fkchennen%2FPythonProject.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fkchennen%2FPythonProject?ref=badge_shield) [![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/kchennen/PythonProject/blob/master/LICENSE) |
| Version info | [![GitHub release](https://img.shields.io/github/release/kchennen/PythonProject.svg)](https://GitHub.com/kchennen/PythonProject/releases/) [![PyPI version shields.io](https://img.shields.io/pypi/v/PythonProject_KC.svg)](https://pypi.python.org/pypi/PythonProject_KC/) [![PyPI status](https://img.shields.io/pypi/status/PythonProject_KC.svg)](https://pypi.python.org/pypi/PythonProject_KC/) |
| Compatibility | ![Python compatibility](https://img.shields.io/pypi/pyversions/PythonProject_KC.svg?label=Python%20Versions) |
| Maintenance | [![Maintenance](https://img.shields.io/badge/Maintained%3F-Yes-Green.svg)](https://GitHub.com/kchennen/PythonProject/graphs/commit-activity) |
| Zenodo | [![DOI](https://zenodo.org/badge/300061651.svg)](https://zenodo.org/badge/latestdoi/300061651) |

# PythonProject

Python project template

See full documentation at https://github.com/kchennen/PythonProject/

## Project Organisation

```text
PythonProject
├── .env                       <- Environment variables go here, can be read by `python-dotenv` package
├── .gitignore                 <- Files and directories to be ignored by Git.
│    
├── AUTHORS                    <- List of authors and contributors to this project.
├── CHANGELOG                  <- List of curated chronological notable changes.
├── LICENSE                    <- Project distribution License.
├── README.md                  <- The top-level README for developers using this project.
├── requirements.txt           <- Lsit of the project external dependencies.
├── MANIFEST.in                <- To include extra non-Python files in the source distribution
├── setup.py                   <- Package and distribution management.
├── Makefile                   <- Generic manager to automate Setup, Compilation, Testing and Deployment tasks.
│
├── mkdocs.yml                 <- MkDocs configuration file.
├── docs                       <- Project documentation in Markdown with MkDocs.
│
├── .github                    <- Defined workflows for Github Actions
│   └── workflows              
├── .gitlab-ci.yml             <- Defined workflows for Github Actions
├── .travis.yml                <- Defined workflows for Github Actions
│
├── bin 
│   ├── activate_venv.sh       <- Load Python dev virtual environment
│   ├── watchdog_autotest.sh   <- Watchdog script that automatically launch tests on file changes
│   └── pythonproject          <- Project runner script
│    
├── data
│   ├── 0_external             <- Data from third party sources.
│   ├── 1_raw                  <- The original, immutable data dump.
│   ├── 2_interim              <- Intermediate data that has been transformed.
│   └── 3_processed            <- The final, canonical data sets for usage.
│
├── pythonproject              <- Source code of interest for this project.
│   ├── __init__.py            <- Makes a Python module.
│   ├── __main__.py            <- Starting point to run the project in CLI.
│   ├── settings.py            <- Script that loads environment variables defined in `.env`.
│   └── my_module.py           <- Project module
│
├── tests                      <- A directory containing test code and resources to test none regression behaviour
│   └── test_module.py         <- Data from third party sources.
├── tox.ini                    <- Describes the test environments you want your project to run in
│
├── reports                    <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures                <- Generated graphics and figures to be used in reporting
│
├── notebooks                  <- Jupyter Notebook
│   └── 00_dashboard.ipynb     
│
├── docker                     <- TODO
│
└── third_parties              <- TODO
```

## Quickstart

### Install
- **Dev install**

        python setup.py develop

- Run project's installed script

        > pythonproject
        Hello, World!

## TODO
- [ ] Write README
- [ ] Quickstart doc (how to quickly install and use your project)

## License
⚖️🔓 [MIT license](LICENSE)