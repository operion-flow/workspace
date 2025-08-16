.PHONY: setup
setup: ./operion ./interfaces ./operion.dev
	@echo "Setup completed."

./operion:
	@echo "Clonning the operion repository..."
	@git clone git@github.com:dukex/operion.git operion

./interfaces:
	@echo "Clonning the interfaces repository..."
	@git clone git@github.com:dukex/interfaces.git interfaces

./operion.dev:
	@echo "Clonning the operion.dev repository..."
	@git clone git@github.com:dukex/operion.dev.git operion.dev

# ---

sync: ./operion ./interfaces ./operion.dev
	@echo "Syncing the repositories..."
	@git pull origin main --rebase
	@cd ./operion && git pull origin main --rebase
	@cd ./interfaces && git pull origin main --rebase
	@cd ./operion.dev && git pull origin main --rebase

.PHONY: clean
clean:
	@echo "Cleaning up..."
	@rm -rf ./bin/operion-api

.PHONY: build
build: ./bin/operion-api

./bin/operion-api:
	@echo "Building the operion API..."
	@go build -o ./bin/operion-api ./operion/cmd/operion-api