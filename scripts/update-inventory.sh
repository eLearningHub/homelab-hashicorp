#!/bin/bash

source ansible-vars.secret
envsubst  < ./ansible/inventory.yml > ./ansible/inventory
