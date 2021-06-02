FROM tensorflow/tensorflow:2.4.0-gpu

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y git xvfb ffmpeg cmake xvfb

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y swig python3.7 python3-pip python-opengl

RUN pip install --upgrade pip

RUN pip --no-cache-dir install --upgrade box2d-py \
                                         setuptools \
                                         ez_setup \
                                         notebook \
                                         gym[Box_2D] pyvirtualdisplay \
                                         matplotlib \
                                         keras
