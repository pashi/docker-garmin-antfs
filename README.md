# docker-garmin-antfs
Garmin antfs on docker

Build docker
------------

docker build -t local/garmin-antfs .


Run docker
----------

docker run --privileged --rm -v /opt/garmin/fitfiles:/app/data -v /dev/bus/usb:/dev/bus/usb -i -t local/garmin-antfs
