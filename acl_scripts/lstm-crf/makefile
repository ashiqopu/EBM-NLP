glove:
	wget -P ./data/ "http://nlp.stanford.edu/data/glove.6B.zip"
	unzip ./data/glove.6B.zip -d data/glove.6B/
	rm ./data/glove.6B.zip

run:
	python3 build_data.py
	python3 train.py
	python3 evaluate.py
