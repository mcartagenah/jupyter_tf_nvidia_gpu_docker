FROM nvidia/cuda:11.2.0-cudnn8-devel-ubuntu18.04
USER root
RUN apt update && apt install -y software-properties-common
RUN apt install -y build-essential wget zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y python3-pip python3.7
RUN python3.7 -m pip install --upgrade pip
RUN python3.7 -m pip install markupsafe==2.0.1 jupyter tensorflow
CMD jupyter notebook --allow-root --ip 0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''
