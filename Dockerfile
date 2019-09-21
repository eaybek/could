FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/could/could/ /root/packages/could/
WORKDIR /root/packages/could
RUN pip3 install /root/packages/could

CMD ["python3","test/could.py"]


