FROM python:3.7-slim

COPY requirements.txt requirements.txt
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y git xvfb python-opengl ffmpeg cmake
RUN pip  install box2d-py
RUN pip install --upgrade setuptools
RUN pip install ez_setup
RUN pip install notebook
RUN pip install gym[Box_2D] pyvirtualdisplay
RUN pip install matplotlib
RUN pip install tensorflow==2.4.0
RUN pip install keras
