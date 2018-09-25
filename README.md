This is a work in progress for CSC 585 (Algorithms in NLP) at the University of Arizona. This work is a fork from the original [EBM-NLP](https://github.com/bepnye/EBM-NLP) work. Necessary modification were done to support testing in Docker.

### Tested Environment
    Docker (CPU only):
        OS  : Ubuntu 16.04
        LIB : Python 3.5
    
    Host:
        OS  : Linux Mint 19 (based on Ubuntu 18.04)
        CPU : Intel Xeon E3-1265Lv2
        RAM : 16GB

### Steps
All the files must be located as is to successfully work with the Dockerfile. Git clone and cd into the EBM-NLP directory.

##### For minimal build (only evaluation on pretrained data, default)
    >> sudo docker build -t rahman-cs585-hw3 .
    >> sudo docker run --name rahman rahman-cs585-hw3

##### For complete build from scratch (build, train, evaluate)
Comment the last line in the Dockerfile:

    CMD ["./rahman-eval.sh"]

Run the docker using

    >> sudo docker run --name rahman -it rahman-cs585-hw3

This will allow you to get inside the container bash, then run

    ./run-full.sh

##### Note: the original authors' README file is unmodified and named as README-org.txt
