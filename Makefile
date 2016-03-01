USER=ryancox
REPO=gatling-k8s-client
VERSION=1.0.2
TAG=$(USER)/$(REPO):$(VERSION)

clean:
	-docker rmi $(TAG)

build:
	docker build -t $(TAG) .

push: 
	docker login
	docker push $(TAG)

all: clean build push
