#!/bin/bash

source ansible-vars.secret
envsubst  < ./ansible/external-vars > ./ansible/external-vars.yml
