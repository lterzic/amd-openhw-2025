## Setup
Clone recursively to include the Sionna submodule:
```sh
git clone https://github.com/lterzic/amd-openhw-2025.git --recursive
```

Sionna requires Python 3.8 - 3.12. This is tested with **Python 3.10.12** and **GNU Make 4.3**.

To setup automatically, assuming `make` is installed, run:
```sh
make setup
```

## Run
To launch the jupyter notebook from the virtual environment run:
```sh
make run
```