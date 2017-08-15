#!/bin/bash

ansible-playbook --limit `hostname` upgrade.yml
