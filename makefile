TAG := digitalronin/aws-cli

.built: Dockerfile
	docker build -t $(TAG) .
	touch .built

build: .built
