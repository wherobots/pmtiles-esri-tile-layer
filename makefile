docker-setup:
	@echo "Setting up docker container for tileserver-gl"
	@echo "Make sure you are in the root directory of the project"
	@echo "Current directory: $(shell pwd)"
	@read -p "Enter 'yes' or 'no': " USER_RESPONSE; \
	USER_RESPONSE=$$(echo $$USER_RESPONSE | tr '[:upper:]' '[:lower:]'); \
	if [ "$$USER_RESPONSE" = "yes" -o "$$USER_RESPONSE" = "y" ]; then \
		docker pull maptiler/tileserver-gl; \
		docker run --rm -it -v $(shell pwd)/src:/data -p 8080:8080 maptiler/tileserver-gl:latest; \
	elif [ "$$USER_RESPONSE" = "no" -o "$$USER_RESPONSE" = "n" ]; then \
		echo "Please go to the project folder called ADD NAME"; \
	else \
		echo "Invalid input. Please enter 'yes' or 'no'."; \
		exit 1; \
	fi

clean-up:
	@echo "Cleaning up docker container"
