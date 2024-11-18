# Quick Installer
python script to setup a terp network node.


*modified fork of Osmosis-labs installer*


## Building Docker image 
```sh
docker-compose build
```
```sh
# to override the target platform
TARGETPLATFORM=linux/arm64 docker-compose build
```
## Running Docker image 
```sh
docker run -p 80:80 docker.io/terpnetwork/terp-installer:latest
```

## Deploying Via Akash
An example sdl file to deploy to akash is located [here](./akash.sdl).