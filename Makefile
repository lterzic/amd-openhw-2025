# Makefile

VENV_DIR := venv
VENV_PYTHON := $(VENV_DIR)/bin/python
VENV_PIP := $(VENV_DIR)/bin/pip
VENV_JUPYTER := $(VENV_DIR)/bin/jupyter
REQUIREMENTS := requirements.txt

# Run to set up the environment
# After this run "source venv/bin/activate" to
# use the virtual environment python installation
setup: venv install

run:
	$(VENV_JUPYTER) lab --notebook-dir=jupyter

venv:
	@if [ ! -d "$(VENV_DIR)" ]; then \
		echo "Creating a virtual environment..."; \
		python3 -m venv $(VENV_DIR); \
		echo "Virtual environment created successfully!"; \
	else \
		echo "Virtual environment already exists."; \
	fi

install: venv
	@echo "Installing dependencies..."
	@$(VENV_PIP) install -r $(REQUIREMENTS)
	@echo "Dependencies installed successfully!"

clean:
	@if [ -d "$(VENV_DIR)" ]; then \
		echo "Removing virtual environment..."; \
		rm -rf $(VENV_DIR); \
	fi

.PHONY: setup run venv install clean