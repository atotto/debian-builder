# debian-builder

golang and debian package build container

https://cloud.docker.com/repository/docker/atotto/debian-builder

- go-bin-deb packagecloud
- Go staticcheck
- git curl wget unzip shfmt
- build-essential

| docker tag | description |
| --- | --- |
| atotto/debian-builder:latest | compiler |
| atotto/debian-builder:armhf | bundle armhf cross compiler |
| atotto/debian-builder:arm64 | bundle arm64 cross compiler |