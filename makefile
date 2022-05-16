TAG_AWS := digitalronin/aws-cli
TAG_TF := digitalronin/aws-tf

.built: Dockerfile Dockerfile.terraform
	docker build -t $(TAG_AWS) .
	docker build -t $(TAG_TF) -f Dockerfile.terraform .
	touch .built

build: .built
