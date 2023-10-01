TAG := royratcliffe/mavproxy

bash:
	docker run -it --rm -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix --entrypoint bash $(TAG)
