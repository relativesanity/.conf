#!/bin/sh

ansible-playbook --limit `hostname` experiments.yml
