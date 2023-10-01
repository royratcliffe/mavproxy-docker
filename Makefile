TAG := royratcliffe/mavproxy-py

build:
	docker build --pull --rm -f "Dockerfile" -t $(TAG) "."

push:
	docker push $(TAG)

bash:
	docker run -it --rm -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix --entrypoint bash $(TAG)
