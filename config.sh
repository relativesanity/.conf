#!/bin/sh

ansible-playbook --limit `hostname` -Kb config.yml
