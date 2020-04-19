FROM python:3.8.2

RUN apt-get update \
    && apt-get -y install openjdk-11-jdk

RUN pip install jupyterlab

RUN cd /opt \
    && wget https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip \
    && unzip ijava-1.3.0.zip \
    && rm -rf ijava-1.3.0.zip \
    &&  python3 install.py --user

CMD jupyter lab --port 9999 --ip=0.0.0.0 --allow-root
