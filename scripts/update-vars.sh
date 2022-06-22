#!/bin/bash

source ansible-vars.secret
envsubst  < ./ansible/external-vars.yml > ./ansible/external-vars.secret
envsubst  < ./ansible/playbook.yml > ./ansible/playbook.secret
