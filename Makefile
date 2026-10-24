install:
	mise install
	mise exec -- hk install --mise

run-playbook:
	ansible-playbook -i inventory.ini playbook.yaml

lint:
	ansible-lint playbook.yaml
	rumdl check .
	typos
	jactionlint

.PHONY: install run-playbook lint
