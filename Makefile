build:
	docker build . -t  docker_network
	docker run -it -p 8888:8888 docker_network