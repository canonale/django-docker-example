DEPLOYMENT_PATH:=deployment
PLAYBOOK_FILE:=build_docker_image.yml

main: build

build:
	@cd $(DEPLOYMENT_PATH) && \
	ansible-playbook -i hosts $(PLAYBOOK_FILE)
