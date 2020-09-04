FROM tensorflow/tensorflow:1.8.0-gpu-py3
RUN apt-get update -y
RUN apt-get install -y python3.5-dev python3-pip python3-tk vim git libgtk2.0-dev
RUN apt-get install -y python3-pyqt5 python3-pyqt5.qtopengl
RUN apt-get install -y python3-opengl
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade -r requirements.txt