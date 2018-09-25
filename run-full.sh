#!/bin/sh
echo "Md Ashiqur Rahman : CSC 585 : HW3 : PICO"
tar -xvzf ebm_nlp_1_00.tar.gz
cd acl_scripts/lstm-crf/
make glove
cd data
mkdir embeddings
cd embeddings
wget http://tttran.net/mirror/PubMed-w2v.txt.gz
gunzip PubMed-w2v.txt.gz
cd ..
cd ..
make run
echo ""
echo "<================== Task Complete ==================>"

