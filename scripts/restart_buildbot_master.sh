#!/bin/bash

if ansible-playbook -i buildbot.ini maintenance/get_current_builds.yml; then
    ansible-playbook -i buildbot.ini maintenance/restart_master.yml
else
    echo "Builds are running"
fi
