define green
	@tput setaf 2; echo $1; tput sgr0;
endef

PYTHON_PATH=$(shell which python)

.PHONY: run
run:
	ansible-playbook \
		-e ansible_python_interpreter=/usr/local/bin/python2 \
		-c local \
		-i localhost, \
		playbooks/cfn.yaml

	$(call green,"[Upped]")


.PHONY: clean
clean:
	$(call green,"[Clean]")

