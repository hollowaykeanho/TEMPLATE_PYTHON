# Python Template Repository
[![Holloway's Template](resources/logos/logo-1200x630.svg)](https://github.com/hollowaykeanho/Template)

> [!IMPORTANT]
> **DEPRECATION NOTICE**:
>
> 1. This template had superseded by AutomataCI:
>    https://github.com/ChewKeanHo/AutomataCI/. Please use that instead.

A template for all (Holloway) Chew, Kean Ho's new Python-based project
repository. It setups and includes all necessary and easy-to-modify artworks,
`README.md`, `LICENSE`, and `.gitignore` files that are crucial for a git
repository.

> WHAT TO UPDATE AFTER CLONING:
>
> 1. Start with `README.md` especially dealing with title + anything below.
> 2. Update the `resources/logos/principle-canvas` logo files and re-generate
>    all the output logos OR delete them entirely.
> 3. Add a `LICENSE.md` file with the appropriate license(s) and MAKE SURE
>    you update the last section of this `README.md` file.
> 4. Add a `CODE_OF_CONDUCT.md` file with the appropriate legal clauses(s).
> 4. Delete this blockquote once completed.




## Why It Matters
State the business reasons for this project.

1. **Working things out efficiently with pinpoint accuracy** - template
   standardizes all marketing and presentable elements so just focus on the
   project development.
2. **Steadily for continuous improvement** - version controlled and improve
   iteratively.
3. **Simple and scalable** - just one git and some changes; you get a decent
   repo ready to deploy at scale.




## Directory Structure
Due to this template repository being a Python development one, there is a
required directory structure set in motion for build reproducibility motive.
Below are the descriptions of structure:

```
.
├── bin					# your build output directory
│   └── app_linux-amd64			# your build output binary
├── build.cmd				# the build semi-auto CI script
├── README.md				# Repository README.md
├── resources				# Additional repo artifacts
│   └── ...
├── SECURITY.md				# security policy
├── setup.cmd				# the pip setup semi-auto CI script
├── src					# main source codes location
│   ├── app_linux-amd64.spec		# py-installer build spec file
│   ├── libs				# python libraries location
│   │   └── Sample			# sample Python module directory
│   │       ├── Entity.py		# sample module
│   │       ├── __init__.py		# sample python module seeker file
│   │       ├── Location.py		# sample module
│   │       ├── __pycache__		# cython artifact directory
│   │       │   └── *.pyc		# cython artifact
│   │       ├── Strings.py		# sample module
│   │       └── Strings_test.py		# sample unit-test module
│   ├── main.py				# main entry code
│   ├── NAME				# name of the app
│   └── requirements.txt		# pip depedency file
├── pkg					# your packaged output directory
│   └── app_linux-amd64.deb		# your packaged output file
├── releases				# your released directory
│   └── ...				# all your released system files for upstream
├── start.cmd				# the venv start semi-auto CI script
├── stop.cmd				# the venv stop semi-auto CI script
├── test.cmd				# the test semi-auto CI script
├── tmp					# pyinstaller temporary workspace
│   └── ...
└── venv				# python virtual environment directory
    ├── bin
    │   ├── activate
    │   ├── activate.csh
    │   ├── activate.fish
    │   ├── Activate.ps1
    │   ├── pip
    │   ├── pip3
    │   ├── pip3.11
    │   ├── pyi-archive_viewer
    │   ├── pyi-bindepend
    │   ├── pyi-grab_version
    │   ├── pyi-makespec
    │   ├── pyinstaller
    │   ├── pyi-set_version
    │   ├── python -> python3
    │   ├── python3 -> /usr/bin/python3
    │   └── python3.11 -> python3
    ...
```




## How To Start
Due to modern days working on various programming languages, it's easy to forget
how to start when we're back to a Python repository. This is why the
[Polygot Script](https://github.com/hollowaykeanho/PolygotScript) became very
important here especially when Python is workable across different OSes.


### (1) Start the Python Virtual Environment
To start from a fresh terminal, simply source/run the `start.cmd` Polygot Script
at any OSes. Once done, you're ready to start/continue your development efforts.

> **NOTE**
>
> Sourcing the `start.cmd` when in virtual environment does nothing.

Example:

```
# Linux & MacOS
$ . start.cmd

# Windows
$ ./start.cmd
```


### (2) Update PIP Dependencies
To make sure all the depedencies are available and up-to-date, simply source/run
the `setup.cmd` Polygot script at all OSes. Once done, your Python project is
ready for business. Example:

```
# Linux & MacOS
(venv) $ . setup.cmd

# Windows
(venv) $ ./setup.cmd
```


### (3) Development
There are no special custom tools deployed for developments. You're free to
use the Python paradigm to develop your product once you're in the Python
virtual environment. The only thing to remember not to do in order not to break
the CI automation are:

1. Always develop inside the `src/` directory.
2. Keep the `main.py` filename and its location as it is. You can modify its
   content like any Python script. This is the product start point and all CI
   are hard-coded to seek this file for performance purposes.
3. Avoid using `bin/`, `pkg/`, and `releases/`. These are CI automation
   corresponding directories.
4. Always remember to modularlize your Python codes. The `src/libs/` is an
   example but feel free to modify that directory matching your need.


### (4) Run The Test CI Cycle
To start CI test cycle at any given moment of time, be it manually or automated,
simply source/run the `test.cmd` Polygot Script at any OSes. Once done, you'll
see the unit test is running with results.

> **NOTE**
>
> This repo practices what Go developers are doing: naming convention ending
> with `_test.py` and is placed next to the associated Python module. A good
> example:
>
> ```
> Sample
> ├── __init__.py
> ├── ...
> ├── Strings.py                # the actual module
> └── Strings_test.py           # its associated unit-test module
> ```
>

Example:

```
# Linux & MacOS
(venv) $ . test.cmd

# Windows
(venv) $ ./test.cmd
```


### (5) Run The Build CI Cycle
To start CI build cycle at any given moment of time, be it manually or automated,
simply source/run the `build.cmd` Polygot Script at any OSes. Once done, you'll
see your single binary output file located inside `bin/` directory.
Example:

```
# Linux & MacOS
(venv) $ . build.cmd

# Windows
(venv) $ ./build.cmd
```


### (6) Stop Python Virtual Environment
To stop the virtual environment, simply `deactivate` like how all Python venv
does. In case you forgotten, you can also simply source/run the `stop.cmd`
Polygot Script at any OSes. Once done, you will be back at the state you had
first sourced/ran `start.cmd`.
Example:

```
# Any OSes
(venv) $ deactivate

#############
#    OR    ##
#############

# Linux & MacOS
(venv) $ . stop.cmd

# Windows
(venv) $ ./stop.cmd
```




## License
This project is licensed under [??? License](LICENSE.md).
