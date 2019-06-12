FROM osrf/ros:kinetic-desktop-full-xenial
WORKDIR /home/ros/python

COPY requirements.txt .

RUN apt-get update && apt-get install -y \
    python-pip \
    git

RUN pip install -r requirements.txt
RUN git clone https://github.com/danielnyga/prac.git && cd prac && python setup.py install













