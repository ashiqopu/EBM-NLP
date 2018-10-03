#!/bin/sh
echo "Md Ashiqur Rahman : CSC 585 : HW3 : PICO"
echo ""
tar -xvzf ebm_nlp_1_00.tar.gz
echo "<============ Running test on PIO Spans ============>"
cd acl_scripts/lstm-crf/
make glove
make pubmed
make run
echo ""
echo "<================== Task Complete ==================>"
echo ""
cd ..
cd ..


