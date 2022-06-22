list:
	ansible -i ./ansible/inventory.yml homeservers --list

ping:
	ansible -i ./ansible/inventory.yml homeservers -m ping