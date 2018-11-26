glove:
	wget -P ./data/ "http://nlp.stanford.edu/data/glove.6B.zip"
	unzip ./data/glove.6B.zip -d data/glove.6B/
	rm ./data/glove.6B.zip

pubmed:
	wget -P ./data/embeddings/ "http://tttran.net/mirror/PubMed-w2v.txt.gz"
	gunzip ./data/embeddings/PubMed-w2v.txt.gz

run:
	python3 build_data.py
	python3 train.py
	python3 evaluate.py > results/res.txt
