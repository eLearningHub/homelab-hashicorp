.update:
		./scripts/update-vars.sh external-vars
		./scripts/update-vars.sh playbook
		./scripts/update-vars.sh playbook.jenkins

list: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" homeservers --list

ping: .update
	ansible -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" homeservers -m ping

install:
	ansible-galaxy install -r ./ansible/requirements.yml

play: .update
	ansible-playbook -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" ./ansible/playbook.secret

jenkins: .update
	ansible-playbook -i ./ansible/inventory.yml -e "@./ansible/external-vars.secret" ./ansible/playbook.jenkins.secret
