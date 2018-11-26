This is a work in progress for CSC 585 (Algorithms in NLP) at the University of Arizona. This work is a fork from the original [EBM-NLP](https://github.com/bepnye/EBM-NLP) work (for training PIO spans using biLSTM-CRF). The ```hierarchical-labels``` under each P, I and O spans were trained using the [Stanford CRF](https://nlp.stanford.edu/software/CRF-NER.shtml) software.

##### Note: To swith to the dev results: 
  * update the `evaluate.py` from each labeling tasks
  * uncomment line 79 and 80 and comment line 82 and 83
  * remove the existing docker container+image, rebuild and run with parameter.

##### Note: will only produce iteration_1 and iteration_2 results (not the baseline).

Necessary modification were done to support testing in Docker. All trained model files are fetched from Box storage account and will be downloaded when the docker is run (via the ```rahman-eval.sh``` script).

### Tested Environment
    Docker (CPU only):
        OS  : Ubuntu 16.04
        LIB : Python 3.5
    
    Host:
        OS  : Linux Mint 19 (based on Ubuntu 18.04)
        CPU : AMD Ryzen 2700X
        RAM : 16GB (full for PIO spans and 12GB for hierarchical label training)

### Steps
All the files must be located as is to successfully work with the Dockerfile. Git clone and cd into the EBM-NLP directory.

##### For minimal build (only evaluation on pretrained data, default)
    >> sudo docker build -t rahman-cs585-hw4 .

  To run the container with a parameter to run either iteration 1 or 2:
  sudo docker run --name rahman rahman-cs585-hw4 <iteration_num>
    >> sudo docker run rahman-cs585-hw4 iter1
    >> sudo docker run rahman-cs585-hw4 iter2

##### Note: The system hardware has changed and thus the baseline results are also updated in the report paper.

##### Note: the original authors' README file is unmodified and named as README-org.txt

##### P.S.: There's a simple docker cleanup script provided which will DELETE all docker containers and images from the system. DO NOT run the script unless absolutely sure.
