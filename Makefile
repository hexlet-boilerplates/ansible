run-playbook:
	ansible-playbook -i inventory.ini playbook.yaml

lint:
	ansible-lint playbook.yaml
	rumdl check .
	typos
	jactionlint

.PHONY: run-playbook lint
