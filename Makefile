DOCEKR_IMAGE_NAME := fast-api-tutorial
DOCEKR_CONTAINER_NAME := fast-api-tutorial-container
HOST_PORT := 8000
CONTSINER_PORT := 8000

.PHONY: init
init: build run

.PHONY: build
build:
	docker build --no-cache -t $(DOCEKR_IMAGE_NAME):latest .

.PHONY: up-d
up-d:
	docker run -d --rm -p $(HOST_PORT):$(CONTSINER_PORT) --name $(DOCEKR_CONTAINER_NAME) -v $$(pwd):/app $(DOCEKR_IMAGE_NAME) bash -c "source .venv/bin/activate && uvicorn main:app --reload --host 0.0.0.0"

.PHONY: down
down:
	docker stop $(DOCEKR_CONTAINER_NAME)

.PHONY: exec
exec:
	docker exec -it -v $$(pwd):/app -p $(HOST_PORT):$(CONTSINER_PORT) $(DOCEKR_IMAGE_NAME) bash

.PHONY: run
run:
	docker run --rm -it -v $$(pwd):/app -p $(HOST_PORT):$(CONTSINER_PORT) $(DOCEKR_IMAGE_NAME) bash -c "source .venv/bin/activate && uvicorn main:app --reload --host 0.0.0.0"
