# debian-builder

app builder on docker

https://cloud.docker.com/repository/docker/atotto/debian-builder

- go-bin-deb packagecloud
- golang
- git curl wget unzip
- build-essential

| docker tag | description |
| --- | --- |
| atotto/debian-builder:latest | compiler |
| atotto/debian-builder:armhf | bundle armhf cross compiler |
| atotto/debian-builder:arm64 | bundle arm64 cross compiler |