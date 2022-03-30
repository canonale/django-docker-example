DEPLOYMENT_PATH:=deployment
PLAYBOOK_FILE:=build_docker_image.yml
PYTHON_ENV:=python3 -m venv
VENV_FOLDER=.venv

main: install_requirements build

install_requirements:
	@$(PYTHON_ENV) $(DEPLOYMENT_PATH)/$(VENV_FOLDER) && \
	source $(DEPLOYMENT_PATH)/$(VENV_FOLDER)/bin/activate && \
	pip install -r $(DEPLOYMENT_PATH)/requirements.txt

build:
	@cd $(DEPLOYMENT_PATH) && \
	source ./$(VENV_FOLDER)/bin/activate && \
	ansible-playbook -i hosts $(PLAYBOOK_FILE)
