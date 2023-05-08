build:
	go build
run:
	./awesome-api > ./awesome-api.log 2>&1 &
stop:
	pgrep awesome-api | xargs kill
clean:
	rm awesome.api.log
test:
	curl http://localhost:9999/health && curl http://localhost:9999