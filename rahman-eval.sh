#!/bin/sh
echo "Md Ashiqur Rahman : CSC 585 : HW3 : PICO"
echo ""
echo "<=============== Downloading model files ==============>"
echo ""
cd acl_scripts/lstm-crf/data/

wget -q -O embeddings.200d.trimmed.npz -L https://arizona.box.com/shared/static/dmy7dipy1clmcy3a5egn9enxqaivr8af.npz

cd /ebm-nlp/acl_scripts/lstm-crf/results/test/

wget -q -O events.out.tfevents.1537848087.72ed3dc03907 -L https://arizona.box.com/shared/static/oyidd47ecr5gq994t3smam28kjhth5i4.72ed3dc03907

cd /ebm-nlp/stanford-ner/classifiers/

wget -q -O patient.crf.ser.gz -L https://arizona.box.com/shared/static/bzygcxw3d6uy9uch5bnt75tpk6rfu5iv.gz

wget -q -O intervention.crf.ser.gz -L https://arizona.box.com/shared/static/06504g5iw6bffeeuo7jv6bnuev6761gu.gz

wget -q -O outcome.crf.ser.gz -L https://arizona.box.com/shared/static/cbzygcti9i8wzvc7a1jsbeyg99hqstop.gz

cd /ebm-nlp/acl_scripts/lstm-crf/

echo "<============= Running test set evaluation ============>"
echo ""
echo "<===================== PIO spans ======================>"

python3 evaluate.py

echo ""

cd /ebm-nlp/stanford-ner/

echo "<============ Patient hierarchical labels =============>"

java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/patient.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/patient/p-test.txt > p-test.tsv

echo ""

echo "<========= Intervention hierarchical labels ===========>"

java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/intervention.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/intervention/i-test.txt > i-test.tsv

echo ""

echo "<============ Outcome hierarchical labels =============>"

java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/outcome.crf.ser.gz -outputFormat tabbedEntities -testFile PIO-data/outcome/o-test.txt > o-test.tsv

echo ""
cd ..
echo "<==================== Task Complete ===================>"

