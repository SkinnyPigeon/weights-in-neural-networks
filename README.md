# Using Weights to Determine Feature Importance in Neural Networks

To deploy the repo, [Docker](https://docs.docker.com/get-docker/) is required.

Clone the repo and change into the directory:
```
git clone git@github.com:SkinnyPigeon/weights-in-neural-networks.git && cd weights-in-neural-networks
```

If the [make](https://www.gnu.org/software/make/manual/make.html#Introduction) command is available you can start the container with:

```
make build
```

Otherwise you can run the following:

```
docker build . -t  docker_network
docker run -it -p 8888:8888 docker_network
```

Navigate to http://localhost:8888 to be taken to the notebooks directory