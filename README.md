`TODO: CI buttons showing the state of the build (pypi, build, release, codecov, travis)`

[![Build Status](https://travis-ci.com/kchennen/PythonProject.svg?branch=master)](https://travis-ci.com/kchennen/PythonProject)
[![Coverage Status](https://coveralls.io/repos/github/kchennen/PythonProject/badge.svg?branch=master)](https://coveralls.io/github/kchennen/PythonProject?branch=master)

# PythonProject

Python project template

See full documentation at https://github.com/kchennen/PythonProject/

## Project Organisation

    PythonProject
    ├── .gitignore               <- Files and directories to be ignored by Git.
    ├── AUTHORS                  <- List of authors and contributors to this project.
    ├── CHANGELOG                <- List of curated chronological notable changes.
    ├── LICENSE                  <- Project distribution License.
    ├── README.md                <- The top-level README for developers using this project.
    ├── requirements.txt         <- Lsit of the project external dependencies.
    ├── setup.py                 <- Package and distribution management.
    │
    ├── mkdocs.yml               <- MkDocs configuration file.
    ├── docs                     <- Project documentation in Markdown with MkDocs.
    │
    ├── data
    │   ├── 0_external           <- Data from third party sources.
    │   ├── 1_raw                <- The original, immutable data dump.
    │   ├── 2_interim            <- Intermediate data that has been transformed.
    │   └── 3_processed          <- The final, canonical data sets for usage.
    │
    ├── pythonproject            <- Source code of interest for this project.
    │   ├── __init__.py          <- Makes a Python module.
    │   ├── __main__.py          <- Starting point to run the project in CLI.
    │   └── my_module.py         <- Project module
    │
    ├── tests                    <- A directory containing test code and resources to test none regression behaviour
    │   └── test_module.py       <- Data from third party sources.
    ├── tox.ini                  <- Describes the test environments you want your project to run in
    │
    ├── notebooks                <- 
    │   └── 00_dashboard.ipynb   <- 
    │
    ├── reports                  <- 
    │   └── figures              <- 
    │
    ├── docker                   <- 
    │    
    ├── MANIFEST                   <- 
    │
    ├── github actions           <- 
    │
    └── third_parties            <-

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
- [ ] TravisCI buttons
- [ ] Deploy on GitHub
- [ ] host doc site

## License
⚖️🔓 [MIT license](LICENSE)