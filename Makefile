.update:
		./scripts/update-vars.sh

list: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" homeservers --list

ping: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" homeservers -m ping

play: .update
	ansible-playbook -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" ./ansible/playbook.secret

install:
	ansible-galaxy install -r ./ansible/requirements.yml