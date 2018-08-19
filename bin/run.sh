#!/bin/sh

ansible-playbook --limit `hostname` $1.yml
