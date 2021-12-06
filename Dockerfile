FROM alpine:3.15
MAINTAINER Pasi Lammi <pasi.lammi@iki.fi>
ENV PYTHONUNBUFFERED 1

RUN apk add --update git py3-usb py3-pip py3-setuptools eudev
RUN mkdir -p /app /etc/udev/rules.d /root/.config/antfs-cli/logs
WORKDIR /app
RUN git clone https://github.com/walac/pyusb.git
RUN git clone https://github.com/Tigge/openant.git
RUN git clone https://github.com/Tigge/antfs-cli.git

#RUN cd pyusb && python3 setup.py install && cd ..
RUN cd openant && python3 setup.py install && cd ..
RUN cd antfs-cli && python3 setup.py install && cd ..
RUN mkdir -p /root/.config/
RUN ln -s /app/data /root/.config/antfs-cli

ENTRYPOINT ["/bin/sh"]
