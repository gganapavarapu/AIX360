#base images
FROM ubuntu:18.04
FROM python:3.10

#work dir
WORKDIR /src

#clone repo
RUN git clone https://github.com/Trusted-AI/AIX360.git

RUN cd AIX360 && python -m pip install .

#run tutorial inside container
RUN pip install jupyterlab
