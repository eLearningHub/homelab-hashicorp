.update:
		./scripts/update-inventory.sh

list: .update
	ansible -i ./ansible/inventory homeservers --list

ping: .update
	ansible -i ./ansible/inventory homeservers -m ping

play: .update
	ansible-playbook -i ./ansible/inventory ./ansible/playbook.yaml