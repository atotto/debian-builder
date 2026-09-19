
# one-time local setup: docker buildx create --use

build:
	docker buildx build -f Dockerfile.base --platform linux/amd64 -t atotto/debian-builder:base-amd64 --load .
	docker buildx build -f Dockerfile.base --platform linux/arm64 -t atotto/debian-builder:base-arm64 --load .
	docker buildx build -f Dockerfile --platform linux/amd64 -t atotto/debian-builder:amd64 --load .
	docker buildx build -f Dockerfile --platform linux/arm64 -t atotto/debian-builder:arm64 --load .

deploy:
	docker buildx build -f Dockerfile.base --platform linux/amd64,linux/arm64 -t atotto/debian-builder:base --push .
	docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64 -t atotto/debian-builder:latest --push .
