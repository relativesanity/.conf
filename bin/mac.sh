#!/bin/sh

ansible-playbook --limit `hostname` mac.yml
