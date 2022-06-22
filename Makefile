.update:
		./scripts/update-vars.sh

list: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.yml" homeservers --list

ping: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.yml" homeservers -m ping

play: .update
	ansible-playbook -i ./ansible/inventory.yml -e "@./ansible/external-vars.yml" ./ansible/playbook.yml