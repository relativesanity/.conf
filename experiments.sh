#!/bin/bash

ansible-playbook --limit `hostname` experiments.yml
