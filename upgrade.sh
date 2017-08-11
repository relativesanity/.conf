#!/bin/bash

ansible-playbook --limit $HOSTNAME upgrade.yml
