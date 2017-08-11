#!/bin/bash

ansible-playbook --limit $HOSTNAME update.yml
