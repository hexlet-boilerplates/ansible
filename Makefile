run-playbook:
	ansible-playbook -i inventory.ini playbook.yaml

lint:
	ansible-lint playbook.yml
