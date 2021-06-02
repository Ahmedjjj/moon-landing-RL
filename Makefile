image:
	docker build -t ann:latest .

test:
	docker run --runtime=nvidia --rm ann:latest nvidia-smi

notebook:
	docker run --runtime=nvidia --rm --name ann -p 8888:8888 -v $(shell pwd)/work:/jupyter -w /jupyter ann:latest \
	jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.token=''

