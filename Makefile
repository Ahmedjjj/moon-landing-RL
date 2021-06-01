image:
	@docker build -t ann:latest .

notebook:
	@docker run -p 0.0.0.0:8888:8888 -v $(shell pwd)/work:/app -w /app ann:latest jupyter notebook \
	--no-browser --allow-root --ip 0.0.0.0
