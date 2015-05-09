# docker-garmin-antfs
Garmin antfs on docker

Build docker
------------

docker build -t garmin-antfs .


Run docker
----------

docker run -i --rm --privileged -v /dev/bus/usb:/dev/bus/usb -t garmin-antfs
