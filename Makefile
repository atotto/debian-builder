
build:
	docker build -f Dockerfile.base -t atotto/debian-builder:base .
	docker build -f Dockerfile -t atotto/debian-builder:latest .
	docker build -f Dockerfile.armhf -t atotto/debian-builder:armhf .
	docker build -f Dockerfile.arm64 -t atotto/debian-builder:arm64 .

deploy:
	docker push atotto/debian-builder:latest
	docker push atotto/debian-builder:armhf
	docker push atotto/debian-builder:arm64
