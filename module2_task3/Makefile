build: ## compile the main in executable
	make lint && go build 
run: ## launch the server
	./awesome-api > ./awesome-api.log 2>&1 &
stop: ## stop the server
	pgrep awesome-api | xargs kill
clean: ## clean the directory
	-make stop
	-rm awesome-api.log && rm awesome-api
	-rm coverage-units.out && coverage-integrations.out
test: ## test the server
	go test -tags=integration -coverprofile=coverage-integrations.out && go test -v -short -coverprofile=coverage-units.out
lint: ## detect all codage error
	golangci-lint run
unit-tests: ## check unit-tests
	go test -v -short -coverprofile=coverage-units.out
integration-tests:
	go test -tags=integration -coverprofile=coverage-integrations.out
help: ## show an help
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' 