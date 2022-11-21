This repository assumes you have **WSL2** and **Docker** installed, and that your computer has a working Nvidia GPU with all its drivers.

To build and run in Docker, from terminal inside WSL2:

1. ```docker build . -t nvidia-tensorflow```
2. ```docker run -d --gpus all -p 8888:8888 nvidia-tensorflow```
3. Open <http://localhost:8888> to use jupyter notebook
