build: ## compile the main in executable
	make lint && go build
run: ## launch the server
	./awesome-api > ./awesome-api.log 2>&1 &
stop: ## stop the server
	pgrep awesome-api | xargs kill
clean: ## clean the directory
	make stop && rm awesome-api.log && rm awesome-api
test: ## test the server
	curl http://localhost:9999/health && curl http://localhost:9999
lint: ## lint for detect all codage error
	golangci-lint run
help: ## show an help
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'