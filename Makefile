.PHONY: run build docker-build docker-run

run:
	go run main.go

build:
	go build -o main .

docker-build:
	docker build -t crypto-tracker .

docker-run:
	docker run -p 8080:8080 --env-file .env crypto-tracker
