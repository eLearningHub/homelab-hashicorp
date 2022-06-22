list:
	./scripts/update-inventory.sh
	ansible -i ./ansible/inventory homeservers --list

ping:
	./scripts/update-inventory.sh
	ansible -i ./ansible/inventory homeservers -m ping
