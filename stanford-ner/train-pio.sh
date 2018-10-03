#!/bin/sh
echo "<======================= Training Started =========================>"

java -mx8g -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -prop classifiers/patient.prop
java -mx8g -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -prop classifiers/intervention.prop
java -mx8g -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -prop classifiers/outcome.prop

echo "<======================= Training Complete ========================>"

#java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/patient.crf.ser.gz -testFile PIO-data/patient/p-dev.txt
#java -cp stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/patient.crf.ser.gz -testFile PIO-data/patient/p-test.txt

# java -mx600m -cp "*;lib/*" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/english.all.3class.distsim.crf.ser.gz -outputFormat tabbedEntities -textFile sample.txt > sample.tsv
