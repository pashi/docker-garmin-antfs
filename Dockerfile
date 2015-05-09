FROM python:2.7
MAINTAINER Pasi Lammi <pasi.lammi@iki.fi>
ENV PYTHONUNBUFFERED 1


RUN apt-get update
RUN apt-get -y install python git libusb-1.0-0
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/walac/pyusb.git
RUN git clone https://github.com/Tigge/openant.git
RUN git clone https://github.com/Tigge/antfs-cli.git

RUN cd pyusb && python setup.py install && cd ..
RUN cd openant && python setup.py install && cd ..
RUN cd antfs-cli && python setup.py install && cd ..

ENTRYPOINT ["/bin/bash"]
