#!/bin/bash

ansible-playbook --limit `hostname` --ask-become-pass update.yml
