#!/bin/sh
echo Your container args are: "$1"
echo "Md Ashiqur Rahman : CSC 585 : HW3 : PICO"
echo ""
echo "<=============== Downloading model files ==============>"
echo ""
if [ $1 = "iter1" ]; then
  echo "Running on iteration 1" 
  # download PIO dataset
  cd /ebm-nlp/acl_scripts/lstm-crf/data/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/icck0vcn3wkz3g49nm36wkernzk3a9ev.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  cd /ebm-nlp/acl_scripts/lstm-crf/results/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/6u9sikzama1ud9nu3pu3kojoo5glibwl.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  # download P dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-p/data/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/wj8g8jrgjo32obyjuu6fp96uvefolveg.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-p/results/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/hw9li0wi5jx51ug5wmyy6p750hp5ic7c.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .
  # download I dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-i/data/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/gcvnysvwvhcelam0p9nzallrxxxp5uoi.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-i/results/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/tptx97yy13wv66f2v52bnoqb20a48kxs.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .
  # download O dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-o/data/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/t0hcrl419fhhkey0gzvcwbnby58ncvj6.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-o/results/
  wget --progress=bar:force:noscroll -O 1.0-0.5-0.0.zip -L https://arizona.box.com/shared/static/nl83cs43jsvhssmpyvtis4fcw3tj4n4y.zip -q --show-progress
  unzip 1.0-0.5-0.0.zip
  rm 1.0-0.5-0.0.zip
  mv 1.0-0.5-0.0/* .

  echo "<===================== PIO spans ======================>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf/
  python3 evaluate.py

  echo "<============ Patient hierarchical labels =============>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf-p/
  python3 evaluate.py
  
  echo "<========= Intervention hierarchical labels ===========>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf-i/
  python3 evaluate.py
  
  echo "<============ Outcome hierarchical labels =============>"

  cd /ebm-nlp/acl_scripts/lstm-crf-o/
  python3 evaluate.py
  

elif [ $1 = "iter2" ]; then
  echo "Running on iteration 2"
  cd /ebm-nlp/acl_scripts/lstm-crf/data/
  # download PIO dataset
  wget --progress=bar:force:noscroll -O 1.0-1.0-0.25.zip -L https://arizona.box.com/shared/static/foahj6l1fhg5k18yi0u54vszx9j86v2e.zip -q --show-progress
  unzip 1.0-1.0-0.25.zip
  rm 1.0-1.0-0.25.zip
  mv 1.0-1.0-0.25/* .
  cd /ebm-nlp/acl_scripts/lstm-crf/results/
  wget --progress=bar:force:noscroll -O 1.0-1.0-0.25.zip -L https://arizona.box.com/shared/static/gkwd7tt2zkqxwwqmzkcnggkm0wr4tzvx.zip -q --show-progress
  unzip 1.0-1.0-0.25.zip
  rm 1.0-1.0-0.25.zip
  mv 1.0-1.0-0.25/* .
  # download P dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-p/data/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/znbvk21494eis8rlc0k1137j9wkfy3xo.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-p/results/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/08xn3aarmdv3k9f7z16x62engai1n001.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  # download I dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-i/data/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/joau1uzurag3hj6ies23gq54jsxxcc8d.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-i/results/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/tzb6pbmxmid20noql4re0fol5ik1rbk4.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  # download O dataset
  cd /ebm-nlp/acl_scripts/lstm-crf-o/data/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/yxajhk6j3c7g1rugasw6kx0v0sz3ukep.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .
  cd /ebm-nlp/acl_scripts/lstm-crf-o/results/
  wget --progress=bar:force:noscroll -O 1-0.75-0.5.zip -L https://arizona.box.com/shared/static/lkf307ifqji0jzph21jsfxpocdsw6mxi.zip -q --show-progress
  unzip 1-0.75-0.5.zip
  rm 1-0.75-0.5.zip
  mv 1-0.75-0.5/* .

  echo "<===================== PIO spans ======================>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf/
  python3 evaluate.py

  echo "<============ Patient hierarchical labels =============>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf-p/
  python3 evaluate.py

  echo "<========= Intervention hierarchical labels ===========>"
  
  cd /ebm-nlp/acl_scripts/lstm-crf-i/
  python3 evaluate.py

  echo "<============ Outcome hierarchical labels =============>"

  cd /ebm-nlp/acl_scripts/lstm-crf-o/
  python3 evaluate.py

else
  echo "Unknown parameter"
fi

echo "<========================= Cleanup ========================>"

rm -R /ebm-nlp/acl_scripts/lstm-crf/data/*
rm -R /ebm-nlp/acl_scripts/lstm-crf/results/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-p/data/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-p/results/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-i/data/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-i/results/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-o/data/*
rm -R /ebm-nlp/acl_scripts/lstm-crf-o/results/*

echo "<==================== Task Complete ===================>"

# cd acl_scripts/lstm-crf/data/

# wget --progress=bar:force:noscroll -O embeddings.200d.trimmed.npz -L https://arizona.box.com/shared/static/dmy7dipy1clmcy3a5egn9enxqaivr8af.npz -q --show-progress

# cd /ebm-nlp/acl_scripts/lstm-crf/results/test/

# wget --progress=bar:force:noscroll -O events.out.tfevents.1537848087.72ed3dc03907 -L https://arizona.box.com/shared/static/oyidd47ecr5gq994t3smam28kjhth5i4.72ed3dc03907 -q --show-progress

# cd /ebm-nlp/stanford-ner/classifiers/

# wget --progress=bar:force:noscroll -O patient.crf.ser.gz -L https://arizona.box.com/shared/static/bzygcxw3d6uy9uch5bnt75tpk6rfu5iv.gz -q --show-progress

# wget --progress=bar:force:noscroll -O intervention.crf.ser.gz -L https://arizona.box.com/shared/static/06504g5iw6bffeeuo7jv6bnuev6761gu.gz -q --show-progress

# wget --progress=bar:force:noscroll -O outcome.crf.ser.gz -L https://arizona.box.com/shared/static/cbzygcti9i8wzvc7a1jsbeyg99hqstop.gz -q --show-progress

# cd /ebm-nlp/acl_scripts/lstm-crf/

# echo "<============= Running test set evaluation ============>"
# echo ""
# echo "<===================== PIO spans ======================>"

# python3 evaluate.py

# echo ""

# cd /ebm-nlp/stanford-ner/

# echo "<============ Patient hierarchical labels =============>"

# #java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/patient.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/patient/p-dev.txt > p-dev.tsv

# java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/patient.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/patient/p-test.txt > p-test.tsv

# echo ""

# echo "<========= Intervention hierarchical labels ===========>"

# #java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/intervention.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/intervention/i-dev.txt > i-dev.tsv

# java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/intervention.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/intervention/i-test.txt > i-test.tsv

# echo ""

# echo "<============ Outcome hierarchical labels =============>"

# #java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/outcome.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/outcome/o-dev.txt > o-dev.tsv

# java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/outcome.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/outcome/o-test.txt > o-test.tsv

# echo ""
# cd ..
# echo "<==================== Task Complete ===================>"

