FROM ubuntu:jammy

# https://ardupilot.org/mavproxy/docs/getting_started/download_and_installation.html
RUN apt update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame \
    && pip3 install PyYAML mavproxy --user

EXPOSE 14550
ENV PATH="$PATH:/root/.local/bin"
CMD [ "mavproxy.py" ]
