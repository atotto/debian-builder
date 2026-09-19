# debian-builder

golang and debian package build container

https://cloud.docker.com/repository/docker/atotto/debian-builder

- go-bin-deb packagecloud
- Go staticcheck
- git curl wget unzip shfmt
- build-essential

| docker tag                    | description               |
|--------------------------------|----------------------------|
| atotto/debian-builder:latest   | compiler (amd64 / arm64)  |