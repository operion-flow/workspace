.PHONY: setup
setup: ./operion ./interfaces ./operion-docs
	@echo "Setup completed."

./operion:
	@echo "Clonning the operion repository..."
	@git clone git@github.com:dukex/operion.git operion

./interfaces:
	@echo "Clonning the interfaces repository..."
	@git clone git@github.com:dukex/interfaces.git interfaces

./operion-docs:
	@echo "Clonning the operion-docs repository..."
	@git clone git@github.com:dukex/operion-docs.git operion-docs

