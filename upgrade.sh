#!/bin/sh

ansible-playbook --limit `hostname` upgrade.yml
