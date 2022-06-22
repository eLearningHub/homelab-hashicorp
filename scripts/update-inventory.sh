#!/bin/bash

source ansible-vars.secret
envsubst  < ./ansible/inventory.yaml > ./ansible/inventory
