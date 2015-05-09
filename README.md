# docker-garmin-antfs
Garmin antfs on docker

Build docker
------------

docker build -t pashi/garmin-antfs .


Run docker
----------

docker run --rm -v /opt/garmin/fitfiles:/app/data -v /dev/bus/usb:/dev/bus/usb -i -t pashi/garmin-antfs
