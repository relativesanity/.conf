#!/bin/bash

ansible-playbook --limit `hostname` update.yml
