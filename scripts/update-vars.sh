#!/bin/bash

source ansible-vars.secret
envsubst  < ./ansible/$1.yml > ./ansible/$1.secret
