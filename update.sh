#!/bin/sh

ansible-playbook --limit `hostname` update.yml
