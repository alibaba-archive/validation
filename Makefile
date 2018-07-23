all: test coverhtml

test:
	go test

coverhtml:
	@./tools/coverage.sh html
	@go tool cover -func=coverage/coverage.all | tail -n 1

